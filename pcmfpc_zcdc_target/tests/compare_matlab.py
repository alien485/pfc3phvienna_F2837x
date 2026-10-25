"""Independent MATLAB CSV replay; neither duplicates nor replaces the oracle.

The original MATLAB function is executed by the parent MATLAB runner. This
runner only maps the same physical input vectors into the compiled C DLL.
Declared report tolerances classify errors, never alter C selection rules.
No binary layout assumption is made about C28x log/char/sizeof conventions.
"""
from pathlib import Path
import ctypes as ct
import csv
import hashlib
import json
import math
import sys

import numpy as np

HERE=Path(__file__).resolve().parent
PROJECT=HERE.parent
WORKSPACE=PROJECT.parents[3]
EVIDENCE=WORKSPACE/'output'/'ti_pcmfpc_zcdc_port'
if len(sys.argv)>1:EVIDENCE=Path(sys.argv[1]).resolve()
X=np.loadtxt(EVIDENCE/'oracle_inputs.csv',delimiter=',',ndmin=2)
Y=np.loadtxt(EVIDENCE/'oracle_outputs.csv',delimiter=',',ndmin=2)
labels=(EVIDENCE/'oracle_labels.csv').read_text(encoding='utf-8-sig').splitlines()
assert X.shape[1]==24 and Y.shape==(len(X),88) and len(labels)==len(X)

GROUPS={'first_dq_A':(11,13),'first_np_V':(13,14),'gi_A2':(14,22),
        'gu_V2':(22,30),'gz_rad2':(30,38),'candidate_dq_A':(38,54),
        'candidate_np_V':(54,62)}
DISCRETE={'selected_id':0,'pc_off_id':1,'hw_state':2,'valid':3,'requested':4,
          'active':5,'current_count':6,'intersection_count':7,'prefix':8,
          'intersection_mask':9,'current_mask':10}
report={'input_rows':len(X),'input_sha256':hashlib.sha256((EVIDENCE/'oracle_inputs.csv').read_bytes()).hexdigest(),
        'output_sha256':hashlib.sha256((EVIDENCE/'oracle_outputs.csv').read_bytes()).hexdigest(),
        'reference':'MATLAB original mode7; explicit interval test copy checked against original at equal durations',
        'scope':'open-loop same-state numerical replay, not closed-loop or TI execution',
        'runs':{}}

for precision in ['double','float']:
    dll=ct.CDLL(str(HERE/f'core_oracle_{precision}.dll'))
    fn=dll.PC_bridge
    fn.argtypes=[ct.POINTER(ct.c_double),ct.c_uint,ct.POINTER(ct.c_double)]
    fn.restype=ct.c_int
    variants=[(0,'bisection32',False),(1,'piecewise',False)]
    if precision=='float':variants += [(0,'bisection32_wrapped_angle_input',True),(1,'piecewise_wrapped_angle_input',True)]
    for root,name,wrap_angle in variants:
        key=f'{precision}_{name}'
        result=np.zeros_like(Y);status=[]
        for n,row in enumerate(X):
            physical_input=list(map(float,row))
            if wrap_angle:physical_input[10]=math.remainder(physical_input[10],2*math.pi)
            xin=(ct.c_double*24)(*physical_input);out=(ct.c_double*88)()
            status.append(fn(xin,root,out));result[n]=out[:]
        errors=np.abs(result-Y)
        metrics={}
        for group,(lo,hi) in GROUPS.items():
            metrics[group]={'max_abs':float(errors[:,lo:hi].max()),'rms':float(np.sqrt(np.mean(errors[:,lo:hi]**2)))}
        discrete={k:int(np.count_nonzero(result[:,c]!=Y[:,c])) for k,c in DISCRETE.items()}
        differing=np.where(np.any(result[:,:11]!=Y[:,:11],axis=1))[0]
        selected=np.where(result[:,0]!=Y[:,0])[0]
        order_i=np.where(np.any(result[:,62:70]!=Y[:,62:70],axis=1))[0]
        order_u=np.where(np.any(result[:,70:78]!=Y[:,70:78],axis=1))[0]
        # Fixed numeric report envelopes: far smaller than 0.02 A selection
        # tolerance, but explicitly NOT guarantees of matching near-tie IDs.
        tolerance={'candidate_dq_A':1e-9,'candidate_np_V':1e-9,'gi_A2':1e-8,'gu_V2':1e-7} if precision=='double' else {
            'candidate_dq_A':2e-5 if wrap_angle else 5e-4,
            'candidate_np_V':5e-5,'gi_A2':1e-3,'gu_V2':1e-3}
        envelopes={k:metrics[k]['max_abs']<=v for k,v in tolerance.items()}
        events=[]
        for n,label in enumerate(labels):
            if 'terminal_change' in label:
                events.append({'row_1based':n+1,'label':label,'status':status[n],
                    'reference_ids':[int(Y[n,1]),int(Y[n,0])],
                    'c_ids':[int(result[n,1]),int(result[n,0])],
                    'reference_active':int(Y[n,5]),'c_active':int(result[n,5]),
                    'reference_selected_gz':float(Y[n,87]),'c_selected_gz':float(result[n,87]),
                    'candidate_gz_reference':Y[n,30:38].tolist(),'candidate_gz_c':result[n,30:38].tolist()})
        subset={}
        for label in sorted(set(labels)):
            ids=np.array([i for i,x in enumerate(labels) if x==label])
            subset[label]={'n':int(len(ids)),'selected_different':int(np.count_nonzero(result[ids,0]!=Y[ids,0])),
                'pcoff_different':int(np.count_nonzero(result[ids,1]!=Y[ids,1])),
                'active_different':int(np.count_nonzero(result[ids,5]!=Y[ids,5])),
                'max_candidate_dq_A':float(errors[ids,38:54].max())}
        report['runs'][key]={'angle_input':'theta normalized modulo 2*pi in double BEFORE float conversion; models the bounded PLL phase contract' if wrap_angle else 'original oracle input, including unwrapped theta',
            'status_nonzero_rows':[i+1 for i,x in enumerate(status) if x],
            'numeric_errors':metrics,'discrete_differences':discrete,
            'order_i_different_rows':len(order_i),'order_u_different_rows':len(order_u),
            'selected_different_rows_1based':(selected+1).tolist(),
            'report_envelopes':tolerance,'within_report_envelopes':envelopes,
            'terminal_events':events,'by_label':subset}
        np.savetxt(EVIDENCE/f'c_oracle_{key}.csv',result,delimiter=',',fmt='%.17g')
        with (EVIDENCE/f'c_oracle_diff_{key}.csv').open('w',newline='',encoding='utf-8') as f:
            wr=csv.writer(f);wr.writerow(['row_1based','label','status','selected_ref','selected_c','pcoff_ref','pcoff_c',
                'active_ref','active_c','max_dq_error_A','max_gi_error_A2','max_gu_error_V2','max_gz_error_rad2'])
            for n in differing:wr.writerow([n+1,labels[n],status[n],int(Y[n,0]),int(result[n,0]),int(Y[n,1]),int(result[n,1]),
                int(Y[n,5]),int(result[n,5]),float(errors[n,38:54].max()),float(errors[n,14:22].max()),
                float(errors[n,22:30].max()),float(errors[n,30:38].max())])

(EVIDENCE/'c_matlab_comparison.json').write_text(json.dumps(report,indent=2,ensure_ascii=False),encoding='utf-8')
print(json.dumps({k:{'errors':v['numeric_errors'],'discrete':v['discrete_differences'],
    'statuses':len(v['status_nonzero_rows']),'events':v['terminal_events']} for k,v in report['runs'].items()},indent=2))
