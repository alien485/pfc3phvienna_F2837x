/* Bounded fast mode-7 path. Reference PC_run is unchanged.
 * Same piecewise diode model and cost ordering; angle plans are shared across
 * all eight candidates. No full PC_Output/PC_Interval memset is performed.
 * Static plans belong exclusively to CPU1 ISR1: this TU is NOT reentrant.
 * See vienna_pcmfpc_fast.h for detailed-output availability contracts.
 */
#include "vienna_pcmfpc_fast.h"
#include <math.h>
#include <float.h>

#ifdef __TI_COMPILER_VERSION__
#pragma CODE_SECTION(PC_run_fast, "pcmfpc_code")
#pragma CODE_SECTION(PC_fast_predict_interval, "pcmfpc_code")
#pragma CODE_SECTION(pf_config_valid, "pcmfpc_code")
#pragma CODE_SECTION(pf_plan, "pcmfpc_code")
#pragma CODE_SECTION(pf_output_init, "pcmfpc_code")
#pragma CODE_SECTION(pf_rank, "pcmfpc_code")
#pragma CODE_SECTION(pf_seed, "pcmfpc_code")
#pragma CODE_SECTION(pf_root, "pcmfpc_code")
#pragma CODE_SECTION(pf_interval, "pcmfpc_code")
#pragma FUNC_ALWAYS_INLINE(pf_control_interval)
#pragma FUNC_ALWAYS_INLINE(pf_candidate_batch)
#pragma DATA_SECTION(pf_control_context, ".bss:pf_control_context")
#pragma CODE_SECTION(pf_control_interval_plain, "pcmfpc_code")
#pragma CODE_SECTION(pf_control_interval_profiled, "pcmfpc_code")
#pragma CODE_SECTION(PC_fast_profile_configure, "pcmfpc_code")
#pragma CODE_SECTION(PC_fast_profile_arm, "pcmfpc_code")
#pragma CODE_SECTION(pf_profile_clear, "pcmfpc_code")
#pragma CODE_SECTION(pf_profile_read, "pcmfpc_code")
#pragma CODE_SECTION(pf_profile_begin, "pcmfpc_code")
#pragma CODE_SECTION(pf_profile_stage, "pcmfpc_code")
#pragma CODE_SECTION(pf_profile_finish, "pcmfpc_code")
#pragma FUNC_ALWAYS_INLINE(pf_profile_elapsed)
#if !PC_FAST_LEGACY_CONTROL_ROOT
#pragma CODE_SECTION(pf_lambda_plan, "pcmfpc_code")
#pragma CODE_SECTION(pf_lambda_root, "pcmfpc_code")
#pragma CODE_SECTION(pf_lambda_single_plan, "pcmfpc_code")
#pragma CODE_SECTION(pf_lambda_dense_root, "pcmfpc_code")
#pragma FUNC_ALWAYS_INLINE(pf_lambda_projection)
#pragma FUNC_ALWAYS_INLINE(pf_dense_sum)
#endif
/* TI does not automatically inline these static O2 helpers when debug
 * information is enabled. Removing their per-substep ABI work is essential;
 * the actual listing must still confirm the resulting register allocation. */
#pragma FUNC_ALWAYS_INLINE(pf_finite)
#pragma FUNC_ALWAYS_INLINE(pf_rotation)
#pragma FUNC_ALWAYS_INLINE(pf_abc_to_dq)
#pragma FUNC_ALWAYS_INLINE(pf_dq_to_abc)
#pragma FUNC_ALWAYS_INLINE(pf_projection)
#pragma FUNC_ALWAYS_INLINE(pf_less)
#pragma FUNC_ALWAYS_INLINE(pf_intersection)
#pragma FUNC_ALWAYS_INLINE(pf_angle_cost)
#pragma FUNC_ALWAYS_INLINE(pf_hw)
/* Always-inlined helper fallback bodies deliberately have no RAM section.
 * A blanket shared CODE_SECTION retains unused copies and can exhaust RAM.
 * Verify that the target listing has no LCR to these helper fallback bodies. */
#endif

#ifdef PC_REAL_TYPE
#define PC_SIN(x) ((PC_Real)sin((double)(x)))
#define PC_COS(x) ((PC_Real)cos((double)(x)))
#define PC_SQRT(x) ((PC_Real)sqrt((double)(x)))
#define PC_ATAN2(y,x) ((PC_Real)atan2((double)(y),(double)(x)))
#define PC_EPS ((PC_Real)DBL_EPSILON)
#else
#define PC_SIN(x) sinf(x)
#define PC_COS(x) cosf(x)
#define PC_SQRT(x) sqrtf(x)
#define PC_ATAN2(y,x) atan2f((y),(x))
#define PC_EPS FLT_EPSILON
#endif
#define PC_PI ((PC_Real)3.14159265358979323846)
#define PC_C ((PC_Real)0.57735026918962576451)
#define PC_SQRT3_HALF ((PC_Real)0.86602540378443864676)
#define PC_ABS(x) (((x)<(PC_Real)0)?-(x):(x))
#define PC_MAX(a,b) (((a)>(b))?(a):(b))
#define PC_MIN(a,b) (((a)<(b))?(a):(b))

static uint16_t pf_finite(PC_Real x)
{
    /* Bit test remains meaningful with TI relaxed floating-point options.
       Inputs intentionally have a float32 representable finite domain. */
    union { float f; uint32_t u; } v;
    v.f = (float)x;
    return (uint16_t)((v.u & (uint32_t)0x7f800000UL) != (uint32_t)0x7f800000UL);
}

static uint16_t pf_config_valid(const PC_Config *c)
{
    return (uint16_t)(c && pf_finite(c->L_H) && c->L_H>(PC_Real)0 &&
        pf_finite(c->C_half_F) && c->C_half_F>(PC_Real)0 &&
        pf_finite(c->first_duration_s) && c->first_duration_s>(PC_Real)0 &&
        pf_finite(c->candidate_duration_s) && c->candidate_duration_s>(PC_Real)0 &&
        pf_finite(c->R_ohm) && c->R_ohm>=(PC_Real)0 &&
        pf_finite(c->delta_i_A) && c->delta_i_A>=(PC_Real)0 &&
        pf_finite(c->zero_window_rad) && c->zero_window_rad>(PC_Real)0 &&
        c->zero_window_rad<PC_PI/(PC_Real)6 && c->root_method==PC_ROOT_PIECEWISE);
}

typedef struct { PC_Real theta, ct, st; } PF_Rotation;
typedef struct { PC_Real h, c, h_over_C; PF_Rotation node[3]; } PF_Plan;

#if !PC_FAST_LEGACY_CONTROL_ROOT
typedef struct {
    PC_Real cu,cl,tolerance,base[3],point[3];
    uint16_t phase[3],off_active,count,status;
} PF_LambdaPlan;
typedef struct {
    PF_LambdaPlan local;
    const PF_LambdaPlan *plan;
    /* Reserved layout only, not control state: retain C28x data-page
     * placement while the temporary FP values remain local scalars. */
    PC_Real reserved[5];
    uint16_t active,n,k,found;
} PF_LambdaWork;
#endif
typedef struct {
    PC_Real old_abc[3],free_abc[3],on_lo[3],off_lo[3],on_hi[3],off_hi[3];
    PC_Real points[8],tolerance;
    uint16_t phase[8],count;
#if !PC_FAST_LEGACY_CONTROL_ROOT
    PF_LambdaPlan lambda;
#endif
} PF_Seed;
/* Separate workspaces prevent large inlined FP-relative frames. They share
 * the same CPU1-ISR1 ownership as the angle plans and never alias each other. */
typedef struct {
    PC_Real lo,hi,hl,hh,tolerance,work[3],points[8];
    PC_Real a,ha,b,hb,key,root,qscale,x;
    uint16_t k,r,j,count,found;
} PF_RootWork;
typedef struct {
    PC_Real dq[2],np,dc,h,c,old_local[3],free_local[3],next[3],free_dq[2];
    PC_Real mu,width,residual,up,low,neutral;
    const PC_Real *old_abc,*free_abc;
    uint16_t step,r,status,iterations,blocked;
} PF_ControlWork;
typedef struct {
    PC_Real dq[2],edq[2],iref[3],uref[3],udq[2];
    uint16_t oi[8],ou[8];
} PF_SelectWork;
/* Plan storage is static to bound stack use; never shared with another ISR. */
static PF_Plan pf_first_plan,pf_candidate_plan,pf_standalone_plan;
static PF_Rotation pf_input_rotation,pf_reference_rotation;
static PF_Seed pf_candidate_seed;
static PF_RootWork pf_root_work;
#if !PC_FAST_LEGACY_CONTROL_ROOT
static PF_LambdaWork pf_lambda_work;
#endif
static PF_ControlWork pf_control_work;
static PF_SelectWork pf_select_work;
volatile uint16_t PC_fast_output_substeps_available=0U;
volatile uint16_t PC_fast_output_summaries_available=0U;
volatile uint16_t PC_fast_output_integrals_available=0U;
/* Observation only: identifies this kernel, never gates control or start. */
volatile uint16_t PC_fast_kernel_revision=10U;

/* Profiling state follows the established numerical workspaces. A pending
 * request is consumed at entry and never enables a subsequent normal call.
 * The bound clock is read-only; this module does not configure peripherals. */
typedef struct {
    PC_FastProfileClock clock;
    uint32_t period, begin, last, root_begin;
    uint16_t armed, active;
} PF_ProfileWork;
static PF_ProfileWork pf_profile_work;
volatile PC_FastProfile PC_fast_profile;

/* Private call context; N=1 keeps the original pointer read/touch order.
 * N=8 is entered only by PC_run_fast after its common candidate seed exists.
 * No reserved numerical workspace field is reused for this context. */
typedef struct {
    const PC_Real *dq0,*f;
    const PF_Plan *plan;
    const PF_Seed *seed;
    PC_Interval *interval;
    const PC_Input *input;
    PC_Output *result;
    PC_Real up,low;
    uint16_t hw,count;
} PF_ControlContext;
static PF_ControlContext pf_control_context;



static void pf_profile_clear(void)
{
    PC_fast_profile.setup_cycles=0UL;PC_fast_profile.delay_cycles=0UL;
    PC_fast_profile.plan_seed_cycles=0UL;PC_fast_profile.candidates_cycles=0UL;
    PC_fast_profile.select_cycles=0UL;PC_fast_profile.terminal_prepare_cycles=0UL;
    PC_fast_profile.angles_cycles=0UL;PC_fast_profile.output_cycles=0UL;
    PC_fast_profile.total_cycles=0UL;PC_fast_profile.root_cycles=0UL;
    PC_fast_profile.clock_pair_overhead=0UL;
    PC_fast_profile.mode=0U;PC_fast_profile.valid=0U;PC_fast_profile.completed=0U;
    PC_fast_profile.core_status=PC_ERR_INPUT;
    PC_fast_profile.root_calls=0U;PC_fast_profile.angle_calls=0U;
    PC_fast_profile.read_count=0U;PC_fast_profile.clock_fault=0U;
}
void PC_fast_profile_configure(PC_FastProfileClock clock,uint32_t period)
{
    pf_profile_work.clock=clock;pf_profile_work.period=period;
    pf_profile_work.armed=0U;pf_profile_work.active=0U;
    pf_profile_clear();
}
uint16_t PC_fast_profile_arm(uint16_t mode)
{
    pf_profile_work.armed=0U;
    pf_profile_clear();
    if(mode>2U || (mode && (!pf_profile_work.clock || !pf_profile_work.period)))
        return PC_ERR_CONFIG;
    pf_profile_work.armed=mode;
    PC_fast_profile.mode=mode;
    return PC_OK;
}
static uint32_t pf_profile_read(void)
{
    uint32_t stamp=pf_profile_work.clock();
    PC_fast_profile.read_count++;
    if(stamp>=pf_profile_work.period)PC_fast_profile.clock_fault=1U;
    return stamp;
}
static uint32_t pf_profile_elapsed(uint32_t start,uint32_t end)
{
    return start>=end?start-end:start+pf_profile_work.period-end;
}
static void pf_profile_begin(void)
{
    uint32_t first,second;
    pf_profile_work.active=pf_profile_work.armed;
    pf_profile_work.armed=0U;
    first=pf_profile_read();second=pf_profile_read();
    PC_fast_profile.clock_pair_overhead=pf_profile_elapsed(first,second);
    pf_profile_work.begin=pf_profile_read();pf_profile_work.last=pf_profile_work.begin;
}
static void pf_profile_stage(volatile uint32_t *bucket)
{
    uint32_t stamp=pf_profile_read();
    *bucket=pf_profile_elapsed(pf_profile_work.last,stamp);
    pf_profile_work.last=stamp;
}
static void pf_profile_finish(uint16_t status)
{
    uint32_t stamp=pf_profile_read();
    if(status==PC_OK)PC_fast_profile.output_cycles=pf_profile_elapsed(pf_profile_work.last,stamp);
    PC_fast_profile.total_cycles=pf_profile_elapsed(pf_profile_work.begin,stamp);
    PC_fast_profile.core_status=status;PC_fast_profile.completed=1U;
    PC_fast_profile.valid=(uint16_t)(status==PC_OK && !PC_fast_profile.clock_fault);
    pf_profile_work.active=0U;
}
#define PF_PROFILE_STAGE(member) do { \
    if(pf_profile_work.active)pf_profile_stage(&PC_fast_profile.member); \
} while(0)
#define PF_PROFILE_RETURN(value) do { \
    uint16_t pf_return_status=(value); \
    if(pf_profile_work.active)pf_profile_finish(pf_return_status); \
    return pf_return_status; \
} while(0)

static void pf_rotation(PC_Real theta,PF_Rotation *r)
{
    r->theta=theta;r->ct=PC_COS(theta);r->st=PC_SIN(theta);
}
static void pf_plan(const PC_Config *cfg,PC_Real theta,PC_Real omega,
                    PC_Real duration,PF_Plan *p)
{
    uint16_t j;
    p->h=duration/(PC_Real)2;p->c=p->h/cfg->L_H;
    p->h_over_C=p->h/cfg->C_half_F;
    /* Keep the reference theta+(step)*omega*h arithmetic, including its
       operation order, rather than substituting a recurrence or angle sum. */
    for(j=0U;j<3U;j++)
        pf_rotation(theta+(PC_Real)j*omega*p->h,&p->node[j]);
}
static void pf_abc_to_dq(const PC_Real abc[3],const PF_Rotation *r,PC_Real dq[2])
{
    PC_Real a=((PC_Real)2*abc[0]-abc[1]-abc[2])/(PC_Real)3;
    PC_Real b=(abc[1]-abc[2])*PC_C;
    dq[0]=r->ct*a+r->st*b;dq[1]=-r->st*a+r->ct*b;
}
static void pf_dq_to_abc(const PC_Real dq[2],const PF_Rotation *r,PC_Real abc[3])
{
    PC_Real a=r->ct*dq[0]-r->st*dq[1],b=r->st*dq[0]+r->ct*dq[1];
    abc[0]=a;abc[1]=-a/(PC_Real)2+PC_SQRT3_HALF*b;
    abc[2]=-a/(PC_Real)2-PC_SQRT3_HALF*b;
}
#if !PC_FAST_LEGACY_CONTROL_ROOT
/* Prepare OFF-phase affine pieces in current units. Each phase has at most
 * one strict internal event within [-cl,cu]. ON phases are filtered later.
 * The candidate first substep shares this entire plan across eight states.
 */
static void pf_lambda_plan(const PC_Real q[3],PC_Real c,PC_Real up,
    PC_Real low,PF_LambdaPlan *p)
{
    PC_Real scale,span,x,key;
    uint16_t r,k,j,phase;
    p->status=PC_ERR_NUMERIC;p->off_active=0U;p->count=0U;
    p->cu=c*up;p->cl=c*low;span=p->cu+p->cl;
    scale=PC_ABS(q[0])+PC_ABS(q[1])+PC_ABS(q[2])+c*(up+low);
    if(!pf_finite(p->cu) || !pf_finite(p->cl) || !pf_finite(span) ||
       !pf_finite(scale))return;
    p->tolerance=(PC_Real)32*PC_EPS*PC_MAX(scale,(PC_Real)1);
    for(r=0U;r<3U;r++){
        phase=(uint16_t)(1U<<r);
        if(q[r]<(PC_Real)0){
            p->base[r]=q[r]+p->cl;
            x=-p->cl-q[r];
            if(x>-p->cl)p->off_active|=phase;
        }else{
            p->base[r]=q[r]-p->cu;
            x=p->cu-q[r];
            if(x<=-p->cl)p->off_active|=phase;
        }
        if(q[r]!=(PC_Real)0 && x>-p->cl && x<p->cu){
            p->point[p->count]=x;p->phase[p->count]=phase;p->count++;
        }
    }
    for(k=1U;k<p->count;k++){
        key=p->point[k];phase=p->phase[k];j=k;
        while(j>0U && key<p->point[j-1U]){
            p->point[j]=p->point[j-1U];p->phase[j]=p->phase[j-1U];j--;
        }
        p->point[j]=key;p->phase[j]=phase;
    }
    p->status=PC_OK;
}
#endif
static void pf_seed(const PC_Real dq[2],const PC_Real f[2],PC_Real up,PC_Real low,
                    const PF_Plan *plan,PF_Seed *seed)
{
    PC_Real free_dq[2],dc=up+low,np=low-up,c=plan->c;
#if PC_FAST_LEGACY_CONTROL_ROOT
    PC_Real cm,cu,cl,z;
    uint16_t r,k,j;
#endif
    /* The eight candidates share exactly this first-substep old/free state.
       Keep the same operation order as the per-interval implementation. */
    pf_dq_to_abc(dq,&plan->node[0],seed->old_abc);
    free_dq[0]=dq[0]+plan->h*f[0];free_dq[1]=dq[1]+plan->h*f[1];
    pf_dq_to_abc(free_dq,&plan->node[1],seed->free_abc);
    /* Match the interval's first reconstruction, rather than assuming the
       caller's up/low survive subtraction and resummation bit-for-bit. */
    up=(dc-np)/(PC_Real)2;low=(dc+np)/(PC_Real)2;
#if !PC_FAST_LEGACY_CONTROL_ROOT
    pf_lambda_plan(seed->free_abc,c,up,low,&seed->lambda);
#else
    cu=c*up;cl=c*low;
    seed->tolerance=(PC_Real)32*PC_EPS*PC_MAX(PC_ABS(seed->free_abc[0])+
        PC_ABS(seed->free_abc[1])+PC_ABS(seed->free_abc[2])+c*(up+low),(PC_Real)1);
    seed->points[0]=-low;seed->phase[0]=0U;
    seed->points[1]=up;seed->phase[1]=0U;seed->count=2U;
    for(r=0U;r<3U;r++){
        PC_Real x;
        cm=c*(-low);z=seed->free_abc[r]+cm;
        seed->on_lo[r]=z;
        seed->off_lo[r]=PC_MAX(z-cu,(PC_Real)0)+PC_MIN(z+cl,(PC_Real)0);
        cm=c*up;z=seed->free_abc[r]+cm;
        seed->on_hi[r]=z;
        seed->off_hi[r]=PC_MAX(z-cu,(PC_Real)0)+PC_MIN(z+cl,(PC_Real)0);
        /* Each OFF phase has at most one strict internal breakpoint: the
           other lies outside a bracket of exactly up+low volts. */
        if(seed->free_abc[r]>(PC_Real)0)x=up-seed->free_abc[r]/c;
        else if(seed->free_abc[r]<(PC_Real)0)x=-low-seed->free_abc[r]/c;
        else continue;
        if(x>-low && x<up){
            seed->points[seed->count]=x;
            seed->phase[seed->count]=(uint16_t)(1U<<r);seed->count++;
        }
    }
    /* Stable sort of the complete OFF set; filtering ON phases later gives
       the identical stable subsequence as sorting each candidate separately. */
    for(k=1U;k<seed->count;k++){
        PC_Real key=seed->points[k];uint16_t phase=seed->phase[k];j=k;
        while(j>0U && key<seed->points[j-1U]){
            seed->points[j]=seed->points[j-1U];seed->phase[j]=seed->phase[j-1U];j--;
        }
        seed->points[j]=key;seed->phase[j]=phase;
    }
#endif
}
static uint16_t pf_hw(uint16_t zero_based_id)
{
    return (uint16_t)(((zero_based_id & 1U)<<2) |
        (zero_based_id & 2U) | ((zero_based_id & 4U)>>2));
}
static PC_Real pf_projection(const PC_Real q[3],uint16_t hw,
    PC_Real c,PC_Real up,PC_Real low,PC_Real mu,PC_Real next[3])
{
    PC_Real cm=c*mu,cu=c*up,cl=c*low,z,sum=(PC_Real)0;
    /* Fixed phase masks remove variable shifts and loop bookkeeping. Keep
       sum order and arithmetic identical to the scalar reference. */
    z=q[0]+cm;next[0]=(hw&1U)?z:PC_MAX(z-cu,(PC_Real)0)+PC_MIN(z+cl,(PC_Real)0);sum+=next[0];
    z=q[1]+cm;next[1]=(hw&2U)?z:PC_MAX(z-cu,(PC_Real)0)+PC_MIN(z+cl,(PC_Real)0);sum+=next[1];
    z=q[2]+cm;next[2]=(hw&4U)?z:PC_MAX(z-cu,(PC_Real)0)+PC_MIN(z+cl,(PC_Real)0);sum+=next[2];
    return sum;
}

/* H(mu) is continuous piecewise affine. OFF phase breakpoints are
   -Ulow-q/c and Uup-q/c; ON contributes slope c everywhere. There are at most
   six internal breakpoints, hence at most seven affine segments. A flat zero
   segment has nonunique mu but identical projected currents. The piecewise
   solver performs bounded sorting and no iterative root search. It solves
   the SAME ideal diode model; float32 decision ties are separately tested. */
static uint16_t pf_root(const PC_Real q[3],uint16_t hw,PC_Real c,
    PC_Real up,PC_Real low,PC_Real *mu,PC_Real *width,
    uint16_t *iterations,PC_Real next[3],PC_Real *residual,const PF_Seed *seed)
{
    PF_RootWork *w=&pf_root_work;
    w->lo=-low;w->hi=up;
    if(seed){
        w->tolerance=seed->tolerance;
        w->hl=(PC_Real)0;w->hh=(PC_Real)0;
        w->hl+=(hw&1U)?seed->on_lo[0]:seed->off_lo[0];
        w->hl+=(hw&2U)?seed->on_lo[1]:seed->off_lo[1];
        w->hl+=(hw&4U)?seed->on_lo[2]:seed->off_lo[2];
        w->hh+=(hw&1U)?seed->on_hi[0]:seed->off_hi[0];
        w->hh+=(hw&2U)?seed->on_hi[1]:seed->off_hi[1];
        w->hh+=(hw&4U)?seed->on_hi[2]:seed->off_hi[2];
    }else{
        w->qscale=PC_ABS(q[0])+PC_ABS(q[1])+PC_ABS(q[2])+c*(up+low);
        w->tolerance=(PC_Real)32*PC_EPS*PC_MAX(w->qscale,(PC_Real)1);
        w->hl=pf_projection(q,hw,c,up,low,w->lo,w->work);
        w->hh=pf_projection(q,hw,c,up,low,w->hi,w->work);
    }
    if(!pf_finite(w->hl) || !pf_finite(w->hh) || w->hl>w->tolerance || w->hh<-w->tolerance)
        return PC_ERR_ROOT;
    *iterations=0U;
    w->count=0U;w->found=0U;
    if(seed){
        for(w->k=0U;w->k<seed->count;w->k++)
            if(!(seed->phase[w->k]&hw))w->points[w->count++]=seed->points[w->k];
    }else{
        w->points[0]=w->lo;w->points[1]=w->hi;w->count=2U;
        for(w->r=0U;w->r<3U;w->r++) if(!(hw & (uint16_t)(1U<<w->r))) {
            if(q[w->r]>(PC_Real)0)w->x=up-q[w->r]/c;
            else if(q[w->r]<(PC_Real)0)w->x=-low-q[w->r]/c;
            else continue;
            if(w->x>w->lo && w->x<w->hi)w->points[w->count++]=w->x;
        }
        for(w->k=1U;w->k<w->count;w->k++) {
            w->key=w->points[w->k];w->j=w->k;
            while(w->j>0U && w->key<w->points[w->j-1U]) {
                w->points[w->j]=w->points[w->j-1U];w->j--;
            }
            w->points[w->j]=w->key;
        }
    }
    w->a=w->points[0];w->ha=w->hl;
    if(w->ha==(PC_Real)0) {*mu=w->a;*width=(PC_Real)0;w->found=1U;}
    for(w->k=1U;w->k<w->count && !w->found;w->k++) {
        w->b=w->points[w->k];
        w->hb=pf_projection(q,hw,c,up,low,w->b,w->work);
        (*iterations)++;
        if(w->hb==(PC_Real)0) {*mu=w->b;*width=(PC_Real)0;w->found=1U;}
        else if(w->ha<=(PC_Real)0 && w->hb>(PC_Real)0 && w->hb>w->ha) {
            w->root=w->a-w->ha*((w->b-w->a)/(w->hb-w->ha));
            *mu=PC_MAX(w->a,PC_MIN(w->b,w->root));*width=w->b-w->a;w->found=1U;
        }
        w->a=w->b;w->ha=w->hb;
    }
    if(!w->found) {
        /* Only endpoint rounding accepted, exactly as the readable root. */
        if(PC_ABS(w->hl)<=w->tolerance) *mu=w->lo;
        else if(PC_ABS(w->hh)<=w->tolerance) *mu=w->hi;
        else return PC_ERR_ROOT;
        *width=(PC_Real)0;
    }
    *residual=pf_projection(q,hw,c,up,low,*mu,next);
    if(!pf_finite(*residual) || PC_ABS(*residual)>w->tolerance) return PC_ERR_ROOT;
    return PC_OK;
}

#if !PC_FAST_LEGACY_CONTROL_ROOT
static PC_Real pf_lambda_projection(const PC_Real q[3],uint16_t hw,
    PC_Real cu,PC_Real cl,PC_Real lambda,PC_Real next[3])
{
    PC_Real z,sum=(PC_Real)0;
    z=q[0]+lambda;next[0]=(hw&1U)?z:PC_MAX(z-cu,(PC_Real)0)+PC_MIN(z+cl,(PC_Real)0);sum+=next[0];
    z=q[1]+lambda;next[1]=(hw&2U)?z:PC_MAX(z-cu,(PC_Real)0)+PC_MIN(z+cl,(PC_Real)0);sum+=next[1];
    z=q[2]+lambda;next[2]=(hw&4U)?z:PC_MAX(z-cu,(PC_Real)0)+PC_MIN(z+cl,(PC_Real)0);sum+=next[2];
    return sum;
}

/* Exactly the generic root's phase-order sum for a mask with one OFF phase.
 * Off is 0/1 here, not a phase mask. No grouping or zero snap is introduced. */
static PC_Real pf_dense_sum(const PC_Real q[3],uint16_t hw,
    PC_Real off_base,uint16_t off)
{
    PC_Real B=(PC_Real)0;
    if(hw&1U)B+=q[0];else if(off)B+=off_base;
    if(hw&2U)B+=q[1];else if(off)B+=off_base;
    if(hw&4U)B+=q[2];else if(off)B+=off_base;
    return B;
}

/* For three ON phases there is no relevant diode event. Two ON phases
 * leave one OFF phase and at most one strict internal event. Preserve the
 * generic left-to-right closed-segment root selection, with the identical
 * endpoint fallback and final KCL projection. The existing root workspace
 * is reused exclusively; no extra BSS shifts the C28x data-page placement.
 * Only required local-plan fields are written, and later generic NULL calls
 * always rebuild their complete plan before use. */
static uint16_t pf_lambda_dense_root(const PC_Real q[3],uint16_t hw,PC_Real c,
    PC_Real up,PC_Real low,PC_Real next[3],const PF_LambdaPlan *shared)
{
    PF_LambdaWork *w=&pf_lambda_work;
    PC_Real a,b,B,root,residual,off_base,point,off_q,scale,span;
    if(shared)w->plan=shared;
    else{
        w->local.status=PC_ERR_NUMERIC;
        w->local.cu=c*up;w->local.cl=c*low;
        span=w->local.cu+w->local.cl;
        scale=PC_ABS(q[0])+PC_ABS(q[1])+PC_ABS(q[2])+c*(up+low);
        if(!pf_finite(w->local.cu) || !pf_finite(w->local.cl) ||
           !pf_finite(span) || !pf_finite(scale))return PC_ERR_NUMERIC;
        w->local.tolerance=(PC_Real)32*PC_EPS*PC_MAX(scale,(PC_Real)1);
        w->local.status=PC_OK;w->plan=&w->local;
    }
    if(w->plan->status!=PC_OK)return w->plan->status;
    a=-w->plan->cl;w->found=0U;
    if(hw==7U){
        B=(PC_Real)0;B+=q[0];B+=q[1];B+=q[2];
        root=-B/(PC_Real)3;
        if(root>=a && root<=w->plan->cu)w->found=1U;
    }else{
        /* Public callers already validate hw<=7. This internal dispatch is
         * limited to 3/5/6, so k identifies their sole OFF phase. */
        w->k=hw==3U?2U:(hw==5U?1U:0U);off_q=q[w->k];
        if(off_q<(PC_Real)0){
            off_base=shared?w->plan->base[w->k]:off_q+w->plan->cl;
            point=-w->plan->cl-off_q;w->active=(uint16_t)(point>-w->plan->cl);
        }else{
            off_base=shared?w->plan->base[w->k]:off_q-w->plan->cu;
            point=w->plan->cu-off_q;w->active=(uint16_t)(point<=-w->plan->cl);
        }
        w->n=(uint16_t)(off_q!=(PC_Real)0 && point>a && point<w->plan->cu);
        b=w->n?point:w->plan->cu;
        B=pf_dense_sum(q,hw,off_base,w->active);
        root=w->active?-B/(PC_Real)3:-B/(PC_Real)2;
        if(root>=a && root<=b)w->found=1U;
        else if(w->n){
            a=b;w->active^=1U;
            B=pf_dense_sum(q,hw,off_base,w->active);
            root=w->active?-B/(PC_Real)3:-B/(PC_Real)2;
            if(root>=a && root<=w->plan->cu)w->found=1U;
        }
    }
    if(!w->found){
        root=-w->plan->cl;
        residual=pf_lambda_projection(q,hw,w->plan->cu,w->plan->cl,root,next);
        if(pf_finite(residual) && PC_ABS(residual)<=w->plan->tolerance)return PC_OK;
        root=w->plan->cu;
    }
    residual=pf_lambda_projection(q,hw,w->plan->cu,w->plan->cl,root,next);
    if(!pf_finite(residual) || PC_ABS(residual)>w->plan->tolerance)return PC_ERR_ROOT;
    return PC_OK;
}

/* A NULL plan for exactly one ON phase needs only its two OFF events.
 * Keep phase-order arithmetic and stable strict event ordering. ON base[]
 * entries are never read by pf_lambda_root; shared plans remain authoritative.
 * The solver, endpoint fallback and final KCL projection are unchanged. */
static void pf_lambda_single_plan(const PC_Real q[3],PC_Real c,
    PC_Real up,PC_Real low,uint16_t hw,PF_LambdaPlan *p)
{
    PC_Real span,scale,point,key;
    uint16_t r,phase;
    p->status=PC_ERR_NUMERIC;
    p->off_active=0U;p->count=0U;
    p->cu=c*up;p->cl=c*low;
    span=p->cu+p->cl;
    scale=PC_ABS(q[0])+PC_ABS(q[1])+PC_ABS(q[2])+c*(up+low);
    if(!pf_finite(p->cu) || !pf_finite(p->cl) ||
       !pf_finite(span) || !pf_finite(scale))return;
    p->tolerance=(PC_Real)32*PC_EPS*PC_MAX(scale,(PC_Real)1);
    for(r=0U;r<3U;r++){
        phase=(uint16_t)(1U<<r);
        if(phase&hw)continue;
        if(q[r]<(PC_Real)0){
            p->base[r]=q[r]+p->cl;
            point=-p->cl-q[r];
            if(point>-p->cl)p->off_active|=phase;
        }else{
            p->base[r]=q[r]-p->cu;
            point=p->cu-q[r];
            if(point<=-p->cl)p->off_active|=phase;
        }
        if(q[r]!=(PC_Real)0 && point>-p->cl && point<p->cu){
            p->point[p->count]=point;
            p->phase[p->count]=phase;p->count++;
        }
    }
    if(p->count==2U && p->point[1]<p->point[0]){
        key=p->point[0];p->point[0]=p->point[1];p->point[1]=key;
        phase=p->phase[0];p->phase[0]=p->phase[1];p->phase[1]=phase;
    }
    p->status=PC_OK;
}

/* Same ideal diode KCL expressed in lambda=c*mu:
 *   ON:  i=q+lambda; OFF: i=max(q+lambda-cu,0)+min(q+lambda+cl,0).
 * A fixed active set gives H=B+N*lambda, N=0..3. Three events give at most
 * four segments. B is re-summed in phase order instead of updated by
 * subtraction, so a fully blocked N=0 interval has an exact structural zero.
 * The first valid closed segment is chosen, including its left flat endpoint.
 * There is no current snap or modified 1e-12 blocking/strict-cost threshold.
 * Current-variable rounding differs from the voltage-variable root; FULL
 * observer reconstruction deliberately continues to use pf_root unchanged.
 */
static uint16_t pf_lambda_root(const PC_Real q[3],uint16_t hw,PC_Real c,
    PC_Real up,PC_Real low,PC_Real next[3],const PF_LambdaPlan *shared)
{
    PF_LambdaWork *w=&pf_lambda_work;
    /* Keep short-lived FP values in local scalars; preserve the exact
     * phase-order sums, segment order and final projection expressions. */
    PC_Real a,b,B,root,residual;
    if(shared)w->plan=shared;
    else{
        if(hw==1U || hw==2U || hw==4U)
            pf_lambda_single_plan(q,c,up,low,hw,&w->local);
        else
            pf_lambda_plan(q,c,up,low,&w->local);
        w->plan=&w->local;
    }
    if(w->plan->status!=PC_OK)return w->plan->status;
    w->active=(uint16_t)(hw | (w->plan->off_active & (uint16_t)~hw));
    a=-w->plan->cl;w->found=0U;
    for(w->k=0U;w->k<=w->plan->count;w->k++){
        if(w->k<w->plan->count && (w->plan->phase[w->k]&hw))continue;
        b=w->k<w->plan->count?w->plan->point[w->k]:w->plan->cu;
        B=(PC_Real)0;
        if(w->active&1U)B+=(hw&1U)?q[0]:w->plan->base[0];
        if(w->active&2U)B+=(hw&2U)?q[1]:w->plan->base[1];
        if(w->active&4U)B+=(hw&4U)?q[2]:w->plan->base[2];
        w->n=(uint16_t)((w->active&1U)+((w->active>>1)&1U)+((w->active>>2)&1U));
        if(w->n==0U)root=a;
        else if(w->n==1U)root=-B;
        else if(w->n==2U)root=-B/(PC_Real)2;
        else root=-B/(PC_Real)3;
        if(root>=a && root<=b){w->found=1U;break;}
        if(w->k<w->plan->count){
            w->active^=w->plan->phase[w->k];a=b;
        }
    }
    if(!w->found){
        /* Only endpoint rounding within the existing residual tolerance is
         * accepted; tolerance is never used to snap a candidate current. */
        root=-w->plan->cl;
        residual=pf_lambda_projection(q,hw,w->plan->cu,w->plan->cl,root,next);
        if(pf_finite(residual) && PC_ABS(residual)<=w->plan->tolerance)return PC_OK;
        root=w->plan->cu;
    }
    residual=pf_lambda_projection(q,hw,w->plan->cu,w->plan->cl,root,next);
    if(!pf_finite(residual) || PC_ABS(residual)>w->plan->tolerance)return PC_ERR_ROOT;
    return PC_OK;
}
#endif

/* Fixed control-only kernel: no pole/integral or detailed trace branches.
 * It and pf_root own distinct static workspaces; neither is reentrant. */
/* Two constant substeps and a single model body shared by ordinary and
 * fine-profiled kernels. The ordinary kernel has no root clock branches. */
#if PC_FAST_LEGACY_CONTROL_ROOT
#define PF_CONTROL_ROOT_CALL(STEP) \
        status=pf_root(w->free_abc,hw,c,up,low,&w->mu,&w->width, \
            &w->iterations,w->next,&w->residual,(STEP)==0U?seed:0);
#else
#define PF_CONTROL_ROOT_CALL(STEP) \
do { \
        if(hw & (uint16_t)(hw-1U)) \
            status=pf_lambda_dense_root(w->free_abc,hw,c,up,low,w->next, \
                ((STEP)==0U && seed)?&seed->lambda:0); \
        else \
            status=pf_lambda_root(w->free_abc,hw,c,up,low,w->next, \
                ((STEP)==0U && seed)?&seed->lambda:0); \
} while(0)
#endif

#define PF_CONTROL_STEP(STEP,PROFILE_ROOT,RETURN_STATUS) \
do { \
        neutral=(PC_Real)0;blocked=0U; \
        out->substep[(STEP)].root_iterations=PC_FAST_SUBSTEP_UNAVAILABLE; \
        up=(dc-np)/(PC_Real)2;low=(dc+np)/(PC_Real)2; \
        if(up<=(PC_Real)0 || low<=(PC_Real)0 || \
           !pf_finite(up) || !pf_finite(low))RETURN_STATUS(PC_ERR_MIDPOINT); \
        if((STEP)==0U && seed){w->old_abc=seed->old_abc;w->free_abc=seed->free_abc;} \
        else{ \
            pf_dq_to_abc(dq,&plan->node[(STEP)],w->old_local); \
            free_dq[0]=dq[0]+h*f[0];free_dq[1]=dq[1]+h*f[1]; \
            pf_dq_to_abc(free_dq,&plan->node[(STEP)+1U],w->free_local); \
            w->old_abc=w->old_local;w->free_abc=w->free_local; \
        } \
        if(PROFILE_ROOT){ \
            PC_fast_profile.root_calls++; \
            pf_profile_work.root_begin=pf_profile_read(); \
        } \
        PF_CONTROL_ROOT_CALL(STEP); \
        if(PROFILE_ROOT){ \
            uint32_t stamp=pf_profile_read(); \
            PC_fast_profile.root_cycles+=pf_profile_elapsed(pf_profile_work.root_begin,stamp); \
        } \
        if(status!=PC_OK)RETURN_STATUS(status); \
        if(hw&1U)neutral+=(w->old_abc[0]+w->next[0])/(PC_Real)2; \
        else if(PC_ABS(w->next[0])<(PC_Real)1e-12)blocked=1U; \
        if(hw&2U)neutral+=(w->old_abc[1]+w->next[1])/(PC_Real)2; \
        else if(PC_ABS(w->next[1])<(PC_Real)1e-12)blocked=1U; \
        if(hw&4U)neutral+=(w->old_abc[2]+w->next[2])/(PC_Real)2; \
        else if(PC_ABS(w->next[2])<(PC_Real)1e-12)blocked=1U; \
        out->blocked=(uint16_t)(out->blocked || blocked); \
        pf_abc_to_dq(w->next,&plan->node[(STEP)+1U],dq); \
        np+=plan->h_over_C*neutral; \
        if(!pf_finite(np) || !pf_finite(dq[0]) || !pf_finite(dq[1]))RETURN_STATUS(PC_ERR_NUMERIC); \
} while(0)

#define PF_CONTROL_BODY(PROFILE_ROOT,RETURN_STATUS) \
    PF_ControlWork *w=&pf_control_work; \
    PC_Real np,neutral,dq[2],free_dq[2]; \
    uint16_t status,blocked; \
    /* h/C was cached once in the validated interval plan. */ \
    dq[0]=dq0[0];dq[1]=dq0[1]; \
    np=initial_np; \
    out->blocked=0U; \
    out->u_integral_dq_V_s[0]=(PC_Real)0;out->u_integral_dq_V_s[1]=(PC_Real)0; \
    if(setup_status!=PC_OK)RETURN_STATUS(setup_status); \
    PF_CONTROL_STEP(0U,PROFILE_ROOT,RETURN_STATUS); \
    PF_CONTROL_STEP(1U,PROFILE_ROOT,RETURN_STATUS); \
    out->idq_A[0]=dq[0];out->idq_A[1]=dq[1];out->np_V=np; \
    if(PC_ABS(np)>=dc)RETURN_STATUS(PC_ERR_MIDPOINT); \
    RETURN_STATUS(PC_OK);


/* A successful model iteration continues the batch; failures return exactly
 * at the old per-interval touch point. N=1 uses this identical model body. */
#define PF_CONTROL_ITER_RETURN(STATUS) do { if((STATUS)!=PC_OK)return (STATUS); } while(0)
#define PF_CONTROL_CORE(PROFILE_ROOT) \
    const PC_Real *dq0=pf_control_context.dq0,*f=pf_control_context.f; \
    const PF_Plan *plan=pf_control_context.plan; \
    const PF_Seed *seed=pf_control_context.seed; \
    PC_Interval *single=pf_control_context.interval; \
    const PC_Input *input=pf_control_context.input; \
    PC_Output *result=pf_control_context.result; \
    PC_Real initial_up=pf_control_context.up,initial_low=pf_control_context.low; \
    PC_Real initial_np=initial_low-initial_up,dc=initial_up+initial_low; \
    PC_Real h=plan->h,c=plan->c; \
    uint16_t setup_status=(!pf_finite(c) || c<=(PC_Real)0 || !pf_finite(dc))?PC_ERR_NUMERIC:PC_OK; \
    uint16_t count=pf_control_context.count,j; \
    for(j=0U;j<count;j++){ \
        PC_Interval *out=result?&result->candidate_interval[j]:single; \
        PC_Real up=initial_up,low=initial_low,e0,e1; \
        uint16_t hw=result?pf_hw(j):pf_control_context.hw,changed; \
        PF_CONTROL_BODY(PROFILE_ROOT,PF_CONTROL_ITER_RETURN); \
        if(result){ \
            result->idq2_A[j][0]=dq[0];result->idq2_A[j][1]=dq[1]; \
            result->np2_V[j]=np;result->blocked_candidate[j]=out->blocked; \
            e0=result->idq2_A[j][0]-input->id_ref_A;e1=result->idq2_A[j][1]-input->iq_ref_A; \
            result->gi[j]=e0*e0+e1*e1;result->gu[j]=result->np2_V[j]*result->np2_V[j]; \
            changed=(uint16_t)(hw ^ input->applied_hw_state); \
            result->switch_count[j]=(uint16_t)((changed&1U)+((changed>>1)&1U)+((changed>>2)&1U)); \
            if(!pf_finite(result->gi[j]) || !pf_finite(result->gu[j]))return PC_ERR_NUMERIC; \
        } \
    } \
    return PC_OK;

static uint16_t pf_control_interval_plain(void)
{
    PF_CONTROL_CORE(0U);
}
static uint16_t pf_control_interval_profiled(void)
{
    PF_CONTROL_CORE(1U);
}
#undef PF_CONTROL_CORE
#undef PF_CONTROL_ITER_RETURN
#undef PF_CONTROL_BODY
#undef PF_CONTROL_STEP
#undef PF_CONTROL_ROOT_CALL

static uint16_t pf_control_interval(const PC_Config *cfg,const PC_Real dq0[2],
    PC_Real up,PC_Real low,uint16_t hw,const PC_Real f[2],
    const PF_Plan *plan,PC_Interval *out,const PF_Seed *seed)
{
    (void)cfg;
    pf_control_context.dq0=dq0;pf_control_context.f=f;
    pf_control_context.plan=plan;pf_control_context.seed=seed;
    pf_control_context.interval=out;pf_control_context.input=0;
    pf_control_context.result=0;pf_control_context.up=up;pf_control_context.low=low;
    pf_control_context.hw=hw;pf_control_context.count=1U;
    if(pf_profile_work.active==2U)return pf_control_interval_profiled();
    return pf_control_interval_plain();
}

static uint16_t pf_candidate_batch(const PC_Input *input,PC_Real up,PC_Real low,PC_Output *out)
{
    pf_control_context.dq0=out->idq1_A;pf_control_context.f=input->fhat_A_s;
    pf_control_context.plan=&pf_candidate_plan;pf_control_context.seed=&pf_candidate_seed;
    pf_control_context.interval=0;pf_control_context.input=input;
    pf_control_context.result=out;pf_control_context.up=up;pf_control_context.low=low;
    pf_control_context.hw=0U;pf_control_context.count=8U;
    if(pf_profile_work.active==2U)return pf_control_interval_profiled();
    return pf_control_interval_plain();
}

/* Internal kernel: caller has validated common inputs and prepared the
 * exact interval-angle plan. Each candidate still owns its own neutral-state
 * evolution. Success writes every summary member; detail controls traces. */
static uint16_t pf_interval(const PC_Config *cfg,const PC_Real dq0[2],
    PC_Real up,PC_Real low,uint16_t hw,const PC_Real f[2],
    const PF_Plan *plan,PC_Interval *out,uint16_t detail,const PF_Seed *seed)
{
    PC_Real dq[2],np=low-up,dc=up+low,h=plan->h,c=plan->c;
    uint16_t step,r,status;
    dq[0]=dq0[0];dq[1]=dq0[1];out->blocked=0U;
    out->u_integral_dq_V_s[0]=(PC_Real)0;out->u_integral_dq_V_s[1]=(PC_Real)0;
    if(!pf_finite(c) || c<=(PC_Real)0 || !pf_finite(dc))return PC_ERR_NUMERIC;
    for(step=0U;step<2U;step++){
        PC_Real old_local[3],free_local[3],next[3],pole[3],free_dq[2],pole_dq[2];
        const PC_Real *old,*freeabc;
        PC_Real neutral=(PC_Real)0,mu,width,residual;
        uint16_t iterations,blocked=0U;
        PC_Substep *s=&out->substep[step];
        s->root_iterations=PC_FAST_SUBSTEP_UNAVAILABLE;
        up=(dc-np)/(PC_Real)2;low=(dc+np)/(PC_Real)2;
        if(up<=(PC_Real)0 || low<=(PC_Real)0 || !pf_finite(up) || !pf_finite(low))return PC_ERR_MIDPOINT;
        if(step==0U && seed){old=seed->old_abc;freeabc=seed->free_abc;}
        else{
            pf_dq_to_abc(dq,&plan->node[step],old_local);
            free_dq[0]=dq[0]+h*f[0];free_dq[1]=dq[1]+h*f[1];
            pf_dq_to_abc(free_dq,&plan->node[step+1U],free_local);
            old=old_local;freeabc=free_local;
        }
        status=pf_root(freeabc,hw,c,up,low,&mu,&width,&iterations,next,&residual,
            (step==0U)?seed:0);
        if(status!=PC_OK)return status;
        for(r=0U;r<3U;r++){
            if(hw&(uint16_t)(1U<<r)){
                if(detail!=PC_FAST_CONTROL_ONLY)pole[r]=(PC_Real)0;
                neutral+=(old[r]+next[r])/(PC_Real)2;
            }else{
                if(detail!=PC_FAST_CONTROL_ONLY){
                    PC_Real z=freeabc[r]+c*mu;
                    pole[r]=(z-next[r])/c;
                }
                if(PC_ABS(next[r])<(PC_Real)1e-12)blocked=1U;
            }
        }
        out->blocked=(uint16_t)(out->blocked || blocked);
        if(detail!=PC_FAST_CONTROL_ONLY){
            pf_abc_to_dq(pole,&plan->node[step+1U],pole_dq);
            out->u_integral_dq_V_s[0]+=h*pole_dq[0];out->u_integral_dq_V_s[1]+=h*pole_dq[1];
        }
        pf_abc_to_dq(next,&plan->node[step+1U],dq);
        np+=h/cfg->C_half_F*neutral;
        if(detail==PC_FAST_FULL_SUBSTEPS){
            for(r=0U;r<3U;r++){
                s->old_abc_A[r]=old[r];s->free_abc_A[r]=freeabc[r];
                s->next_abc_A[r]=next[r];s->pole_abc_V[r]=pole[r];
            }
            s->idq_A[0]=dq[0];s->idq_A[1]=dq[1];s->np_V=np;s->mu_V=mu;
            s->theta_end_rad=plan->node[step+1U].theta;
            s->root_residual_A=residual;s->root_bracket_width_V=width;
            s->root_iterations=iterations;s->blocked=blocked;
        }
        if(!pf_finite(np) || !pf_finite(dq[0]) || !pf_finite(dq[1]))return PC_ERR_NUMERIC;
    }
    out->idq_A[0]=dq[0];out->idq_A[1]=dq[1];out->np_V=np;
    if(PC_ABS(np)>=dc)return PC_ERR_MIDPOINT;
    return PC_OK;
}

uint16_t PC_fast_predict_interval(const PC_Config *cfg,const PC_Real dq0[2],
    PC_Real up,PC_Real low,uint16_t hw,PC_Real theta,PC_Real omega,
    const PC_Real f[2],PC_Real duration,PC_Interval *out,uint16_t detail)
{
    if(!out)return PC_ERR_INPUT;
    if(!pf_config_valid(cfg) || detail>PC_FAST_CONTROL_ONLY)return PC_ERR_CONFIG;
    if(!dq0 || !f || hw>7U || !pf_finite(duration) || duration<=(PC_Real)0 ||
       !pf_finite(up) || !pf_finite(low) || up<=(PC_Real)0 || low<=(PC_Real)0 ||
       !pf_finite(dq0[0]) || !pf_finite(dq0[1]) || !pf_finite(f[0]) ||
       !pf_finite(f[1]) || !pf_finite(theta) || !pf_finite(omega))return PC_ERR_INPUT;
    pf_plan(cfg,theta,omega,duration,&pf_standalone_plan);
    if(detail==PC_FAST_CONTROL_ONLY)
        return pf_control_interval(cfg,dq0,up,low,hw,f,&pf_standalone_plan,out,0);
    return pf_interval(cfg,dq0,up,low,hw,f,&pf_standalone_plan,out,detail,0);
}

static void pf_output_init(PC_Output *out)
{
    uint16_t j;
    /* Initialize exactly the public basic result. No write traverses the
       large detailed interval arrays, which have an explicit invalid flag. */
    out->status=PC_ERR_INPUT;out->selected_id=1U;out->pc_off_id=1U;out->hw_state=0U;
    out->valid=0U;out->requested=0U;out->active=0U;out->current_count=0U;
    out->intersection_count=0U;out->midpoint_prefix=0U;out->intersection_mask=0U;out->current_mask=0U;
    out->idq1_A[0]=(PC_Real)0;out->idq1_A[1]=(PC_Real)0;out->np1_V=(PC_Real)0;
    out->budget_limit_A=(PC_Real)0;out->voltage_margin_V=(PC_Real)0;
    for(j=0U;j<8U;j++){
        out->order_i[j]=0U;out->order_u[j]=0U;out->switch_count[j]=0U;out->blocked_candidate[j]=0U;
        out->gi[j]=(PC_Real)0;out->gu[j]=(PC_Real)0;out->gz[j]=(PC_Real)0;
        out->idq2_A[j][0]=(PC_Real)0;out->idq2_A[j][1]=(PC_Real)0;out->np2_V[j]=(PC_Real)0;
    }
    for(j=0U;j<10U;j++)out->zcdc_diag[j]=(PC_Real)0;
}

static uint16_t pf_less(uint16_t x,uint16_t y,const PC_Real a[8],
    const PC_Real b[8],const uint16_t sw[8])
{
    return (uint16_t)(a[x]<a[y] || (a[x]==a[y] &&
        (b[x]<b[y] || (b[x]==b[y] && (sw[x]<sw[y] || (sw[x]==sw[y] && x<y))))));
}

static void pf_rank(const PC_Real a[8],const PC_Real b[8],const uint16_t sw[8],uint16_t order[8])
{
    uint16_t k,j,key;
    for(k=0U;k<8U;k++) order[k]=k;
    for(k=1U;k<8U;k++) {
        key=order[k];j=k;
        while(j>0U && pf_less(key,order[j-1U],a,b,sw)) {order[j]=order[j-1U];j--;}
        order[j]=key;
    }
}

/* Exact integer form of the previous adaptive-prefix loop. A three-entry
 * prefix can intersect in 0..3 entries. Zero needs only the first later hit;
 * three means prefix two already has the required two. This preserves the
 * final mask/count/prefix even for empty or arbitrary eight-bit current sets.
 * No floating-point costs, budgets or stable ordering are changed. */
static uint16_t pf_intersection(uint16_t cmask,const uint16_t ou[8],
    uint16_t *mask,uint16_t *count,uint16_t *prefix)
{
    uint16_t k,m=3U,n=0U,bits=0U;
    for(k=0U;k<3U;k++)if(cmask & (uint16_t)(1U<<ou[k])){
        bits|=(uint16_t)(1U<<ou[k]);n++;
    }
    if(!n){
        for(k=3U;k<8U;k++){
            m=(uint16_t)(k+1U);
            if(cmask & (uint16_t)(1U<<ou[k])){
                bits=(uint16_t)(1U<<ou[k]);n=1U;break;
            }
        }
    }else if(n==3U){
        m=2U;n=2U;bits=(uint16_t)((1U<<ou[0]) | (1U<<ou[1]));
    }
    *mask=bits;*count=n;*prefix=m;
    return n?(uint16_t)PC_OK:(uint16_t)PC_ERR_INTERSECTION;
}

static PC_Real pf_angle_cost(PC_Real rd,PC_Real rq,const PC_Real dq[2])
{
    PC_Real a;
    if(PC_SQRT(dq[0]*dq[0]+dq[1]*dq[1])<(PC_Real)1e-12) return PC_PI*PC_PI;
    a=PC_ATAN2(rd*dq[1]-rq*dq[0],rd*dq[0]+rq*dq[1]);
    return a*a;
}

uint16_t PC_run_fast(const PC_Config *cfg,const PC_Input *in,PC_Output *out)
{
    PF_SelectWork *s=&pf_select_work;
    PC_Real dc,up1,low1,theta1,theta2,amp;
    PC_Real lo,hi,budget,minI,spreadLo,spreadHi,gzLo,gzHi;
    uint16_t status,j,k,r,m,n,chosen,pcOff,mask=0U,cmask=0U;
    PC_fast_kernel_revision=10U;
    if(pf_profile_work.armed)pf_profile_begin();
    PC_fast_output_substeps_available=0U;
    PC_fast_output_summaries_available=0U;
    PC_fast_output_integrals_available=0U;
    if(!out)PF_PROFILE_RETURN(PC_ERR_INPUT);
    pf_output_init(out);
    /* Safe output on failure is all-OFF hardware state 0, MATLAB ID 1. */
    out->selected_id=1U;out->pc_off_id=1U;out->status=PC_ERR_INPUT;
    if(!pf_config_valid(cfg)) {out->status=PC_ERR_CONFIG;PF_PROFILE_RETURN(out->status);}
    if(!in || in->applied_hw_state>7U || !pf_finite(in->up_V) || !pf_finite(in->low_V) ||
       in->up_V<=(PC_Real)0 || in->low_V<=(PC_Real)0 || !pf_finite(in->theta_rad) ||
       !pf_finite(in->omega_rad_s) || !pf_finite(in->id_ref_A) || !pf_finite(in->iq_ref_A) ||
       !pf_finite(in->fhat_A_s[0]) || !pf_finite(in->fhat_A_s[1]))PF_PROFILE_RETURN(out->status);
    for(r=0U;r<3U;r++)if(!pf_finite(in->iabc_A[r]) || !pf_finite(in->eabc_V[r]))PF_PROFILE_RETURN(out->status);
    pf_rotation(in->theta_rad,&pf_input_rotation);
    pf_abc_to_dq(in->iabc_A,&pf_input_rotation,s->dq);
    pf_abc_to_dq(in->eabc_V,&pf_input_rotation,s->edq);
    pf_plan(cfg,in->theta_rad,in->omega_rad_s,cfg->first_duration_s,&pf_first_plan);
    dc=in->up_V+in->low_V;
    PF_PROFILE_STAGE(setup_cycles);
    status=pf_control_interval(cfg,s->dq,in->up_V,in->low_V,in->applied_hw_state,
        in->fhat_A_s,&pf_first_plan,&out->first_interval,0);
    if(status!=PC_OK) {out->status=status;PF_PROFILE_RETURN(status);}
    out->idq1_A[0]=out->first_interval.idq_A[0];out->idq1_A[1]=out->first_interval.idq_A[1];
    out->np1_V=out->first_interval.np_V;
    PF_PROFILE_STAGE(delay_cycles);
    theta1=in->theta_rad+in->omega_rad_s*cfg->first_duration_s;
    theta2=theta1+in->omega_rad_s*cfg->candidate_duration_s;
    up1=(dc-out->np1_V)/(PC_Real)2;low1=(dc+out->np1_V)/(PC_Real)2;
    pf_plan(cfg,theta1,in->omega_rad_s,cfg->candidate_duration_s,&pf_candidate_plan);
    pf_rotation(theta2,&pf_reference_rotation);
    pf_seed(out->idq1_A,in->fhat_A_s,up1,low1,&pf_candidate_plan,&pf_candidate_seed);
    PF_PROFILE_STAGE(plan_seed_cycles);
    status=pf_candidate_batch(in,up1,low1,out);
    if(status!=PC_OK) {out->status=status;PF_PROFILE_RETURN(status);}
    PF_PROFILE_STAGE(candidates_cycles);
    pf_rank(out->gi,out->gu,out->switch_count,s->oi);
    pf_rank(out->gu,out->gi,out->switch_count,s->ou);
    minI=out->gi[s->oi[0]];budget=PC_SQRT(minI)+cfg->delta_i_A;
    out->budget_limit_A=budget;
    /* Preserve the reference sqrt(gi) comparisons at the budget boundary.
       Any squared-threshold optimization must retain the cross term
       2*delta*sqrt(bestGi), and recheck float32 equality behavior. */
    for(k=0U;k<3U;k++) if(PC_SQRT(out->gi[s->oi[k]])<=budget) {
        cmask|=(uint16_t)(1U<<s->oi[k]);out->current_count++;
    }
    out->current_mask=cmask;
    status=pf_intersection(cmask,s->ou,&mask,&n,&m);
    if(status!=PC_OK) {out->status=PC_ERR_INTERSECTION;PF_PROFILE_RETURN(out->status);}
    out->intersection_mask=mask;out->intersection_count=n;out->midpoint_prefix=m;
    pcOff=s->oi[0];
    for(k=0U;k<8U;k++) if(mask & (uint16_t)(1U<<s->oi[k])) {pcOff=s->oi[k];break;}
    out->pc_off_id=(uint16_t)(pcOff+1U);
    PF_PROFILE_STAGE(select_cycles);
    out->valid=(uint16_t)(in->omega_rad_s>(PC_Real)0 && s->edq[0]>(PC_Real)1e-9 &&
        up1>(PC_Real)0 && low1>(PC_Real)0);
    out->requested=(uint16_t)(in->zcdc_enable!=0U && in->terminal_enable!=0U);
    amp=PC_SQRT(in->id_ref_A*in->id_ref_A+in->iq_ref_A*in->iq_ref_A);
    if(!pf_finite(amp)){out->status=PC_ERR_NUMERIC;PF_PROFILE_RETURN(out->status);}
    s->udq[0]=in->id_ref_A;s->udq[1]=in->iq_ref_A;pf_dq_to_abc(s->udq,&pf_reference_rotation,s->iref);
    s->udq[0]=s->edq[0]-cfg->R_ohm*in->id_ref_A+in->omega_rad_s*cfg->L_H*in->iq_ref_A;
    s->udq[1]=s->edq[1]-cfg->R_ohm*in->iq_ref_A-in->omega_rad_s*cfg->L_H*in->id_ref_A;
    /* Finite inputs alone do not guarantee finite derived products. This
       rejects impossible/extreme configurations rather than reporting an
       apparently successful controller with a NaN voltage margin. */
    if(!pf_finite(s->udq[0]) || !pf_finite(s->udq[1])){out->status=PC_ERR_NUMERIC;PF_PROFILE_RETURN(out->status);}
    pf_dq_to_abc(s->udq,&pf_reference_rotation,s->uref);
    lo=-(PC_Real)FLT_MAX;hi=(PC_Real)FLT_MAX;
    for(r=0U;r<3U;r++) {
        PC_Real lower=s->iref[r]>=(PC_Real)0?(PC_Real)0:-low1;
        PC_Real upper=s->iref[r]>=(PC_Real)0?up1:(PC_Real)0;
        lo=PC_MAX(lo,lower-s->uref[r]);hi=PC_MIN(hi,upper-s->uref[r]);
    }
    out->voltage_margin_V=hi-lo;
    if(!pf_finite(out->voltage_margin_V)){out->status=PC_ERR_NUMERIC;PF_PROFILE_RETURN(out->status);}
    out->active=(uint16_t)(out->valid && out->requested && amp>=(PC_Real)0.1 &&
        PC_MIN(PC_ABS(s->iref[0]),PC_MIN(PC_ABS(s->iref[1]),PC_ABS(s->iref[2])))<=amp*PC_SIN(cfg->zero_window_rad) &&
        (out->voltage_margin_V<-(PC_Real)1e-6 || out->first_interval.blocked || out->blocked_candidate[pcOff]));
    chosen=pcOff;
    PF_PROFILE_STAGE(terminal_prepare_cycles);
    if(out->active) {
        for(j=0U;j<8U;j++)if(cfg->diagnostic_all_angles || (mask & (uint16_t)(1U<<j))){
            if(pf_profile_work.active)PC_fast_profile.angle_calls++;
            out->gz[j]=pf_angle_cost(in->id_ref_A,in->iq_ref_A,out->idq2_A[j]);
        }
        for(k=0U;k<8U;k++) {j=s->oi[k];if((mask & (uint16_t)(1U<<j)) && out->gz[j]<out->gz[chosen]) chosen=j;}
    }
    PF_PROFILE_STAGE(angles_cycles);
    gzLo=out->gz[0];gzHi=out->gz[0];spreadLo=(PC_Real)FLT_MAX;spreadHi=-(PC_Real)FLT_MAX;
    for(j=0U;j<8U;j++) {
        gzLo=PC_MIN(gzLo,out->gz[j]);gzHi=PC_MAX(gzHi,out->gz[j]);
        if(mask & (uint16_t)(1U<<j)) {spreadLo=PC_MIN(spreadLo,out->gz[j]);spreadHi=PC_MAX(spreadHi,out->gz[j]);}
        out->order_i[j]=(uint16_t)(s->oi[j]+1U);out->order_u[j]=(uint16_t)(s->ou[j]+1U);
    }
    out->selected_id=(uint16_t)(chosen+1U);out->hw_state=pf_hw(chosen);
    out->zcdc_diag[0]=(PC_Real)out->valid;out->zcdc_diag[1]=(PC_Real)out->requested;
    out->zcdc_diag[2]=(PC_Real)out->active;out->zcdc_diag[3]=(PC_Real)7;
    out->zcdc_diag[4]=cfg->diagnostic_all_angles?(gzHi-gzLo):(PC_Real)-1;
    out->zcdc_diag[5]=spreadHi-spreadLo;out->zcdc_diag[6]=(PC_Real)out->pc_off_id;
    out->zcdc_diag[7]=(PC_Real)out->selected_id;out->zcdc_diag[8]=(PC_Real)(chosen!=pcOff);
    out->zcdc_diag[9]=out->gz[chosen];out->status=PC_OK;
    PC_fast_output_summaries_available=1U;
    PF_PROFILE_RETURN(PC_OK);
}
