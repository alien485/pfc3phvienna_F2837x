"""Build actual runtime/kernel12 HOST tests and one nominal4kHz plant case.

No cleanup, CCS invocation, device operation or protection change. A fresh
output descendant is required; all failed evidence is retained. The physical
model is unchanged. Its modeled fault path is not the complete target HAL.
"""
from pathlib import Path
import argparse,hashlib,json,re,shutil,subprocess,sys

TARGET=Path(__file__).resolve().parent.parent
ROOT=TARGET.parents[3]
EVIDENCE=ROOT/"output/ti_pcmfpc_zcdc_port/integrated_single_fcs"
CLANG=Path("D:/MATLAB2023b/install/toolbox/sldrt/clang/win64/clang.exe")
VCVARS=Path("D:/VisualStudio/Microsoft Visual_Studio2022BuildTools/VC/Auxiliary/Build/vcvars64.bat")
NAMES=["vienna.h","vienna_settings.h","vienna_user_settings.h","vienna_pcmfpc_runtime.c","vienna_pcmfpc_runtime.h",
 "vienna_pcmfpc_fast.c","vienna_pcmfpc_fast.h","vienna_pcmfpc_engineering.h","vienna_pcmfpc_zcdc.c",
 "vienna_pcmfpc_zcdc.h","vienna_pcmfpc_observer.c","vienna_pcmfpc_observer.h","vienna_grid_sync.c",
 "vienna_grid_sync.h","vienna_fcs_mpc.h","tests/core_runtime_stub.h","tests/core_runtime_test.c","tests/ti_closed_loop.c"]
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()

def main():
 sys.stdout.reconfigure(encoding="utf-8")
 ap=argparse.ArgumentParser(description=__doc__)
 ap.add_argument("--output",type=Path,default=EVIDENCE/"validation_pass1")
 ap.add_argument("--clang",type=Path,default=CLANG);ap.add_argument("--vcvars",type=Path,default=VCVARS)
 ap.add_argument("--unit-only",action="store_true")
 a=ap.parse_args();out=a.output.resolve()
 if EVIDENCE.resolve() not in out.parents:raise ValueError("Output path escape")
 if out.exists() and (not out.is_dir() or any(out.iterdir())):raise FileExistsError("Nonempty output; no overwrite/cleanup")
 out.mkdir(parents=True);snapshot=out/"source_snapshot";build=out/"build";build.mkdir()
 pins={n:sha(TARGET/n) for n in NAMES}
 for n in NAMES:
  d=snapshot/n;d.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(TARGET/n,d)
 shutil.copyfile(Path(__file__),snapshot/"tests/validate_integrated_single_fcs.py")
 def run_batch(name,commands):
  batch=build/(name+".cmd");batch.write_text("@echo off\n"+f'call "{a.vcvars.resolve()}" >nul\nif errorlevel 1 exit /b 1\nset "TMP={build}"\nset "TEMP={build}"\n'+"\n".join(c+"\nif errorlevel 1 exit /b 1" for c in commands)+"\n",encoding="ascii")
  p=subprocess.run(["cmd.exe","/d","/c",str(batch)],cwd=snapshot,capture_output=True,text=True)
  (out/(name+".log")).write_text(p.stdout+p.stderr,encoding="utf-8")
  if p.returncode:raise RuntimeError(name+" failed; see retained log")
  return p.stdout
 flags=f'"{a.clang.resolve()}" -std=c11 -O2 -Wall -Wextra -Werror -D_CRT_SECURE_NO_WARNINGS -I"{snapshot}"'
 common=[snapshot/n for n in ["vienna_pcmfpc_zcdc.c","vienna_pcmfpc_fast.c","vienna_grid_sync.c","vienna_pcmfpc_observer.c"]]
 quote=lambda paths:" ".join(f'"{p}"' for p in paths)
 adapter=build/"runtime_adapter.obj";exe=build/"runtime.exe"
 unit_commands=[flags+f' -include "{snapshot/"tests/core_runtime_stub.h"}" -c "{snapshot/"vienna_pcmfpc_runtime.c"}" -o "{adapter}"',
  flags+" "+quote([snapshot/"tests/core_runtime_test.c"]+common+[adapter])+f' -o "{exe}"',f'"{exe}"']
 text=run_batch("runtime",unit_commands);match=re.search(r"runtime_host_checks=(\d+)",text)
 if not match:raise RuntimeError("Missing unit PASS count")
 checks=int(match[1]);plant_result=None
 if not a.unit_only:
  source=(snapshot/"tests/ti_closed_loop.c").read_text(encoding="utf-8")
  for n in ["vienna_pcmfpc_zcdc.h","vienna_pcmfpc_fast.h","vienna_pcmfpc_observer.h","vienna_grid_sync.h","vienna_fcs_mpc.h"]:
   anchor='#include "../'+n+'"'
   if source.count(anchor)!=1:raise ValueError("Plant include anchor: "+n)
   source=source.replace(anchor,'#include "'+(snapshot/n).as_posix()+'"')
  source=source.replace('#include <string.h>','#include <string.h>\n#include "'+(snapshot/"vienna_pcmfpc_engineering.h").as_posix()+'"',1)
  anchor='if(PC_run_fast(&pc,&input,&output)!=PC_OK){m.core_errors++;pending=0;}'
  replacement='''if(PC_run_fast(&pc,&input,&output)!=PC_OK){m.core_errors++;pending=0;}
                    else if(!PC_engineering_diag.valid || output.selected_id<1U || output.selected_id>8U ||
                        !(PC_engineering_diag.soft_pool_mask&(uint16_t)(1U<<(output.selected_id-1U))) ||
                        PC_engineering_diag.first_hard_peak_A>=7.0f || PC_engineering_diag.first_np_peak_V>=50.0f ||
                        PC_engineering_diag.hard_peak_A[output.selected_id-1U]>=7.0f ||
                        PC_engineering_diag.future_peak_A[output.selected_id-1U]>=6.5f ||
                        PC_engineering_diag.np_peak_V[output.selected_id-1U]>=50.0f){
                        fprintf(stderr,"engineering selection contract failed\\n");return 7;
                    }'''
  if source.count(anchor)!=1:raise ValueError("Plant selection anchor")
  source=source.replace(anchor,replacement)
  plant=build/"nominal_plant.c";plant.write_text(source,encoding="utf-8");plant_exe=build/"nominal_plant.exe";prefix=out/"pc_on_nominal"
  plant_commands=[flags+' -DTI_CLOSED_LOOP_FAST=1 -DSIM_CONTROL_STEP_SEC=0.000250 -DSIM_SAMPLE_OFFSET_SEC=0.000125 -DSIM_ISR_OFFSET_SEC=0.000127 '+quote(common+[plant])+f' -o "{plant_exe}"',f'"{plant_exe}" 2 50 0 "{prefix}" 0']
  run_batch("plant",plant_commands)
  metrics=json.loads(prefix.with_suffix(".json").read_text());no_fault=not(metrics["hard_trip"] or metrics["core_errors"] or metrics["observer_errors"])
  plant_result={"completed_without_modeled_fault":no_fault,"diagnostic_mean_within5V_of170":no_fault and abs(metrics["bus_mean_V"]-170)<5,
   "raw_metrics":metrics,"scope":"One nominal case only. Original physical plant has7A/204V, not all target GUI/Trip filters; no full runtime/ISR/hardware claim."}
  if not no_fault:raise RuntimeError("Nominal case failed; evidence retained")
 if any(sha(TARGET/n)!=h or sha(snapshot/n)!=h for n,h in pins.items()):raise RuntimeError("Source changed during test")
 revision=re.search(r"volatile uint16_t VIENNA_pcmRuntimeRevision=(\d+)U;",(snapshot/"vienna_pcmfpc_runtime.c").read_text()).group(1)
 report={"date":"2026-10-28","runtime_revision":int(revision),"kernel_revision":12,"timing_revision":2,"control_Hz":4000,"unit_checks":checks,"unit_status":"PASS",
  "plant":plant_result,"source_sha256":pins,"driver_sha256":sha(Path(__file__)),"native_build":False,"hardware_qualified":False}
 (out/"REPORT.json").write_text(json.dumps(report,indent=2)+"\n",encoding="utf-8")
 print("runtime checks",checks,"plant",plant_result["completed_without_modeled_fault"] if plant_result else "not requested",flush=True)
 return 0

if __name__=="__main__":raise SystemExit(main())
