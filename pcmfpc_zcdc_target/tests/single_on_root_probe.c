/* HOST-only same-input differential against the actual frozen v8 generic
 * root. Invalid/inconsistent private plans are reported explicitly as such;
 * they are not target-operating conditions or a modified control model. */
#ifndef SINGLE_ON_FAST_SOURCE
#define SINGLE_ON_FAST_SOURCE "../vienna_pcmfpc_fast.c"
#endif
#include SINGLE_ON_FAST_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

extern uint16_t round8_single_root_export(const PC_Real *,uint16_t,PC_Real,
    PC_Real,PC_Real,PC_Real *,uint16_t,const PC_Real *,PC_Real,PC_Real,PC_Real,uint16_t);

static unsigned cases,shared_cases,null_cases,successes,root_errors,numeric_errors;
static unsigned status_diff,success_byte_diff,error_byte_diff,shared_mutations;
static unsigned shared_inconsistent_cases,forced_status_cases;
static unsigned natural_root_errors,bounded_cases;
static double maximum_KCL,maximum_float_KCL,maximum_normalized_float_KCL,maximum_bounded_KCL;
static uint32_t random_state=0x92b71345U;
static FILE *differences;

static float random_unit(void)
{
    random_state=random_state*1664525U+1013904223U;
    return (float)(random_state>>8)*(1.0f/16777216.0f);
}
static void compare(const PC_Real q[3],uint16_t hw,PC_Real c,PC_Real up,
    PC_Real low,uint16_t shared,const PC_Real seed_q[3],PC_Real seed_c,
    PC_Real seed_up,PC_Real seed_low,uint16_t forced_status,unsigned family)
{
    PC_Real a[3],b[3];PF_LambdaPlan plan,before;uint16_t sa,sb;unsigned diff;
    memset(a,0xa5,sizeof(a));memset(b,0xa5,sizeof(b));
    memset(&plan,0xa5,sizeof(plan));
    if(shared){
        pf_lambda_plan(seed_q,seed_c,seed_up,seed_low,&plan);
        if(forced_status!=0xffffU)plan.status=forced_status;
        before=plan;shared_cases++;
        if(memcmp(q,seed_q,sizeof(PC_Real)*3U) || memcmp(&c,&seed_c,sizeof(c)) ||
           memcmp(&up,&seed_up,sizeof(up)) || memcmp(&low,&seed_low,sizeof(low)))shared_inconsistent_cases++;
        if(forced_status!=0xffffU)forced_status_cases++;
    }else null_cases++;
    sa=round8_single_root_export(q,hw,c,up,low,a,shared,seed_q,seed_c,seed_up,seed_low,forced_status);
    sb=pf_lambda_root(q,hw,c,up,low,b,shared?&plan:0);
    cases++;diff=memcmp(a,b,sizeof(a))!=0;
    status_diff+=sa!=sb;
    if(sa==PC_OK){
        PC_Real sum=(PC_Real)0;double residual=fabs((double)b[0]+b[1]+b[2]),float_residual,tolerance;
        unsigned i;successes++;
        for(i=0U;i<3U;i++)sum+=b[i];float_residual=fabs((double)sum);
        if(shared)tolerance=(double)plan.tolerance;
        else{PF_LambdaPlan diagnostic_plan;pf_lambda_plan(q,c,up,low,&diagnostic_plan);tolerance=(double)diagnostic_plan.tolerance;}
        success_byte_diff+=diff;if(residual>maximum_KCL)maximum_KCL=residual;
        if(float_residual>maximum_float_KCL)maximum_float_KCL=float_residual;
        if(tolerance>0 && float_residual/tolerance>maximum_normalized_float_KCL)maximum_normalized_float_KCL=float_residual/tolerance;
        if(c>0 && c<.1f && up>0 && low>0 && up<=200 && low<=200 &&
            fabsf(q[0])<=50 && fabsf(q[1])<=50 && fabsf(q[2])<=50 &&
            (!shared || (!memcmp(q,seed_q,sizeof(PC_Real)*3U) && c==seed_c && up==seed_up && low==seed_low))){
            bounded_cases++;if(float_residual>maximum_bounded_KCL)maximum_bounded_KCL=float_residual;
        }
    }else{error_byte_diff+=diff;root_errors+=sa==PC_ERR_ROOT;numeric_errors+=sa==PC_ERR_NUMERIC;
        natural_root_errors+=sa==PC_ERR_ROOT && forced_status==0xffffU;}
    if(shared && memcmp(&before,&plan,sizeof(plan)))shared_mutations++;
    if(sa!=sb || diff){
        union {float f;uint32_t u;} aa[3],bb[3];unsigned i;
        for(i=0U;i<3U;i++){aa[i].f=a[i];bb[i].f=b[i];}
        fprintf(differences,"%u,%u,%u,%u,%u,%u,%u,%u,%08lx,%08lx,%08lx,%08lx,%08lx,%08lx\n",
            cases,family,hw,shared,forced_status,sa,sb,diff,(unsigned long)aa[0].u,(unsigned long)bb[0].u,
            (unsigned long)aa[1].u,(unsigned long)bb[1].u,(unsigned long)aa[2].u,(unsigned long)bb[2].u);
    }
}
static void ordinary(const PC_Real q[3],uint16_t hw,PC_Real c,PC_Real up,PC_Real low,unsigned family)
{
    compare(q,hw,c,up,low,0U,q,c,up,low,0xffffU,family);
    compare(q,hw,c,up,low,1U,q,c,up,low,0xffffU,family);
}
static void directed(void)
{
    static const PC_Real values[]={0.0f,-0.0f,1.40129846e-45f,-1.40129846e-45f,FLT_MIN,-FLT_MIN,
        1e-13f,-1e-13f,1e-12f,-1e-12f,1e-8f,-1e-8f,.05f,-.05f,.25f,-.25f,1.0f,-1.0f,
        3.9f,-3.9f,40.0f,-40.0f,1e10f,-1e10f,FLT_MAX,-FLT_MAX,INFINITY,-INFINITY,NAN};
    static const PC_Real config[][3]={{.00333333333f,86,84},{.00166666667f,85,85},
        {1.0f,1,1},{1.0f,0,1},{1.0f,1,0},{1.0f,0,0},{1.0f,-1,2},{1.0f,2,-1},
        {0.0f,86,84},{-0.0f,86,84},{-1.0f,86,84},{FLT_MIN,FLT_MIN,FLT_MIN},
        {FLT_MAX,1,1},{FLT_MAX,86,84},{INFINITY,86,84},{NAN,86,84},
        {1.0f,FLT_MAX,FLT_MAX},{1.0f,INFINITY,85},{1.0f,85,NAN}};
    uint16_t mask;unsigned i,j,k,r;
    PC_Real q[3],seed[3];
    for(mask=1U;mask<=4U;mask<<=1U){
        for(k=0U;k<sizeof(config)/sizeof(config[0]);k++)
            for(i=0U;i<sizeof(values)/sizeof(values[0]);i++)
                for(j=0U;j<sizeof(values)/sizeof(values[0]);j++){
                    q[0]=values[i];q[1]=values[j];q[2]=-q[0]-q[1];
                    ordinary(q,mask,config[k][0],config[k][1],config[k][2],1U);
                    q[2]=(i&1U)?values[(i+j)%29U]:0.0f;
                    ordinary(q,mask,config[k][0],config[k][1],config[k][2],2U);
                }
        /* Equal OFF events, endpoints, one-ULP event ordering and zero-width
         * segments, with the ON event also retained in the shared plan. */
        for(k=0U;k<3U;k++){
            PC_Real c=config[k][0],up=config[k][1],low=config[k][2],cu=c*up,cl=c*low;
            PC_Real points[7]={-cl,nextafterf(-cl,INFINITY),-0.0f,0.0f,nextafterf(cu,-INFINITY),cu,(cu-cl)*.5f};
            unsigned on=mask==1U?0U:(mask==2U?1U:2U),off[2],n=0;
            for(r=0U;r<3U;r++)if(r!=on)off[n++]=r;
            for(i=0U;i<7U;i++)for(j=0U;j<9U;j++){
                int a=(int)(j%3U)-1,b=(int)(j/3U)-1;
                q[off[0]]=cu-points[i];q[off[1]]=-cl-points[i];
                if(a)q[off[0]]=nextafterf(q[off[0]],a>0?INFINITY:-INFINITY);
                if(b)q[off[1]]=nextafterf(q[off[1]],b>0?INFINITY:-INFINITY);
                q[on]=-q[off[0]]-q[off[1]];
                ordinary(q,mask,c,up,low,3U);
                q[on]=nextafterf(q[on],INFINITY);ordinary(q,mask,c,up,low,4U);
                q[on]=nextafterf(q[on],-INFINITY);q[on]+=10.0f;ordinary(q,mask,c,up,low,5U);
            }
        }
        /* Explicit existing-plan semantics: shared metadata is authoritative
         * even when raw values differ or a stored status rejects the call. */
        for(i=0U;i<sizeof(values)/sizeof(values[0]);i++){
            seed[0]=values[i];seed[1]=-.25f;seed[2]=.25f-values[i];
            for(j=0U;j<7U;j++){
                for(r=0U;r<3U;r++)q[r]=seed[r];
                if(j==0U)q[0]=nextafterf(q[0],INFINITY);
                if(j==1U)q[1]+=1.0f;
                if(j==2U)q[2]=-q[2];
                if(j==3U)q[0]=NAN;
                compare(q,mask,j==4U?NAN:.00333333333f,j==5U?NAN:86,j==6U?INFINITY:84,
                    1U,seed,.00333333333f,86,84,0xffffU,6U);
                compare(q,mask,.00333333333f,86,84,1U,seed,.00333333333f,86,84,PC_ERR_ROOT,7U);
                compare(q,mask,.00333333333f,86,84,1U,seed,.00333333333f,86,84,PC_ERR_NUMERIC,8U);
            }
        }
    }
}
static void randomized(void)
{
    unsigned i,r;uint16_t hw;PC_Real q[3],seed[3],c,up,low;
    for(i=0U;i<20000U;i++){
        c=.000001f+.03f*random_unit();up=200.0f*random_unit();low=200.0f*random_unit();
        for(r=0U;r<3U;r++)q[r]=20.0f*(2.0f*random_unit()-1.0f);
        if(i&1U)q[2]=-q[0]-q[1];
        if(i%11U==0U)q[i%3U]*=1e-12f;
        for(hw=1U;hw<=4U;hw<<=1U){
            ordinary(q,hw,c,up,low,9U);
            if(i%7U==0U){
                for(r=0U;r<3U;r++)seed[r]=q[r];
                seed[(i+1U)%3U]=nextafterf(seed[(i+1U)%3U],INFINITY);
                compare(q,hw,c,up,low,1U,seed,c,up,low,0xffffU,10U);
            }
        }
    }
}
int main(int argc,char **argv)
{
    if(argc!=2)return 2;
    differences=fopen(argv[1],"w");if(!differences)return 3;
    fprintf(differences,"case,family,hw,shared,forced_status,old_status,new_status,bytes_diff,old0,new0,old1,new1,old2,new2\n");
    directed();randomized();fclose(differences);
    printf("{\"cases\":%u,\"shared_cases\":%u,\"NULL_cases\":%u,\"successes\":%u,"
        "\"root_error_cases\":%u,\"numeric_error_cases\":%u,\"status_differences\":%u,"
        "\"success_next_byte_differences\":%u,\"failed_next_byte_differences\":%u,"
        "\"shared_plan_mutations\":%u,\"inconsistent_shared_cases\":%u,\"forced_status_cases\":%u,"
        "\"natural_root_error_cases\":%u,\"max_double_sum_KCL_A\":%.12g,\"max_float_KCL_A\":%.12g,"
        "\"max_float_residual_over_used_tolerance\":%.12g,\"bounded_domain_successes\":%u,\"bounded_domain_max_float_KCL_A\":%.12g}\n",
        cases,shared_cases,null_cases,successes,root_errors,numeric_errors,status_diff,
        success_byte_diff,error_byte_diff,shared_mutations,shared_inconsistent_cases,forced_status_cases,
        natural_root_errors,maximum_KCL,maximum_float_KCL,maximum_normalized_float_KCL,bounded_cases,maximum_bounded_KCL);
    return status_diff || success_byte_diff || error_byte_diff || shared_mutations;
}
