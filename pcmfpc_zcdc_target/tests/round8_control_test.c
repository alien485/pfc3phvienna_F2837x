/* Actual CONTROL state-machine differential against separately compiled v7.
 * Reuse the v7 fake-clock tests; do not rerun its unchanged 10M intersection
 * enumeration. Every old interval call executes the frozen source itself. */
#define main round7_full_suite_not_run
#include "round7_profile_test.c"
#undef main

extern uint16_t round7_control_export(const PC_Config *,const PC_Real *,
    PC_Real,PC_Real,uint16_t,const PC_Real *,PC_Real,PC_Real,PC_Real,
    uint16_t,uint16_t,PC_Real,PC_Interval *);

static unsigned control_cases,control_status_differences,control_byte_differences;
static unsigned control_successes,control_failures,control_blocked_successes;
static unsigned control_status_count[7],control_seed_count[2];
static uint32_t random_state=0x37a98521U;

static float unit_random(void)
{
    random_state=random_state*1664525U+1013904223U;
    return (float)(random_state>>8)*(1.0f/16777216.0f);
}
static void control_case(const PC_Config *cfg,const PC_Real dq[2],PC_Real up,
    PC_Real low,uint16_t hw,const PC_Real f[2],PC_Real theta,PC_Real omega,
    PC_Real duration,uint16_t use_seed,uint16_t override_c,PC_Real c)
{
    PC_Interval old,current;PF_Plan plan;PF_Seed seed;uint16_t a,b;
    memset(&old,0xa5,sizeof(old));memset(&current,0xa5,sizeof(current));
    a=round7_control_export(cfg,dq,up,low,hw,f,theta,omega,duration,use_seed,override_c,c,&old);
    pf_plan(cfg,theta,omega,duration,&plan);
    if(override_c)plan.c=c;
    if(use_seed)pf_seed(dq,f,up,low,&plan,&seed);
    b=pf_control_interval(cfg,dq,up,low,hw,f,&plan,&current,use_seed?&seed:0);
    control_cases++;control_seed_count[use_seed]++;
    if(a<7U)control_status_count[a]++;
    if(a==PC_OK){control_successes++;control_blocked_successes+=old.blocked!=0U;}
    else control_failures++;
    if(a!=b){
        control_status_differences++;
        if(control_status_differences<=5U)fprintf(stderr,"status case=%u hw=%u seed=%u old=%u current=%u\n",control_cases,hw,use_seed,a,b);
    }
    /* Includes blocked markers, partial failure writes, unchanged padding and
     * unavailable fields initialized to the same deterministic pattern. */
    if(memcmp(&old,&current,sizeof(old))){
        control_byte_differences++;
        if(control_byte_differences<=5U)fprintf(stderr,"bytes case=%u hw=%u seed=%u status=%u/%u\n",control_cases,hw,use_seed,a,b);
    }
}
static void direct_control_edges(void)
{
    PC_Config c;PC_Input in;PC_Real dq[2],f[2],up,low,theta,omega,duration;
    const PC_Real currents[]={0.0f,-0.0f,1e-13f,-1e-13f,1e-12f,-1e-12f,1e-8f,-1e-8f,.05f,-.05f,4.8f,-4.8f};
    const PC_Real bad_c[]={0.0f,-1.0f,FLT_MIN,FLT_MAX,INFINITY,NAN};
    const PC_Real caps[][2]={{86,84},{85,85},{1e-6f,170},{170,1e-6f},{0,85},{85,0},{-1,86},{86,-1},
        {FLT_MIN,FLT_MAX},{FLT_MAX,FLT_MIN},{FLT_MAX,FLT_MAX},{INFINITY,85},{85,NAN}};
    uint16_t hw,shared;unsigned j,k;
    input_fixture(&c,&in);f[0]=26916.0f;f[1]=-1417.0f;
    for(hw=0U;hw<8U;hw++)for(shared=0U;shared<2U;shared++){
        for(j=0U;j<sizeof(currents)/sizeof(currents[0]);j++)for(k=0U;k<3U;k++){
            dq[0]=currents[j];dq[1]=k==0U?0.0f:(k==1U?currents[j]:-currents[j]);
            control_case(&c,dq,86,84,hw,f,1.57079632679f,314.159265359f,
                shared?20e-6f:10e-6f,shared,0U,0.0f);
        }
        dq[0]=4.8f;dq[1]=-.03f;
        for(j=0U;j<sizeof(caps)/sizeof(caps[0]);j++)
            control_case(&c,dq,caps[j][0],caps[j][1],hw,f,1.57079632679f,314.159265359f,
                20e-6f,shared,0U,0.0f);
        for(j=0U;j<sizeof(bad_c)/sizeof(bad_c[0]);j++)
            control_case(&c,dq,86,84,hw,f,1.57079632679f,314.159265359f,20e-6f,shared,1U,bad_c[j]);
        f[0]=FLT_MAX;f[1]=-FLT_MAX;
        control_case(&c,dq,86,84,hw,f,0,314.159265359f,FLT_MAX,shared,0U,0.0f);
        control_case(&c,dq,86,84,hw,f,0,FLT_MAX,20e-6f,shared,0U,0.0f);
        f[0]=26916.0f;f[1]=-1417.0f;
    }
    for(j=0U;j<12000U;j++){
        dq[0]=12.0f*(2.0f*unit_random()-1.0f);dq[1]=12.0f*(2.0f*unit_random()-1.0f);
        if(j%11U==0U)dq[j&1U]*=1e-11f;
        f[0]=60000.0f*(2.0f*unit_random()-1.0f);f[1]=60000.0f*(2.0f*unit_random()-1.0f);
        up=.01f+170.0f*unit_random();low=.01f+170.0f*unit_random();
        theta=40.0f*(unit_random()-.5f);omega=400.0f*(2.0f*unit_random()-1.0f);
        duration=j&1U?10e-6f:20e-6f;hw=(uint16_t)(j&7U);
        for(shared=0U;shared<2U;shared++)control_case(&c,dq,up,low,hw,f,theta,omega,duration,shared,0U,0.0f);
    }
    check(control_status_differences==0U,"all direct-control status codes match actual frozen v7");
    check(control_byte_differences==0U,"all direct-control interval bytes match actual frozen v7");
    check(control_seed_count[0] && control_seed_count[1],"shared and NULL seed paths exercised");
    check(control_successes && control_failures && control_blocked_successes,"success, failure and blocked outcomes exercised");
    check(control_status_count[PC_ERR_MIDPOINT] && control_status_count[PC_ERR_NUMERIC],"midpoint and numeric derived-state rejection exercised");
}
int main(void)
{
    unsigned profile_start=checks,profile_checks;
    profiling();profile_checks=checks-profile_start;
    direct_control_edges();
    printf("{\"checks\":%u,\"failures\":%u,\"profile_checks\":%u,\"control_cases\":%u,"
        "\"control_status_differences\":%u,\"control_byte_differences\":%u,\"control_successes\":%u,"
        "\"control_failures\":%u,\"blocked_successes\":%u,\"shared_seed_cases\":%u,\"NULL_seed_cases\":%u,"
        "\"status_counts\":[%u,%u,%u,%u,%u,%u,%u],\"counter\":\"fake_downcounter_only\"}\n",
        checks,failures,profile_checks,control_cases,control_status_differences,control_byte_differences,
        control_successes,control_failures,control_blocked_successes,control_seed_count[1],control_seed_count[0],
        control_status_count[0],control_status_count[1],control_status_count[2],control_status_count[3],
        control_status_count[4],control_status_count[5],control_status_count[6]);
    return failures?1:0;
}
