/* HOST-only differential audit: optimized dense-state root against the
 * unchanged generic lambda root, with independent shared plans. No hardware. */
#include "../vienna_pcmfpc_fast.c"
#include <stdio.h>
#include <stdint.h>
#include <string.h>

static uint32_t random_state=0x6d6f6465U;
static unsigned cases,status_diff,bytes_diff,shared_diff,residual_fail,finite_fail;
static unsigned generic_errors,dense_errors;
static double max_residual;
static FILE *differences;
static double random_unit(void)
{random_state=random_state*1664525U+1013904223U;return (double)random_state/4294967296.0;}

static void check_case(const PC_Real q[3],uint16_t hw,PC_Real c,PC_Real up,
    PC_Real low,const char *family)
{
    PC_Real a[3],b[3],sa[3],sb[3];PF_LambdaPlan plan;
    uint16_t x,y,sx,sy;unsigned r,bad=0;double sum=0,scale,tolerance;
    cases++;
    memset(a,0xa5,sizeof(a));memset(b,0xa5,sizeof(b));
    memset(sa,0xa5,sizeof(sa));memset(sb,0xa5,sizeof(sb));
    x=pf_lambda_root(q,hw,c,up,low,a,0);
    y=pf_lambda_dense_root(q,hw,c,up,low,b,0);
    pf_lambda_plan(q,c,up,low,&plan);
    sx=pf_lambda_root(q,hw,c,up,low,sa,&plan);
    sy=pf_lambda_dense_root(q,hw,c,up,low,sb,&plan);
    status_diff+=(x!=y || sx!=sy);bad|=x!=y || sx!=sy;
    generic_errors+=x!=PC_OK;dense_errors+=y!=PC_OK;
    if(x==PC_OK && y==PC_OK && memcmp(a,b,sizeof(a))){bytes_diff++;bad=1;}
    if(sx==PC_OK && sy==PC_OK && memcmp(sa,sb,sizeof(sa))){bytes_diff++;bad=1;}
    if(x!=sx || y!=sy || (x==PC_OK && memcmp(a,sa,sizeof(a))) ||
       (y==PC_OK && memcmp(b,sb,sizeof(b)))){shared_diff++;bad=1;}
    if(y==PC_OK){
        for(r=0;r<3;r++){
            if(!isfinite(b[r])){finite_fail++;bad=1;}
            sum+=(double)b[r];
        }
        scale=fmax(1.,fabs((double)q[0])+fabs((double)q[1])+fabs((double)q[2])+
                    (double)c*((double)up+low));
        tolerance=32.*FLT_EPSILON*scale;
        if(fabs(sum)>max_residual)max_residual=fabs(sum);
        if(fabs(sum)>tolerance){residual_fail++;bad=1;}
    }
    if(bad)fprintf(differences,
        "%u,%s,%u,%.12g,%.12g,%.12g,%.12g,%.12g,%.12g,%u,%u,%u,%u,%.12g,%.12g,%.12g,%.12g,%.12g,%.12g\n",
        cases,family,hw,(double)q[0],(double)q[1],(double)q[2],(double)c,(double)up,(double)low,
        x,y,sx,sy,(double)a[0],(double)a[1],(double)a[2],(double)b[0],(double)b[1],(double)b[2]);
}

int main(int argc,char **argv)
{
    static const uint16_t hardware[4]={3,5,6,7};
    PC_Real q[3],c,up,low,span,cu,cl,v,values[40];
    unsigned i,j,k,h,r,off,on0,on1,n;int direction;
    if(argc!=2)return 2;
    differences=fopen(argv[1],"w");if(!differences)return 3;
    fprintf(differences,"case,family,hw,q0,q1,q2,c,up,low,generic,dense,generic_shared,dense_shared,generic0,generic1,generic2,dense0,dense1,dense2\n");
    /* Finite balanced and unbalanced stimuli exercise both normal roots and
     * the original endpoint/error contracts. Every difference stays visible. */
    for(i=0;i<40000;i++){
        c=(PC_Real)(.0005+.006*random_unit());up=(PC_Real)(1.+160.*random_unit());
        low=(PC_Real)(1.+160.*random_unit());
        q[0]=(PC_Real)(12.*random_unit()-6.);q[1]=(PC_Real)(12.*random_unit()-6.);
        q[2]=(i&1U)?-q[0]-q[1]:(PC_Real)(12.*random_unit()-6.);
        for(h=0;h<4;h++)check_case(q,hardware[h],c,up,low,"random");
    }
    for(i=0;i<3;i++){
        c=i==0?0.0016666667f:i==1?0.0033333334f:0.00001f;
        up=i==0?86.f:i==1?70.f:110.f;low=i==0?84.f:i==1?100.f:50.f;
        cu=c*up;cl=c*low;span=cu+cl;n=0;
        values[n++]=0.f;values[n++]=-0.f;values[n++]=1e-12f;values[n++]=-1e-12f;
        values[n++]=FLT_MIN;values[n++]=-FLT_MIN;
        values[n++]=cu;values[n++]=-cl;values[n++]=span;values[n++]=-span;
        values[n++]=nextafterf(cu,INFINITY);values[n++]=nextafterf(cu,-INFINITY);
        values[n++]=nextafterf(-cl,INFINITY);values[n++]=nextafterf(-cl,-INFINITY);
        values[n++]=nextafterf(span,INFINITY);values[n++]=nextafterf(span,-INFINITY);
        values[n++]=nextafterf(-span,INFINITY);values[n++]=nextafterf(-span,-INFINITY);
        values[n++]=cu*2.f/3.f;values[n++]=-cl*2.f/3.f;
        values[n++]=nextafterf(cu*2.f/3.f,INFINITY);
        values[n++]=nextafterf(cu*2.f/3.f,-INFINITY);
        values[n++]=nextafterf(-cl*2.f/3.f,INFINITY);
        values[n++]=nextafterf(-cl*2.f/3.f,-INFINITY);
        values[n++]=1.f;values[n++]=-1.f;values[n++]=6.f;values[n++]=-6.f;
        for(h=0;h<4;h++){
            off=hardware[h]==3?2U:hardware[h]==5?1U:0U;
            on0=off==0?1U:0U;on1=3U-off-on0;
            for(j=0;j<n;j++)for(k=0;k<n;k++){
                q[off]=values[j];q[on0]=values[k];q[on1]=-q[off]-q[on0];
                check_case(q,hardware[h],c,up,low,"directed_balanced");
                q[on1]=values[(j+k)%n];
                check_case(q,hardware[h],c,up,low,"directed_unbalanced");
            }
        }
        /* Place the unique OFF event exactly at each bracket endpoint and
         * sweep adjacent representable currents without changing tolerances. */
        for(h=0;h<3;h++){
            off=hardware[h]==3?2U:hardware[h]==5?1U:0U;
            on0=off==0?1U:0U;on1=3U-off-on0;
            for(j=0;j<n;j++)for(direction=-1;direction<=1;direction++){
                v=direction<0?nextafterf(values[j],-INFINITY):direction>0?nextafterf(values[j],INFINITY):values[j];
                q[off]=v;q[on0]=-v*.5f;q[on1]=-q[off]-q[on0];
                check_case(q,hardware[h],c,up,low,"event_ulp");
            }
        }
    }
    /* Preserve same-input finite overflow/underflow/error behavior. */
    for(i=0;i<12;i++){
        c=i==0?FLT_MAX:i==1?FLT_MIN:i==2?nextafterf(0.f,1.f):0.0016666667f;
        up=i==3?FLT_MAX:i==4?FLT_MIN:86.f;low=i==5?FLT_MAX:i==6?FLT_MIN:84.f;
        q[0]=i==7?NAN:i==8?INFINITY:i==9?-INFINITY:i==10?FLT_MAX:i==11?-FLT_MAX:1.f;
        q[1]=-q[0];q[2]=0;
        for(h=0;h<4;h++)check_case(q,hardware[h],c,up,low,"extreme");
    }
    /* Phase permutations/cancellation keep B's phase-order differences
     * observable, including signed zeros at every ON placement. */
    for(i=0;i<1000;i++){
        q[0]=(i&1U)?1e20f:-1e20f;q[1]=-q[0];q[2]=(PC_Real)(random_unit()*1e-6);
        for(r=0;r<3;r++){
            for(h=0;h<4;h++)check_case(q,hardware[h],0.0016666667f,86.f,84.f,"cancellation");
            v=q[0];q[0]=q[1];q[1]=q[2];q[2]=v;
        }
    }
    fclose(differences);
    printf("{\"cases\":%u,\"status_differences\":%u,\"next_current_byte_difference_calls\":%u,\"shared_path_differences\":%u,\"nonfinite_success\":%u,\"residual_failures\":%u,\"generic_error_cases\":%u,\"dense_error_cases\":%u,\"maximum_KCL_residual_A\":%.12g}\n",
        cases,status_diff,bytes_diff,shared_diff,finite_fail,residual_fail,generic_errors,dense_errors,max_residual);
    return status_diff || bytes_diff || shared_diff || finite_fail || residual_fail;
}
