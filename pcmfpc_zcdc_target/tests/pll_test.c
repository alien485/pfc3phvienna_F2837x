#include "../vienna_grid_sync.h"
#include <assert.h>
#include <math.h>
#include <stdio.h>

#define PI_D 3.14159265358979323846
static double wrap_error(double x)
{
    while(x>PI_D)x-=2.0*PI_D;
    while(x<-PI_D)x+=2.0*PI_D;
    return x;
}
static void voltage(double theta,float amplitude,int reverse,float abc[3])
{
    abc[0]=amplitude*(float)cos(theta);
    abc[1]=amplitude*(float)cos(theta+(reverse?1.0:-1.0)*2.0*PI_D/3.0);
    abc[2]=amplitude*(float)cos(theta+(reverse?-1.0:1.0)*2.0*PI_D/3.0);
}
int main(void)
{
    VG_Config cfg;VG_State s;
    float abc[3],neg[3];double errSum=0.0,maxError=0.0,theta,err;
    unsigned k,locked=0,frequencyFault=0;
    assert(VG_configure(&cfg,20e-6f,50.0f,20.0f));VG_reset(&s);
    for(k=0;k<50000;k++){
        theta=0.7+2.0*PI_D*50.0*(double)k*20e-6;
        voltage(theta,81.65f,0,abc);
        assert(VG_run(&cfg,&s,abc));
        if(k>10000){err=wrap_error((double)s.theta_rad-theta);
            errSum+=err*err;if(fabs(err)>maxError)maxError=fabs(err);locked+=s.locked;
        }
    }
    assert(s.locked);assert(locked>39000);
    assert(s.ed_V>81.0f && fabsf(s.eq_V)<0.02f);
    assert(sqrt(errSum/39999.0)<0.0003);
    printf("balanced_50Hz_phase_rms_rad=%.9g max_rad=%.9g final_hz=%.9g\n",
           sqrt(errSum/39999.0),maxError,s.frequency_hz);
    VG_reset(&s);errSum=0.0;locked=0;
    for(k=0;k<50000;k++){
        theta=0.3+2.0*PI_D*55.0*(double)k*20e-6;
        voltage(theta,81.65f,0,abc);voltage(theta,2.45f,1,neg);
        abc[0]+=neg[0]+0.05f*(float)sin(k*0.17);
        abc[1]+=neg[1]+0.05f*(float)sin(k*0.37);
        abc[2]+=neg[2]+0.05f*(float)cos(k*0.23);
        /* Actual bipolar ADC single-conversion step is 454/2048 V.
         * Four-sample averaging can produce finer increments, so this
         * single-step quantizer is a conservative numerical test. */
        abc[0]=roundf(abc[0]/(454.0f/2048.0f))*(454.0f/2048.0f);
        abc[1]=roundf(abc[1]/(454.0f/2048.0f))*(454.0f/2048.0f);
        abc[2]=roundf(abc[2]/(454.0f/2048.0f))*(454.0f/2048.0f);
        (void)VG_run(&cfg,&s,abc);
        if(k>10000){err=wrap_error((double)s.theta_rad-theta);errSum+=err*err;locked+=s.locked;}
    }
    assert(sqrt(errSum/39999.0)<0.02);assert(locked>35000);
    printf("55Hz_3pct_negative_sequence_noise_ADC_quantization_phase_rms_rad=%.9g locked_fraction=%.6g\n",
           sqrt(errSum/39999.0),(double)locked/39999.0);
    VG_reset(&s);
    for(k=0;k<1000;k++){
        voltage(2.0*PI_D*50.0*k*20e-6,81.65f,1,abc);(void)VG_run(&cfg,&s,abc);
    }
    assert(s.faults&VG_FAULT_REVERSE_SEQUENCE);assert(!s.locked);
    abc[0]=abc[1]=abc[2]=0.0f;
    assert(!VG_run(&cfg,&s,abc));assert(s.faults&VG_FAULT_LOW_VOLTAGE);assert(!s.initialized);
    VG_reset(&s);locked=0;
    for(k=0;k<30000;k++){
        voltage(2.0*PI_D*80.0*k*20e-6,81.65f,0,abc);(void)VG_run(&cfg,&s,abc);
        frequencyFault+=(s.faults&VG_FAULT_FREQUENCY)!=0;locked+=s.locked;
    }
    assert(frequencyFault>100);assert(locked==0);
    abc[0]=NAN;assert(!VG_run(&cfg,&s,abc));assert(s.faults==VG_FAULT_INVALID);
    printf("reverse_sequence_brownout_out_of_band_invalid_reset=PASS frequency_fault_samples=%u\n",frequencyFault);
    return 0;
}
