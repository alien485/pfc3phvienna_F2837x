"""Read the independent MATLAB trace and compare all 18 C substeps per row.
No numerical tolerance is inserted into the controller. Nonunique common-mode
roots on flat blocking intervals are reported separately from current errors.
"""
from pathlib import Path
import ctypes as ct
import json
import math
import sys
import numpy as np

HERE=Path(__file__).resolve().parent
OUT=Path(sys.argv[1]).resolve() if len(sys.argv)>1 else HERE.parent.parents[3]/'output'/'ti_pcmfpc_zcdc_port'
X=np.loadtxt(OUT/'oracle_inputs.csv',delimiter=',',ndmin=2)
Y=np.loadtxt(OUT/'oracle_substeps.csv',delimiter=',',ndmin=2).reshape((-1,18,19))
labels=(OUT/'oracle_labels.csv').read_text(encoding='utf-8-sig').splitlines()
assert X.shape==(len(Y),24) and len(labels)==len(Y)
groups={'old_abc_A':(0,3),'free_abc_A':(3,6),'next_abc_A':(6,9),
        'pole_abc_V':(9,12),'mu_V':(12,13),'np_before_V':(13,14),
        'theta_end_rad':(14,15),'up_before_V':(15,16),'low_before_V':(16,17),
        'reserved_zero':(17,19)}
assert np.isfinite(X).all() and np.isfinite(Y).all(), 'Oracle contains nonfinite fields'
report={'samples':len(X),'substeps_per_sample':18,'scalar_fields_per_substep':19,
        'total_substeps_per_variant':int(len(X)*18),'runs':{},
        'limitations':'Open-loop numeric trace only. Flat all-OFF projection can have multiple mu roots; pole common mode can differ while alpha/beta/current do not.'}

def ab(p):
    return np.stack(((2*p[...,0]-p[...,1]-p[...,2])/3,(p[...,1]-p[...,2])/math.sqrt(3)),axis=-1)

for precision in ['double','float']:
    dll=ct.CDLL(str(HERE/f'core_oracle_{precision}.dll'))
    fn=dll.PC_trace_bridge
    fn.argtypes=[ct.POINTER(ct.c_double),ct.c_uint,ct.POINTER(ct.c_double)]
    fn.restype=ct.c_int
    variants=[(0,'bisection32',False),(1,'piecewise',False)]
    if precision=='float':variants += [(0,'bisection32_wrapped_angle_input',True),(1,'piecewise_wrapped_angle_input',True)]
    for root,name,wrap in variants:
        key=f'{precision}_{name}';Z=np.zeros_like(Y);status=[]
        for n,row in enumerate(X):
            x=list(map(float,row))
            if wrap:x[10]=math.remainder(x[10],2*math.pi)
            buf=(ct.c_double*342)();status.append(fn((ct.c_double*24)(*x),root,buf))
            Z[n]=np.asarray(buf[:]).reshape(18,19)
        assert np.isfinite(Z).all(), f'{key}: C trace contains nonfinite fields'
        D=np.abs(Z-Y)
        if wrap:D[...,14]=np.abs((Z[...,14]-Y[...,14]+math.pi)%(2*math.pi)-math.pi)
        metrics={}
        for group,(lo,hi) in groups.items():
            q=D[...,lo:hi];idx=np.unravel_index(int(q.argmax()),q.shape)
            metrics[group]={'max_abs':float(q.max()),'rms':float(np.sqrt(np.mean(q*q))),
                'worst_row_1based':int(idx[0]+1),'worst_substep_1based':int(idx[1]+1),
                'label':labels[idx[0]]}
        P=np.abs(ab(Z[...,9:12])-ab(Y[...,9:12]))
        # Common-mode root is not unique only when every phase is OFF and
        # the three projected currents are all blocked. A current-near-zero
        # report threshold is diagnostic only; the runtime remains 1e-12 A.
        hw=np.zeros((len(X),18),dtype=int)
        hw[:,0:2]=X[:,14,None].astype(int)
        for j,gate in enumerate([0,4,2,6,1,5,3,7]):hw[:,2+2*j:4+2*j]=gate
        flat=(hw==0)&(np.max(np.abs(Z[...,6:9]),axis=-1)<1e-8)&(np.max(np.abs(Y[...,6:9]),axis=-1)<1e-8)
        nonflat_mu=D[...,12][~flat]
        result={'status_nonzero_rows':[i+1 for i,s in enumerate(status) if s],
            'angle_error_circular':wrap,'field_errors':metrics,
            'pole_alpha_beta_max_abs_V':float(P.max()),
            'KCL_max_abs_A':float(np.abs(Z[...,6:9].sum(axis=-1)).max()),
            'flat_all_off_substeps':int(flat.sum()),
            'mu_max_abs_V_excluding_flat':float(nonflat_mu.max()) if len(nonflat_mu) else 0,
            'nonunique_mu_changed_substeps':int(np.count_nonzero(flat&(D[...,12]>1e-8))),
            'by_label':{}}
        for label in sorted(set(labels)):
            rows=np.array([i for i,l in enumerate(labels) if l==label])
            result['by_label'][label]={'rows':len(rows),'old_current_max_A':float(D[rows,:,0:3].max()),
                'free_current_max_A':float(D[rows,:,3:6].max()),'next_current_max_A':float(D[rows,:,6:9].max()),
                'midpoint_max_V':float(D[rows,:,13].max()),'pole_ab_max_V':float(P[rows].max())}
        report['runs'][key]=result
        # Compact binary numeric artifact; metadata/CSV oracle specify field
        # layout. This NPZ is host evidence, never used as C28x binary logs.
        np.savez_compressed(OUT/f'c_substeps_{key}.npz',trace=Z,status=np.asarray(status))

(OUT/'substep_comparison.json').write_text(json.dumps(report,indent=2,ensure_ascii=False),encoding='utf-8')
print(json.dumps({k:{'statuses':len(v['status_nonzero_rows']),
    'next_current_A':v['field_errors']['next_abc_A']['max_abs'],
    'midpoint_V':v['field_errors']['np_before_V']['max_abs'],
    'pole_ab_V':v['pole_alpha_beta_max_abs_V'],'mu_ex_flat_V':v['mu_max_abs_V_excluding_flat'],
    'flat_mu_differences':v['nonunique_mu_changed_substeps']} for k,v in report['runs'].items()},indent=2))
