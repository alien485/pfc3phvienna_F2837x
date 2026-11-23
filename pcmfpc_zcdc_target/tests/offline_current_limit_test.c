/* HOST-only contract tests. No register access or protection retuning.
 * The producer322 fixture is from the unchanged dense nominal simulation.
 * Synthetic masks/tables test reselection only, not physical reachability. */
#include "offline_current_limit.h"
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static unsigned checks;
static void require(int condition,const char *message)
{checks++;if(!condition){fprintf(stderr,"FAIL %s\n",message);exit(1);}}
static void fixture(PC_Config *c,PC_Input *in)
{
    PC_default_config(c);memset(in,0,sizeof(*in));
    c->root_method=PC_ROOT_PIECEWISE;c->first_duration_s=.000250f;
    c->candidate_duration_s=.000500f;c->diagnostic_all_angles=0U;
    in->iabc_A[0]=1.060546875f;in->iabc_A[1]=-.005859375f;in->iabc_A[2]=-1.05908203125f;
    in->eabc_V[0]=79.361328125f;in->eabc_V[1]=-23.331787109375f;in->eabc_V[2]=-56.0849609375f;
    in->up_V=66.24136352539062f;in->low_V=66.4166030883789f;
    in->id_ref_A=5.1366777420043945f;in->theta_rad=.2334575355052948f;
    in->omega_rad_s=314.2455749511719f;
    in->fhat_A_s[0]=26652.5234375f;in->fhat_A_s[1]=1060.657470703125f;
    in->terminal_enable=1U;in->applied_hw_state=0U;
}
static void predictions_preserved(const PC_Output *a,const PC_Output *b)
{
    require(!memcmp(a->gi,b->gi,sizeof(a->gi)) && !memcmp(a->gu,b->gu,sizeof(a->gu)),"gi/gu remain authoritative");
    require(!memcmp(a->idq1_A,b->idq1_A,sizeof(a->idq1_A)) && a->np1_V==b->np1_V,"common endpoint remains authoritative");
    require(!memcmp(a->idq2_A,b->idq2_A,sizeof(a->idq2_A)) && !memcmp(a->np2_V,b->np2_V,sizeof(a->np2_V)),"all candidate endpoints preserved");
    require(!memcmp(&a->first_interval,&b->first_interval,sizeof(a->first_interval)) &&
        !memcmp(a->candidate_interval,b->candidate_interval,sizeof(a->candidate_interval)),"CONTROL unavailable substeps not relabeled as FULL");
}
static void stopped(const PC_Output *out,uint16_t status)
{
    require(out->status==status && !out->valid && !out->active && !out->selected_id &&
        !out->pc_off_id && !out->hw_state,"stop has no valid selected command");
}
static void producer_checks(void)
{
    PC_Config c,saved_c;PC_Input in,saved_in;PC_Output base,out;OCL_Config limit;OCL_Diagnostics d;
    unsigned diag,policy,j;
    fixture(&c,&in);saved_c=c;saved_in=in;OCL_default_config(&limit);
    require(limit.current_limit_A==7.0f && limit.safety_margin_A==0.0f,"concept guard7 with explicit zero unqualified margin");
    for(diag=0U;diag<2U;diag++){
        c.diagnostic_all_angles=(uint16_t)diag;
        memset(&base,0xa5,sizeof(base));require(PC_run_fast(&c,&in,&base)==PC_OK,"producer base succeeds");
        require(base.selected_id==2U && base.current_mask==0x12U,"reproduce original unsafe selection");
        memset(&out,0xa5,sizeof(out));limit.policy=OCL_POLICY_DISABLED;
        limit.current_limit_A=NAN;limit.safety_margin_A=NAN;
        require(OCL_run(&c,&in,&out,&limit,&d)==PC_OK && !memcmp(&base,&out,sizeof(out)),"disabled output byte identical including unused bytes");
        OCL_default_config(&limit);
        for(policy=1U;policy<=2U;policy++){
            limit.policy=(uint16_t)policy;
            require(OCL_run(&c,&in,&out,&limit,&d)==PC_OK,"filtered producer succeeds");
            require(d.feasible_mask==0x05U && d.feasible_count==2U,"producer endpoint-feasible IDs1/3");
            require(out.selected_id==3U && out.hw_state==2U && out.current_mask==4U,"best-feasible ID3 survives original relative budget");
            require(fabsf(out.budget_limit_A-3.1975846f)<.00001f,"delta remains0.02 relative to best feasible");
            require(d.endpoint_peak_A[1]>7.0f && d.endpoint_peak_A[4]>7.0f,"old current set already predicts beyond7");
            require(d.selected_margin_A>0.0f && !d.guard_reason && d.valid,"selected sampled margin recorded");
            require((policy==2U)==(d.delay_full_evaluated!=0U),"FULL evaluation flag reflects actual work");
            predictions_preserved(&base,&out);
        }
        out=base;require(OCL_select_feasible(&c,&in,&out,0xffU)==PC_OK && !memcmp(&base,&out,sizeof(out)),"all-feasible preserves base bytes");
    }
    c=saved_c;require(!memcmp(&in,&saved_in,sizeof(in)),"input preserved by wrapper");
    require(OCL_run(&c,&in,&out,&limit,&d)==PC_OK,"obtain exact boundary values");
    limit.policy=OCL_POLICY_ENDPOINT;limit.current_limit_A=d.first_endpoint_peak_A;
    require(OCL_run(&c,&in,&out,&limit,&d)==OCL_STOP_DELAY,"initial/first endpoint equality rejected");stopped(&out,OCL_STOP_DELAY);
    require(d.delay_violation && !d.valid,"delay stop diagnosed separately");
    limit.current_limit_A=1.4f; /* Synthetic unit bound, not a hardware change. */
    require(OCL_run(&c,&in,&out,&limit,&d)==OCL_STOP_NO_FEASIBLE,"safe delay but no terminal candidate handled");stopped(&out,OCL_STOP_NO_FEASIBLE);
    require(d.no_feasible && !d.feasible_mask && d.endpoint_evaluated_mask==0xffU,"empty feasible set evaluated explicitly");
    OCL_default_config(&limit);limit.policy=OCL_POLICY_ENDPOINT;
    require(OCL_run(&c,&in,&out,&limit,&d)==PC_OK,"boundary reference calculation");
    limit.current_limit_A=d.endpoint_peak_A[2];
    require(OCL_run(&c,&in,&out,&limit,&d)==PC_OK && !(d.feasible_mask&4U),"candidate exactly at bound excluded");
    OCL_default_config(&limit);limit.safety_margin_A=.25f;
    require(OCL_run(&c,&in,&out,&limit,&d)==PC_OK && d.effective_limit_A==6.75f,"explicit model headroom lowers model bound only");
    for(j=0U;j<7U;j++){
        OCL_default_config(&limit);
        if(j==0U)limit.current_limit_A=0.0f;
        if(j==1U)limit.current_limit_A=NAN;
        if(j==2U)limit.current_limit_A=INFINITY;
        if(j==3U)limit.safety_margin_A=-.1f;
        if(j==4U)limit.safety_margin_A=7.0f;
        if(j==5U)limit.safety_margin_A=NAN;
        if(j==6U)limit.policy=3U;
        require(OCL_run(&c,&in,&out,&limit,&d)==OCL_ERR_CONFIG,"invalid bound/margin/policy rejected");stopped(&out,OCL_ERR_CONFIG);
    }
    OCL_default_config(&limit);in.iabc_A[0]=NAN;
    require(OCL_run(&c,&in,&out,&limit,&d)==PC_ERR_INPUT && d.error_source==OCL_SOURCE_BASE,"base failure preserves original status and source");stopped(&out,PC_ERR_INPUT);
}
static void mask_checks(void)
{
    PC_Config c;PC_Input in;PC_Output base,out;unsigned mask,j,n;
    fixture(&c,&in);require(PC_run_fast(&c,&in,&base)==PC_OK,"mask fixture");
    for(mask=1U;mask<=255U;mask++){
        out=base;require(OCL_select_feasible(&c,&in,&out,(uint16_t)mask)==PC_OK,"all nonempty masks have a deterministic intersection");
        require(out.selected_id>=1U && out.selected_id<=8U && (mask&(1U<<(out.selected_id-1U))),"selected ID belongs to supplied feasible mask");
        require(!(out.current_mask&~mask) && !(out.intersection_mask&~out.current_mask),"current/intersection remain subsets");
        require(out.current_count>=1U && out.current_count<=3U && out.intersection_count>=1U && out.intersection_count<=2U,"bounded cardinalities");
        n=0U;for(j=0U;j<8U;j++)if(mask&(1U<<j))n++;
        require(out.midpoint_prefix>=1U && out.midpoint_prefix<=n,"prefix clamped to available candidate count");
        for(j=n;j<8U;j++)require(!out.order_i[j] && !out.order_u[j],"unused filtered orders are unavailable zeros");
        if(n==1U)require(out.current_count==1U && out.midpoint_prefix==1U,"one feasible candidate boundary");
        if(n==2U)require(out.current_count<=2U && out.midpoint_prefix<=2U,"two feasible candidates boundary");
    }
    out=base;require(OCL_select_feasible(&c,&in,&out,0U)==OCL_STOP_NO_FEASIBLE,"explicit empty mask");stopped(&out,OCL_STOP_NO_FEASIBLE);
    out=base;require(OCL_select_feasible(&c,&in,&out,0x100U)==OCL_ERR_CONFIG,"mask cannot contain ninth candidate");
}
static void terminal_checks(void)
{
    PC_Config c;PC_Input in;PC_Output table,out;unsigned j;
    fixture(&c,&in);memset(&table,0,sizeof(table));
    in.id_ref_A=1.0f;in.iq_ref_A=0.0f;
    in.theta_rad=1.57079632679f-in.omega_rad_s*(c.first_duration_s+c.candidate_duration_s);
    table.status=PC_OK;table.valid=1U;table.requested=1U;table.voltage_margin_V=1.0f;
    for(j=0U;j<8U;j++){table.gi[j]=.1f;table.gu[j]=1.0f;table.idq2_A[j][0]=1.0f;table.idq2_A[j][1]=.1f;}
    table.blocked_candidate[0]=1U;table.idq2_A[1][1]=0.0f;
    out=table;require(OCL_select_feasible(&c,&in,&out,3U)==PC_OK && out.active && out.pc_off_id==1U && out.selected_id==2U,"common trigger then strict lower angle can change candidate");
    table.idq2_A[1][1]=.1f;out=table;
    require(OCL_select_feasible(&c,&in,&out,3U)==PC_OK && out.pc_off_id==1U && out.selected_id==1U,"equal angle retains PC-OFF selection");
    table.active=1U;out=table;
    require(OCL_select_feasible(&c,&in,&out,2U)==PC_OK && !out.active && out.pc_off_id==2U && out.selected_id==2U,"new PC-OFF recomputes common blocked trigger");
    table.requested=0U;out=table;
    require(OCL_select_feasible(&c,&in,&out,3U)==PC_OK && !out.active && out.selected_id==out.pc_off_id,"terminal OFF retains filtered PC-OFF");
}
int main(void)
{
    producer_checks();mask_checks();terminal_checks();
    printf("{\"checks\":%u,\"failures\":0,\"scope\":\"HOST offline current-feasibility contracts, not MCU timing or power validation\"}\n",checks);
    return 0;
}
