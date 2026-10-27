/* HOST-only whitebox checks of the actual integer helper and profiler.
 * No target headers, hardware writes, control epsilon or reference changes. */
#include "../vienna_pcmfpc_fast.c"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

static unsigned checks, intersection_checks, permutations, failures;
static uint32_t fake_value, fake_span, fake_step, fake_reads, fake_wraps;
static unsigned bad_clock;
static PC_Output plain, profiled;

static void check(int result,const char *name)
{
    checks++;
    if(!result){failures++;fprintf(stderr,"FAIL %s\n",name);}
}
static uint32_t clock_read(void)
{
    uint32_t result=fake_value;
    fake_reads++;
    if(fake_value<fake_step){fake_value=fake_span-(fake_step-fake_value);fake_wraps++;}
    else fake_value-=fake_step;
    return bad_clock?fake_span+1U:result;
}
static void fake_reset(uint32_t initial)
{
    fake_span=100000U;fake_step=7U;fake_value=initial;
    fake_reads=fake_wraps=0U;bad_clock=0U;
}
static void input_fixture(PC_Config *c,PC_Input *in)
{
    PC_default_config(c);c->L_H=.003f;c->R_ohm=.2f;c->C_half_F=.00044f;
    c->first_duration_s=.00001f;c->candidate_duration_s=.00002f;
    c->root_method=PC_ROOT_PIECEWISE;c->delta_i_A=.02f;
    memset(in,0,sizeof(*in));
    in->iabc_A[0]=-.05f;in->iabc_A[1]=3.9221143f;in->iabc_A[2]=-3.8721143f;
    in->eabc_V[0]=0;in->eabc_V[1]=70.710678f;in->eabc_V[2]=-70.710678f;
    in->up_V=86;in->low_V=84;in->id_ref_A=4.8f;in->iq_ref_A=0;
    in->theta_rad=1.57079632679f;in->omega_rad_s=314.159265359f;
    in->fhat_A_s[0]=26916;in->fhat_A_s[1]=-1417;
    in->applied_hw_state=3U;in->zcdc_enable=1U;in->terminal_enable=1U;
}
static uint16_t old_intersection(uint16_t cmask,const uint16_t ou[8],
    uint16_t *out_mask,uint16_t *out_count,uint16_t *out_prefix)
{
    uint16_t mask=0U,n=0U,m=3U,iteration,k;
    for(iteration=0U;iteration<8U;iteration++){
        mask=0U;n=0U;
        for(k=0U;k<m;k++)if(cmask & (uint16_t)(1U<<ou[k])){mask|=(uint16_t)(1U<<ou[k]);n++;}
        if(n>=1U && n<=2U)break;
        if(n==0U){if(m<8U)m++;}else{if(m>1U)m--;}
    }
    *out_mask=mask;*out_count=n;*out_prefix=m;
    return n<1U || n>2U?PC_ERR_INTERSECTION:PC_OK;
}
static int next_permutation(uint16_t a[8])
{
    int i=6,j=7,k;uint16_t temp;
    while(i>=0 && a[i]>=a[i+1])i--;
    if(i<0)return 0;
    while(a[j]<=a[i])j--;
    temp=a[i];a[i]=a[j];a[j]=temp;
    for(j=i+1,k=7;j<k;j++,k--){temp=a[j];a[j]=a[k];a[k]=temp;}
    return 1;
}
static void intersections(void)
{
    uint16_t order[8]={0U,1U,2U,3U,4U,5U,6U,7U},cmask;
    do{
        permutations++;
        for(cmask=0U;cmask<256U;cmask++){
            uint16_t am,an,ap,bm,bn,bp,sa,sb;
            sa=old_intersection(cmask,order,&am,&an,&ap);
            sb=pf_intersection(cmask,order,&bm,&bn,&bp);
            intersection_checks++;
            if(sa!=sb || am!=bm || an!=bn || ap!=bp){
                check(0,"actual intersection helper equals old loop");return;
            }
        }
    }while(next_permutation(order));
    check(permutations==40320U && intersection_checks==10321920U,
        "all 256 masks and all 8! rank permutations checked");
}
static uint32_t stage_sum(const PC_FastProfile *p)
{
    return p->setup_cycles+p->delay_cycles+p->plan_seed_cycles+p->candidates_cycles+
        p->select_cycles+p->terminal_prepare_cycles+p->angles_cycles+p->output_cycles;
}
static void copy_profile(PC_FastProfile *p){memcpy(p,(const void *)&PC_fast_profile,sizeof(*p));}
static void profiling(void)
{
    PC_Config c;PC_Input in;PC_FastProfile report,before;uint16_t mode,diag,status;
    unsigned flags[3];uint32_t reads;
    input_fixture(&c,&in);
    fake_reset(45U);PC_fast_profile_configure(0,fake_span);
    check(PC_fast_profile_arm(1U)==PC_ERR_CONFIG,"missing clock cannot arm");
    check(!PC_fast_profile.valid,"missing clock invalidates report");
    PC_fast_profile_configure(clock_read,0U);
    check(PC_fast_profile_arm(1U)==PC_ERR_CONFIG,"zero counter modulus cannot arm");
    PC_fast_profile_configure(clock_read,fake_span);
    check(PC_fast_profile_arm(3U)==PC_ERR_CONFIG,"unsupported profiling mode rejected");
    memset(&plain,0xa5,sizeof(plain));status=PC_run_fast(&c,&in,&plain);
    check(status==PC_OK && plain.active && plain.intersection_count==1U,"fixture has active singleton intersection");
    check(fake_reads==0U,"unarmed kernel makes no clock callback");
    flags[0]=PC_fast_output_substeps_available;flags[1]=PC_fast_output_summaries_available;
    flags[2]=PC_fast_output_integrals_available;
    for(diag=0U;diag<=1U;diag++)for(mode=1U;mode<=2U;mode++){
        c.diagnostic_all_angles=diag;
        PC_fast_profile_arm(0U);memset(&plain,0xa5,sizeof(plain));PC_run_fast(&c,&in,&plain);
        fake_reset(mode==1U?45U:145U);
        PC_fast_profile_configure(clock_read,fake_span);
        check(PC_fast_profile_arm(mode)==PC_OK,"valid one-shot profile arm");
        memset(&profiled,0xa5,sizeof(profiled));status=PC_run_fast(&c,&in,&profiled);copy_profile(&report);
        check(status==PC_OK && !memcmp(&plain,&profiled,sizeof(plain)),"profiling preserves complete public output bytes");
        check(report.valid==1U && report.completed==1U && report.core_status==PC_OK && !report.clock_fault,
            "successful in-range report is complete and valid");
        check(report.mode==mode && report.clock_pair_overhead==fake_step,"mode and adjacent-read overhead recorded");
        check(report.read_count==fake_reads && fake_reads==(mode==1U?11U:47U),"all profiler callback reads accounted");
        check(report.root_calls==(mode==2U?18U:0U),"nested root calls recorded only in fine mode");
        check(report.root_cycles==(mode==2U?18U*fake_step:0U),"fake nested root duration has expected delta");
        check(report.angle_calls==(diag?8U:plain.intersection_count),"actual all/local angle calls recorded");
        check(report.total_cycles==stage_sum(&report),"disjoint stage buckets sum exactly to elapsed total");
        check(report.root_cycles<=report.delay_cycles+report.candidates_cycles,"nested root duration is contained, not additive");
        check(fake_wraps==1U,"profile covers exactly one periodic counter wrap");
        check(PC_fast_output_substeps_available==flags[0] && PC_fast_output_summaries_available==flags[1] &&
            PC_fast_output_integrals_available==flags[2],"profiling preserves public availability flags");
        before=report;reads=fake_reads;memset(&profiled,0xa5,sizeof(profiled));PC_run_fast(&c,&in,&profiled);copy_profile(&report);
        check(fake_reads==reads && !memcmp(&before,&report,sizeof(report)),"arm consumed once and ordinary calls preserve frozen report");
        check(!memcmp(&plain,&profiled,sizeof(plain)),"following unarmed call retains numerical output");
        {PC_Interval interval;PC_Real dq[2];
            PC_abc_to_dq(in.iabc_A,in.theta_rad,dq);
            check(PC_fast_predict_interval(&c,dq,in.up_V,in.low_V,in.applied_hw_state,in.theta_rad,in.omega_rad_s,
                in.fhat_A_s,c.first_duration_s,&interval,PC_FAST_CONTROL_ONLY)==PC_OK,"standalone CONTROL interval success");
            copy_profile(&report);check(fake_reads==reads && !memcmp(&before,&report,sizeof(report)),
                "standalone interval does not consume or alter frozen profiling report");
        }
    }
    fake_reset(145U);PC_fast_profile_configure(clock_read,fake_span);PC_fast_profile_arm(2U);
    check(PC_fast_profile_arm(0U)==PC_OK && !PC_fast_profile.valid,"mode zero cancels and invalidates");
    PC_run_fast(&c,&in,&profiled);check(fake_reads==0U,"cancelled arm makes no callback");
    fake_reset(145U);PC_fast_profile_configure(clock_read,fake_span);PC_fast_profile_arm(2U);
    PC_fast_profile_arm(99U);PC_run_fast(&c,&in,&profiled);
    check(!PC_fast_profile.valid && fake_reads==0U,"invalid arm cancels older pending request");

    fake_reset(145U);PC_fast_profile_configure(clock_read,fake_span);PC_fast_profile_arm(1U);
    status=PC_run_fast(&c,0,&profiled);copy_profile(&report);reads=fake_reads;
    check(status==PC_ERR_INPUT && report.completed && !report.valid && report.core_status==status,
        "null-input failure completes invalid report with matching status");
    PC_run_fast(&c,&in,&profiled);check(fake_reads==reads,"failed call also consumes one shot");
    fake_reset(145U);PC_fast_profile_configure(clock_read,fake_span);PC_fast_profile_arm(1U);
    status=PC_run_fast(&c,&in,0);copy_profile(&report);
    check(status==PC_ERR_INPUT && report.completed && !report.valid && report.core_status==status,
        "null-output failure consumes and completes invalid report");
    {PC_Config bad=c;bad.L_H=0;
        fake_reset(145U);PC_fast_profile_configure(clock_read,fake_span);PC_fast_profile_arm(2U);
        status=PC_run_fast(&bad,&in,&profiled);copy_profile(&report);
        check(status==PC_ERR_CONFIG && report.completed && !report.valid && report.core_status==status && !report.root_calls,
            "configuration failure has no stale root count or valid stage breakdown");
    }
    fake_reset(145U);PC_fast_profile_configure(clock_read,fake_span);PC_fast_profile_arm(2U);bad_clock=1U;
    memset(&profiled,0xa5,sizeof(profiled));status=PC_run_fast(&c,&in,&profiled);copy_profile(&report);
    check(status==PC_OK && !report.valid && report.completed && report.clock_fault,"out-of-range clock invalidates timing, not numerical result");
    PC_fast_profile_arm(0U);bad_clock=0U;memset(&plain,0xa5,sizeof(plain));PC_run_fast(&c,&in,&plain);
    check(!memcmp(&plain,&profiled,sizeof(plain)),"faulty profiling clock cannot alter control result");
    fake_reset(145U);PC_fast_profile_configure(clock_read,fake_span);PC_fast_profile_arm(2U);
    PC_fast_profile_configure(clock_read,fake_span);PC_run_fast(&c,&in,&profiled);
    check(fake_reads==0U && !PC_fast_profile.valid,"configure cancels previously armed request");
}
int main(void)
{
    intersections();profiling();
    printf("{\"checks\":%u,\"failures\":%u,\"intersection_cases\":%u,\"rank_permutations\":%u,\"counter\":\"fake_downcounter_only\"}\n",
        checks,failures,intersection_checks,permutations);
    return failures?1:0;
}
