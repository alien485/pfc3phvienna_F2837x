/* HOST whitebox fault injection only. The regular runtime suite is linked
 * separately in its own executable; this file never enters the CCS build. */
#define main retained_runtime_test_main
#include "core_runtime_test.c"
#undef main
#include "../vienna_pcmfpc_runtime.c"

static void stopped_fixture(void)
{
    unsigned j;
    VIENNA_closeGiLoop=VIENNA_closeGvLoop=VIENNA_closeGsLoop=0;
    VIENNA_clearTrip=0;timer_step=10U;timer_count=1900000U;
    VIENNA_PCMFPC_init();
    for(j=0U;j<3U;j++)trip_flags[j]=EPWM_TZ_FLAG_OST;
}
int main(void)
{
    PC_Input in;VG_State grid;VO_State observer;uint32_t count;
    stopped_fixture();in=VIENNA_pcmInput;grid=VIENNA_pcmGrid;observer=VIENNA_pcmObserver;
    count=VIENNA_pcmBenchCount;VIENNA_pcmBenchRepeat=5U;
    /* Corrupt only a private HOST config; the fixed fixture/reconstruction
     * must fail instead of continuously retrying a bad numerical pipeline. */
    pc_config.L_H=0.0f;post();
    req(!VIENNA_pcmBenchRepeat && VIENNA_pcmBenchStatus==4U &&
        VIENNA_pcmCoreStatus!=PC_OK,"failed continuous numerical fixture cancels repeat");
    req(VIENNA_pcmBenchCount==count+1U && !VIENNA_pcmBenchSelectedId && !VIENNA_pcmBenchHWState,
        "failed numeric attempt exposes no gate and is counted once");
    req(!memcmp(&in,&VIENNA_pcmInput,sizeof(in)) && !memcmp(&grid,&VIENNA_pcmGrid,sizeof(grid)) &&
        !memcmp(&observer,&VIENNA_pcmObserver,sizeof(observer)),"numeric failure never injects into live state");
    count=VIENNA_pcmBenchCount;post();req(VIENNA_pcmBenchCount==count,"numeric failure does not silently retry");

    stopped_fixture();PC_fast_profile_configure(NULL,0U);
    VIENNA_pcmBenchRepeat=5U;VIENNA_pcmBenchRequest=3U;count=VIENNA_pcmBenchCount;post();
    req(!VIENNA_pcmBenchRepeat && !VIENNA_pcmBenchRequest && VIENNA_pcmBenchStatus==4U &&
        VIENNA_pcmBenchCount==count,"bad one-shot profiler overriding repeat cancels without numerical call");
    count=VIENNA_pcmBenchCount;post();req(VIENNA_pcmBenchCount==count,"profile failure never resumes repeat");
    printf("repeat_bench_fault_checks=%u PASS; HOST private injection only\n",tests);
    return 0;
}
