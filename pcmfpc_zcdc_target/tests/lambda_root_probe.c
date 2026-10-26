/* Independent HOST test only. Double bisection implements the ideal model;
 * it does not call either optimized or readable root solver. */
#if LAMBDA_REPLAY_FOCUS
#define main original_strict_replay_main
#include "ti_fast_replay.c"
#undef main
int main(int argc,char **argv)
{
    static unsigned char wanted[50000];
    FILE *inputs,*selection;char line[4096];double values[24];unsigned row=0,id,j,k;
    PC_Config cfg;PC_Input input;
    if(argc!=3)return 2;
    inputs=fopen(argv[1],"r");selection=fopen(argv[2],"r");if(!inputs || !selection)return 3;
    while(fscanf(selection,"%u",&id)==1)if(id<50000)wanted[id]=1;
    while(fgets(line,sizeof(line),inputs)){
        row++;if(row>=50000 || !wanted[row])continue;
        if(!parse_row(line,values))return 4;
        map_input(values,&cfg,&input);
        PC_run(&cfg,&input,&reference);PC_run_fast(&cfg,&input,&optimized);
        printf("{\"input_row\":%u,\"reference_selected\":%u,\"lambda_selected\":%u,\"reference_pcoff\":%u,\"lambda_pcoff\":%u,\"reference_active\":%u,\"lambda_active\":%u,\"reference_mask\":%u,\"lambda_mask\":%u,\"reference_budget_A\":%.12g,\"lambda_budget_A\":%.12g,\"candidate\":[",
            row,reference.selected_id,optimized.selected_id,reference.pc_off_id,optimized.pc_off_id,
            reference.active,optimized.active,reference.intersection_mask,optimized.intersection_mask,
            (double)reference.budget_limit_A,(double)optimized.budget_limit_A);
        for(j=0;j<8;j++){
            if(j)printf(",");
            printf("{\"id\":%u,\"reference_dq_A\":[%.12g,%.12g],\"lambda_dq_A\":[%.12g,%.12g],\"reference_norm_A\":%.12g,\"lambda_norm_A\":%.12g,\"reference_gi_A2\":%.12g,\"lambda_gi_A2\":%.12g,\"reference_gz_rad2\":%.12g,\"lambda_gz_rad2\":%.12g,\"reference_blocked\":%u,\"lambda_blocked\":%u}",
                j+1U,(double)reference.idq2_A[j][0],(double)reference.idq2_A[j][1],(double)optimized.idq2_A[j][0],(double)optimized.idq2_A[j][1],
                hypot(reference.idq2_A[j][0],reference.idq2_A[j][1]),hypot(optimized.idq2_A[j][0],optimized.idq2_A[j][1]),
                (double)reference.gi[j],(double)optimized.gi[j],(double)reference.gz[j],(double)optimized.gz[j],reference.blocked_candidate[j],optimized.blocked_candidate[j]);
        }
        printf("],\"iabc_A\":[");for(k=0;k<3;k++)printf(k?",%.12g":"%.12g",(double)input.iabc_A[k]);
        printf("],\"fhat_A_s\":[%.12g,%.12g],\"theta_rad\":%.12g,\"up_V\":%.12g,\"low_V\":%.12g}\n",
            (double)input.fhat_A_s[0],(double)input.fhat_A_s[1],(double)input.theta_rad,(double)input.up_V,(double)input.low_V);
    }
    fclose(inputs);fclose(selection);return 0;
}
#else
#if LAMBDA_WHITEBOX_ROOT
#include "../vienna_pcmfpc_fast.c"
#else
#include "../vienna_pcmfpc_fast.h"
#endif
#include <math.h>
#include <float.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

static uint32_t state=0x5a17d32fU;
static FILE *root_edges;
static double random_unit(void){state=state*1664525U+1013904223U;return (double)state/4294967296.0;}
static double largest(double a,double b){return a>b?a:b;}
static void to_abc(const double dq[2],double angle,double abc[3])
{
    double a=cos(angle)*dq[0]-sin(angle)*dq[1],b=sin(angle)*dq[0]+cos(angle)*dq[1];
    abc[0]=a;abc[1]=-a*.5+sqrt(3.)*.5*b;abc[2]=-a*.5-sqrt(3.)*.5*b;
}
static void to_dq(const double abc[3],double angle,double dq[2])
{
    double a=(2.*abc[0]-abc[1]-abc[2])/3.,b=(abc[1]-abc[2])/sqrt(3.);
    dq[0]=cos(angle)*a+sin(angle)*b;dq[1]=-sin(angle)*a+cos(angle)*b;
}
static double project(const double q[3],unsigned hw,double cu,double cl,double lambda,double out[3])
{
    double sum=0;unsigned r;
    for(r=0;r<3;r++){
        double z=q[r]+lambda;
        out[r]=(hw&(1U<<r))?z:fmax(z-cu,0.)+fmin(z+cl,0.);sum+=out[r];
    }
    return sum;
}
static void ideal_interval(const PC_Config *cfg,const PC_Real initial[2],PC_Real up0,PC_Real low0,
    unsigned hw,PC_Real theta,PC_Real omega,const PC_Real f[2],PC_Real duration,
    double end[2],double *np_end,unsigned *blocked)
{
    double dq[2]={initial[0],initial[1]},np=(double)low0-up0,dc=(double)up0+low0;
    double h=(double)duration*.5,c=h/cfg->L_H;unsigned step,r,k;
    *blocked=0;
    for(step=0;step<2;step++){
        double up=(dc-np)*.5,low=(dc+np)*.5,old[3],q[3],free_dq[2],next[3];
        double cu=c*up,cl=c*low,lo=-cl,hi=cu,mid,neutral=0;
        to_abc(dq,(double)theta+step*(double)omega*h,old);
        free_dq[0]=dq[0]+h*f[0];free_dq[1]=dq[1]+h*f[1];
        to_abc(free_dq,(double)theta+(step+1U)*(double)omega*h,q);
        /* Monotone double bisection selects the left edge of a zero plateau.
         * Projected currents are unique even when the neutral root is not. */
        if(project(q,hw,cu,cl,lo,next)!=0.){
            for(k=0;k<120;k++){
                mid=(lo+hi)*.5;
                if(project(q,hw,cu,cl,mid,next)>=0.)hi=mid;else lo=mid;
            }
            lo=(lo+hi)*.5;
        }
        project(q,hw,cu,cl,lo,next);
        for(r=0;r<3;r++){
            if(hw&(1U<<r))neutral+=(old[r]+next[r])*.5;
            else if(fabs(next[r])<1e-12)*blocked=1;
        }
        to_dq(next,(double)theta+(step+1U)*(double)omega*h,dq);
        np+=h/cfg->C_half_F*neutral;
    }
    end[0]=dq[0];end[1]=dq[1];*np_end=np;
}
static unsigned interval_equal(const PC_Interval *a,const PC_Interval *b,unsigned full)
{
    unsigned j,k;
    if(a->np_V!=b->np_V || a->blocked!=b->blocked)return 0;
    for(k=0;k<2;k++){
        if(a->idq_A[k]!=b->idq_A[k] || a->u_integral_dq_V_s[k]!=b->u_integral_dq_V_s[k])return 0;
        if(full){
            const PC_Substep *x=&a->substep[k],*y=&b->substep[k];
            if(x->idq_A[0]!=y->idq_A[0] || x->idq_A[1]!=y->idq_A[1] || x->np_V!=y->np_V ||
               x->mu_V!=y->mu_V || x->theta_end_rad!=y->theta_end_rad ||
               x->root_residual_A!=y->root_residual_A || x->root_bracket_width_V!=y->root_bracket_width_V ||
               x->root_iterations!=y->root_iterations || x->blocked!=y->blocked)return 0;
            for(j=0;j<3;j++)if(x->old_abc_A[j]!=y->old_abc_A[j] || x->free_abc_A[j]!=y->free_abc_A[j] ||
                x->next_abc_A[j]!=y->next_abc_A[j] || x->pole_abc_V[j]!=y->pole_abc_V[j])return 0;
        }
    }
    return 1;
}
#if LAMBDA_WHITEBOX_ROOT
static unsigned root_probe(unsigned *calls,unsigned *status_fail,unsigned *residual_fail,
    unsigned *numeric_fail,unsigned *blocked_diff,double *max_error,double *max_residual)
{
    unsigned row,hw,r,k;
    for(row=0;row<10000;row++){
        PC_Real q[3],next[3],c=(PC_Real)(.001+random_unit()*.004);
        PC_Real up=(PC_Real)(50.+random_unit()*75.),low=(PC_Real)(50.+random_unit()*75.);
        double cu=(double)c*up,cl=(double)c*low,scale,tolerance;
        q[0]=(PC_Real)(random_unit()*12.-6.);q[1]=(PC_Real)(random_unit()*12.-6.);q[2]=-q[0]-q[1];
        if(row<400){
            PC_Real span=c*(up+low),a;
            switch(row%10U){
                case 0:a=0;break;case 1:a=1e-12f;break;case 2:a=-1e-12f;break;
                case 3:a=span;break;case 4:a=-span;break;
                case 5:a=nextafterf(span,INFINITY);break;
                case 6:a=nextafterf(span,-INFINITY);break;
                case 7:a=c*up;break;case 8:a=-c*low;break;default:a=span*.25f;break;
            }
            q[0]=a;q[1]=(row&1U)?a:-a;q[2]=-q[0]-q[1];
        }
        scale=fmax(1.,fabs(q[0])+fabs(q[1])+fabs(q[2])+(double)c*(up+low));
        tolerance=32.*FLT_EPSILON*scale;
        for(hw=0;hw<8;hw++){
            double qq[3]={q[0],q[1],q[2]},ideal[3],lo=-cl,hi=cu,lambda,sum=0,error=0;
            unsigned result;
            (*calls)++;
            result=pf_lambda_root(q,(uint16_t)hw,c,up,low,next,0);
            if(result!=PC_OK){(*status_fail)++;continue;}
            if(project(qq,hw,cu,cl,lo,ideal)!=0.){
                for(k=0;k<120;k++){
                    lambda=(lo+hi)*.5;
                    if(project(qq,hw,cu,cl,lambda,ideal)>=0.)hi=lambda;else lo=lambda;
                }
                lo=(lo+hi)*.5;
            }
            project(qq,hw,cu,cl,lo,ideal);
            for(r=0;r<3;r++){
                if(!isfinite(next[r]))(*numeric_fail)++;
                sum+=next[r];error=largest(error,fabs(next[r]-ideal[r]));
                if(!(hw&(1U<<r)) && (fabs(next[r])<1e-12)!=(fabs(ideal[r])<1e-12)){
                    (*blocked_diff)++;
                    if(root_edges)fprintf(root_edges,"%u,%u,%u,%.12g,%.12g,%.12g,%.12g,%.12g,%.12g,%.12g,%.12g,%.12g,%.12g,%.12g,%.12g,%.12g\n",
                        row,hw,r,(double)q[0],(double)q[1],(double)q[2],(double)c,(double)up,(double)low,
                        (double)next[0],(double)next[1],(double)next[2],ideal[0],ideal[1],ideal[2],lo);
                }
            }
            *max_residual=largest(*max_residual,fabs(sum));*max_error=largest(*max_error,error);
            if(fabs(sum)>tolerance)(*residual_fail)++;
            if(error>128.*FLT_EPSILON*scale)(*numeric_fail)++;
        }
    }
    return *status_fail || *residual_fail || *numeric_fail;
}
#endif
int main(int argc,char **argv)
{
    PC_Config cfg;PC_Interval full,summary,control,readable;
    unsigned row,hw,k,status,ref_status,full_diff=0,summary_diff=0,unsafe=0,status_diff=0;
    unsigned cases=0,numeric_bound_fail=0,blocked_diff=0,placeholder_errors=0;
    unsigned root_calls=0,root_status_fail=0,root_residual_fail=0,root_numeric_fail=0,root_blocked_diff=0;
    double max_dq=0,max_np=0,max_scaled_dq=0,max_scaled_np=0;
    double root_max_error=0,root_max_residual=0;
    if(argc>1){root_edges=fopen(argv[1],"w");if(!root_edges)return 2;
        fprintf(root_edges,"case,hw,phase,q0_A,q1_A,q2_A,c,up_V,low_V,next0_A,next1_A,next2_A,ideal0_A,ideal1_A,ideal2_A,ideal_lambda_A\n");}
    PC_default_config(&cfg);cfg.root_method=PC_ROOT_PIECEWISE;
    for(row=0;row<6000;row++){
        PC_Real dq[2],f[2],up,low,theta,omega,duration;
        double scale;
        theta=(PC_Real)(random_unit()*6.283185307179586);omega=(PC_Real)(random_unit()*440.);
        up=(PC_Real)(50.+random_unit()*75.);low=(PC_Real)(50.+random_unit()*75.);
        dq[0]=(PC_Real)(random_unit()*12.-6.);dq[1]=(PC_Real)(random_unit()*4.-2.);
        f[0]=(PC_Real)(random_unit()*70000.-35000.);f[1]=(PC_Real)(random_unit()*70000.-35000.);
        duration=row&1U?20e-6f:10e-6f;
        if(row<400){
            /* Exact flat, repeated-phase events, endpoint thresholds and one
             * float ULP neighbors in current-scaled bus span. */
            float c=(duration*.5f)/cfg.L_H,span=c*(up+low),a;
            unsigned condition=row%10U;
            theta=0;omega=0;f[0]=f[1]=0;
            a=condition==0U?0.f:condition==1U?1e-12f:condition==2U?-1e-12f:
                condition==3U?span:condition==4U?-span:condition==5U?nextafterf(span,INFINITY):
                condition==6U?nextafterf(span,-INFINITY):condition==7U?c*up:condition==8U?-c*low:2.f*span;
            dq[0]=a;dq[1]=condition&1U?0.f:a;
        }
        scale=fmax(1.,fabs(dq[0])+fabs(dq[1])+(duration*.5)*(fabs(f[0])+fabs(f[1]))+
            duration*.5/cfg.L_H*((double)up+low));
        for(hw=0;hw<8;hw++){
            double ideal[2],np,error_dq=0,error_np;unsigned blocked;
            cases++;
            ref_status=PC_predict_interval(&cfg,dq,up,low,(uint16_t)hw,theta,omega,f,duration,&readable);
            status=PC_fast_predict_interval(&cfg,dq,up,low,(uint16_t)hw,theta,omega,f,duration,&full,PC_FAST_FULL_SUBSTEPS);
            if(status!=ref_status)full_diff++;
            else if(status==PC_OK && !interval_equal(&full,&readable,1))full_diff++;
            status=PC_fast_predict_interval(&cfg,dq,up,low,(uint16_t)hw,theta,omega,f,duration,&summary,PC_FAST_SUMMARY_ONLY);
            if(status!=ref_status)summary_diff++;
            else if(status==PC_OK && !interval_equal(&summary,&readable,0))summary_diff++;
            status=PC_fast_predict_interval(&cfg,dq,up,low,(uint16_t)hw,theta,omega,f,duration,&control,PC_FAST_CONTROL_ONLY);
            status_diff+=status!=ref_status;
            if(status!=PC_OK)continue;
            ideal_interval(&cfg,dq,up,low,hw,theta,omega,f,duration,ideal,&np,&blocked);
            for(k=0;k<2;k++){
                if(!isfinite(control.idq_A[k]))unsafe++;
                error_dq=largest(error_dq,fabs(control.idq_A[k]-ideal[k]));
                placeholder_errors+=control.u_integral_dq_V_s[k]!=0.f;
            }
            if(!isfinite(control.np_V))unsafe++;
            error_np=fabs(control.np_V-np);
            max_dq=largest(max_dq,error_dq);max_np=largest(max_np,error_np);
            max_scaled_dq=largest(max_scaled_dq,error_dq/scale);
            max_scaled_np=largest(max_scaled_np,error_np/fmax(1.,(double)up+low));
            /* HOST acceptance bound only. Never used by control/selection:
             * 128 float eps scaled for the two transforms and two projections. */
            numeric_bound_fail+=error_dq>128.*FLT_EPSILON*scale ||
                error_np>128.*FLT_EPSILON*fmax(1.,(double)up+low);
            blocked_diff+=control.blocked!=blocked;
        }
    }
#if LAMBDA_WHITEBOX_ROOT
    root_probe(&root_calls,&root_status_fail,&root_residual_fail,&root_numeric_fail,&root_blocked_diff,&root_max_error,&root_max_residual);
#endif
    printf("{\"cases\":%u,\"full_exact_differences\":%u,\"summary_exact_differences\":%u,\"control_status_differences\":%u,\"unsafe_nonfinite_success\":%u,\"control_numeric_bound_failures\":%u,\"ideal_double_blocked_differences\":%u,\"integral_placeholder_errors\":%u,\"max_dq_error_A\":%.17g,\"max_np_error_V\":%.17g,\"max_scaled_dq_error\":%.17g,\"max_scaled_np_error\":%.17g,\"test_numeric_bound_in_float_eps\":128,",
        cases,full_diff,summary_diff,status_diff,unsafe,numeric_bound_fail,blocked_diff,placeholder_errors,
        max_dq,max_np,max_scaled_dq,max_scaled_np);
    printf("\"whitebox_root\":{\"cases\":%u,\"status_fail\":%u,\"residual_fail\":%u,\"numeric_bound_fail\":%u,\"ideal_double_blocked_differences\":%u,\"max_current_error_A\":%.17g,\"max_KCL_residual_A\":%.17g}}\n",
        root_calls,root_status_fail,root_residual_fail,root_numeric_fail,root_blocked_diff,root_max_error,root_max_residual);
    if(root_edges)fclose(root_edges);
    return full_diff || summary_diff || status_diff || unsafe || numeric_bound_fail || placeholder_errors ||
        root_status_fail || root_residual_fail || root_numeric_fail?1:0;
}
#endif
