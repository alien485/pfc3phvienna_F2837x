#include "../vienna_pcmfpc_zcdc.h"
#include <stddef.h>

#ifdef _WIN32
#define PC_EXPORT __declspec(dllexport)
#else
#define PC_EXPORT
#endif

/* Stable host-only interchange: double CSV values, fixed 24 -> 88 mapping.
   This is not a C28x binary log format; C28x char/word sizes are unrelated. */
PC_EXPORT int PC_bridge(const double x[24],unsigned int root_method,double y[88])
{
    PC_Config c;PC_Input in;static PC_Output out;
    unsigned int j,k,pos=0;
    PC_default_config(&c);
    for(j=0;j<3;j++){in.iabc_A[j]=(PC_Real)x[j];in.eabc_V[j]=(PC_Real)x[j+3];}
    in.up_V=(PC_Real)x[6];in.low_V=(PC_Real)x[7];
    in.id_ref_A=(PC_Real)x[8];in.iq_ref_A=(PC_Real)x[9];
    in.theta_rad=(PC_Real)x[10];in.omega_rad_s=(PC_Real)x[11];
    in.fhat_A_s[0]=(PC_Real)x[12];in.fhat_A_s[1]=(PC_Real)x[13];
    in.applied_hw_state=(uint16_t)x[14];in.zcdc_enable=(uint16_t)x[15];in.terminal_enable=(uint16_t)x[16];
    c.first_duration_s=(PC_Real)x[17];c.candidate_duration_s=(PC_Real)x[18];
    c.L_H=(PC_Real)x[19];c.R_ohm=(PC_Real)x[20];c.C_half_F=(PC_Real)x[21];
    c.delta_i_A=(PC_Real)x[22];c.zero_window_rad=(PC_Real)x[23];
    c.root_method=(uint16_t)root_method;c.diagnostic_all_angles=1U;
    k=PC_run(&c,&in,&out);
    y[pos++]=out.selected_id;y[pos++]=out.pc_off_id;y[pos++]=out.hw_state;
    y[pos++]=out.valid;y[pos++]=out.requested;y[pos++]=out.active;
    y[pos++]=out.current_count;y[pos++]=out.intersection_count;y[pos++]=out.midpoint_prefix;
    y[pos++]=out.intersection_mask;y[pos++]=out.current_mask;
    y[pos++]=(double)out.idq1_A[0];y[pos++]=(double)out.idq1_A[1];y[pos++]=(double)out.np1_V;
    for(j=0;j<8;j++)y[pos++]=(double)out.gi[j];
    for(j=0;j<8;j++)y[pos++]=(double)out.gu[j];
    for(j=0;j<8;j++)y[pos++]=(double)out.gz[j];
    for(j=0;j<8;j++){y[pos++]=(double)out.idq2_A[j][0];y[pos++]=(double)out.idq2_A[j][1];}
    for(j=0;j<8;j++)y[pos++]=(double)out.np2_V[j];
    for(j=0;j<8;j++)y[pos++]=out.order_i[j];
    for(j=0;j<8;j++)y[pos++]=out.order_u[j];
    for(j=0;j<10;j++)y[pos++]=(double)out.zcdc_diag[j];
    return pos==88U?(int)k:-1;
}

/* 18 substeps x 19 fields in instrumented MATLAB trace order. */
PC_EXPORT int PC_trace_bridge(const double x[24],unsigned int root_method,double y[342])
{
    PC_Config c;PC_Input in;static PC_Output out;
    unsigned int j,k,s,r,pos=0;
    PC_default_config(&c);
    for(j=0;j<3;j++){in.iabc_A[j]=(PC_Real)x[j];in.eabc_V[j]=(PC_Real)x[j+3];}
    in.up_V=(PC_Real)x[6];in.low_V=(PC_Real)x[7];in.id_ref_A=(PC_Real)x[8];in.iq_ref_A=(PC_Real)x[9];
    in.theta_rad=(PC_Real)x[10];in.omega_rad_s=(PC_Real)x[11];in.fhat_A_s[0]=(PC_Real)x[12];in.fhat_A_s[1]=(PC_Real)x[13];
    in.applied_hw_state=(uint16_t)x[14];in.zcdc_enable=(uint16_t)x[15];in.terminal_enable=(uint16_t)x[16];
    c.first_duration_s=(PC_Real)x[17];c.candidate_duration_s=(PC_Real)x[18];
    c.L_H=(PC_Real)x[19];c.R_ohm=(PC_Real)x[20];c.C_half_F=(PC_Real)x[21];
    c.delta_i_A=(PC_Real)x[22];c.zero_window_rad=(PC_Real)x[23];c.root_method=(uint16_t)root_method;c.diagnostic_all_angles=1U;
    k=PC_run(&c,&in,&out);
    for(j=0;j<9;j++) {
        const PC_Interval *interval=j==0U?&out.first_interval:&out.candidate_interval[j-1U];
        PC_Real n=j==0U?in.low_V-in.up_V:out.np1_V,dc=in.up_V+in.low_V;
        for(s=0;s<2;s++) {
            const PC_Substep *t=&interval->substep[s];
            for(r=0;r<3;r++)y[pos++]=(double)t->old_abc_A[r];
            for(r=0;r<3;r++)y[pos++]=(double)t->free_abc_A[r];
            for(r=0;r<3;r++)y[pos++]=(double)t->next_abc_A[r];
            for(r=0;r<3;r++)y[pos++]=(double)t->pole_abc_V[r];
            y[pos++]=(double)t->mu_V;y[pos++]=(double)n;y[pos++]=(double)t->theta_end_rad;
            y[pos++]=(double)((dc-n)/(PC_Real)2);y[pos++]=(double)((dc+n)/(PC_Real)2);
            y[pos++]=0.0;y[pos++]=0.0;n=t->np_V;
        }
    }
    return pos==342U?(int)k:-1;
}
