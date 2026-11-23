"""Reproduce the 2 kHz HOST module and six existing plant scenarios.

Run from the CCS project directory, for example:
  python tests/validate_control_rate.py
  python tests/validate_control_rate.py --output <replay_validation/pass2>

Optional --clang and --vcvars select the locally installed HOST toolchain.
No cleanup, CCS build, device connection or protection retuning occurs.
A nonzero exit is expected while power/timing qualification is incomplete;
inspect REPORT.json to distinguish numerical failure from pending evidence.
"""
from pathlib import Path
from concurrent.futures import ThreadPoolExecutor,as_completed
import argparse,csv,hashlib,json,re,shutil,subprocess,sys
sys.stdout.reconfigure(encoding="utf-8")
TESTS=Path(__file__).resolve().parent
TARGET=TESTS.parent
ROOT=TARGET.parents[3]
EVIDENCE=ROOT/"output/ti_pcmfpc_zcdc_port/control_rate_2khz/replay_validation"
CLANG=Path("D:/MATLAB2023b/install/toolbox/sldrt/clang/win64/clang.exe")
VCVARS=Path("D:/VisualStudio/Microsoft Visual_Studio2022BuildTools/VC/Auxiliary/Build/vcvars64.bat")
NAMES=["vienna_settings.h","vienna_user_settings.h","vienna_hal.c","vienna_hal.h","vienna.h","main.syscfg",
 "vienna_pcmfpc_zcdc.c","vienna_pcmfpc_zcdc.h","vienna_pcmfpc_fast.c","vienna_pcmfpc_fast.h",
 "vienna_grid_sync.c","vienna_grid_sync.h","vienna_pcmfpc_observer.c","vienna_pcmfpc_observer.h",
 "tests/control_rate_test.c","tests/ti_closed_loop.c","vienna_fcs_mpc.h"]
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()

# Published pass4 source identity, not a claim that this relocated entrypoint
# was itself used to execute those historical plant traces.
MEASURED_PASS4_SHA256 = {
 "vienna_settings.h": "9f2389ea86cc9080cfa8792602e141fd006729740eac0f3bdb9e4e5d2df4cbb4",
 "vienna_user_settings.h": "e054aba03914ec76bfe47c7a45d58c0aaa1f9acfb92a6f0185b68b2e7b658c89",
 "vienna_hal.c": "962f80ac18509c4c516c2ed21eb0a989bfe6f2dc28cd84b43f8a0868ce633767",
 "vienna_hal.h": "1c992b16002d73599c0e7c2d5f78155c241daaa58c028f087218edac0029286e",
 "vienna.h": "b4e823bf038d4b19b04528b8edb17878d7f67c928ca253129135f17976f18216",
 "main.syscfg": "3f0697955da2b241ae674038000f8694417bab45a13ab3ad2287d66f309ddeb6",
 "vienna_pcmfpc_zcdc.c": "ac8ea5244d0a06852ab285b0779f59267f33033cc3357a5e7c8cfc743933ee18",
 "vienna_pcmfpc_zcdc.h": "63bf1263bf376eec06e6de6adba96a2a459b94e42169e4d74f7cf3a774619c42",
 "vienna_pcmfpc_fast.c": "924aa19f11699214ee06d1581f1044e240dd99821e90cf7d48ca1b7546b0557d",
 "vienna_pcmfpc_fast.h": "28e0b215684ef7c65a53a1fc1c79391d1abf7609cebea0ab93fd6ce5fe245aad",
 "vienna_grid_sync.c": "8bd9bcac4466a63c14393f305211121a8e7310c701637d7e57acde0e4e852295",
 "vienna_grid_sync.h": "559ee376c5315dbca86b017a9ca97ba8d20c87d4ef227a0c36ad1827372210c3",
 "vienna_pcmfpc_observer.c": "87dba018d1755865cfc8d14c9f29de957821bff7ece3a06d64bdc98311eadca2",
 "vienna_pcmfpc_observer.h": "12dff9253bf892915b125d46169cd1eb4c0f2d0251352d965894ef9e4bb095fa",
 "tests/control_rate_test.c": "91346d4112dfb4a63f5635762e36582c39f3126c4bccdd19f4b0d42188510d65",
 "tests/ti_closed_loop.c": "bc8bcd5447ac4b952c82e9b4b6dbf68fc1d18ac1b23e7009986944fb6265dcb8",
 "vienna_fcs_mpc.h": "c8af59751093e89e1426a5a800e3c73261fe98a50a04e6b14eba3971e543792c"
}
NATIVE_CONTROL_SOURCES=("vienna_settings.h","vienna_user_settings.h","vienna_hal.c","vienna_hal.h",
 "vienna.c","vienna.h","vienna_main.c","main.syscfg","vienna_pcmfpc_runtime.c","vienna_pcmfpc_runtime.h",
 "vienna_pcmfpc_fast.c","vienna_pcmfpc_fast.h","vienna_pcmfpc_zcdc.c","vienna_pcmfpc_zcdc.h",
 "vienna_pcmfpc_observer.c","vienna_pcmfpc_observer.h","vienna_grid_sync.c","vienna_grid_sync.h",
 ".cproject","makefile.init","f2837xd_flash_cpu1_lnk.cmd")

def native_audit_evidence(explicit=None):
 # A local ignored FLASH/OUT alone is insufficient. A current matching audit
 # must bind source hashes,2kHz compiled timing and the actual OUT hash.
 candidates=([explicit.resolve()] if explicit else [
  TARGET/"validation/control_rate_2khz_build_audit.json",
  TARGET/"validation/CONTROL_RATE_2KHZ_BUILD_AUDIT.json",
  ROOT/"output/ti_pcmfpc_zcdc_port/control_rate_2khz/build/AUDIT.json"])
 reasons=[]
 for audit_path in candidates:
  if not audit_path.is_file():
   reasons.append({"audit":str(audit_path),"reason":"AUDIT absent"});continue
  try:
   audit=json.loads(audit_path.read_text(encoding="utf-8"))
   if not isinstance(audit,dict):raise ValueError("AUDIT must be a JSON object")
   if audit.get("native_exit")!=0:raise ValueError("AUDIT has no successful native exit")
   timing=audit.get("timing",{})
   if not isinstance(timing,dict):raise ValueError("AUDIT timing must be an object")
   if timing.get("control_hz")!=2000 or timing.get("cmpb_ticks_TI_compiled")!=24815:
    raise ValueError("AUDIT does not describe the recorded2kHz/CMP24815 build")
   hashes=audit.get("source_hashes",{})
   mismatches=[n for n in NATIVE_CONTROL_SOURCES if n not in hashes or not (TARGET/n).is_file() or sha(TARGET/n)!=hashes[n]]
   if mismatches:raise ValueError("AUDIT/current source mismatch or missing source hashes: "+", ".join(mismatches))
   out=TARGET/"FLASH/vienna_pcmfpc_zcdc_F2837x.out"
   if not out.is_file():raise ValueError("Matching local native OUT absent; recorded audit is historical evidence only")
   if sha(out)!=audit.get("out_sha256"):raise ValueError("Local native OUT does not match this source-bound AUDIT")
   return "NATIVE_TI_CONSTANT_VERIFIED_REGISTER_PENDING",{
    "audit":str(audit_path),"audit_sha256":sha(audit_path),"OUT":str(out),"OUT_sha256":sha(out),
    "verified_control_sources":list(NATIVE_CONTROL_SOURCES),"compiled_CMPB":24815,
    "scope":"Source-bound recorded native build and matching local artifact only; no new CCS build or hardware/register measurement by this runner"}
  except (OSError,ValueError,TypeError,KeyError) as error:
   reasons.append({"audit":str(audit_path),"reason":str(error)})
 return "PENDING_NATIVE_BUILD",{"reasons":reasons,
  "scope":"Numerical tests continue without native-build qualification. Old local OUT files are never treated as fresh evidence; hardware/register measurements remain pending."}

def build(build_dir,name,sources,extra=""):
 exe=build_dir/(name+".exe")
 command=(f'call "{VCVARS}" >nul && set "TMP={build_dir}" && set "TEMP={build_dir}" && "{CLANG}" '
  '-std=c11 -O2 -Wall -Wextra -Werror -D_CRT_SECURE_NO_WARNINGS '+extra+" "+
  " ".join(f'"{TARGET/n}"' for n in sources)+f' -o "{exe}"')
 batch=build_dir/(name+".cmd");batch.write_text("@echo off\n"+command+"\n",encoding="ascii")
 p=subprocess.run(["cmd.exe","/d","/c",str(batch)],cwd=TARGET,capture_output=True,text=True)
 (build_dir/(name+"_build.log")).write_text(p.stdout+p.stderr,encoding="utf-8")
 if p.returncode:raise RuntimeError(f"HOST build failed; retained {batch}")
 return exe,command

def simulation_case(exe,out,mode,noisy):
 name=["old_fcs","pc_off","pc_on"][mode]+("_L_R_noise" if noisy else "_nominal")
 prefix=out/name
 p=subprocess.run([str(exe),str(mode),"50",str(noisy),str(prefix),"0"],cwd=TARGET,capture_output=True,text=True)
 prefix.with_suffix(".log").write_text(p.stdout+p.stderr,encoding="utf-8")
 base={"case":name,"mode":mode,"load_ohm":50,"sensitivity":noisy,"return_code":p.returncode,
  "raw_stdout":p.stdout.strip(),"raw_stderr":p.stderr.strip()}
 if p.returncode:
  base.update(simulation_completed=False,steady_statistics_eligible=False,
   classification="UNSUPPORTED_HARNESS_TIMING" if p.returncode==2 else "CLOSED_LOOP_NUMERIC_FAILURE")
  match=re.search(r't=([^ ]+) up=([^ ]+) low=([^ ]+) peak_A=([^ ]+) core_errors=(\d+) observer_errors=(\d+) trip=(\d+)',p.stderr)
  if match:base.update(failure_time_s=float(match[1]),upper_bus_V=float(match[2]),lower_bus_V=float(match[3]),current_peak_all_A=float(match[4]),core_errors=int(match[5]),observer_errors=int(match[6]),hard_trip=int(match[7]))
 else:
  data=json.loads(prefix.with_suffix(".json").read_text());base["raw_metrics"]=data
  bad=bool(data["hard_trip"] or data["core_errors"] or data["observer_errors"])
  base.update(simulation_completed=True,steady_statistics_eligible=not bad,
   classification="CLOSED_LOOP_PROTECTION_OR_MODEL_FAILURE" if bad else "COMPLETED_WITHOUT_MODELED_TRIP_OR_MODULE_ERROR")
 csvpath=prefix.with_suffix(".csv")
 if csvpath.exists():
  rows=list(csv.DictReader(csvpath.open(newline="")));base["trace_rows"]=len(rows);base["last_trace_row"]=rows[-1] if rows else None;base["trace_sha256"]=sha(csvpath)
 prefix.with_suffix(".classification.json").write_text(json.dumps(base,indent=2)+"\n",encoding="utf-8")
 print(name+": "+base["classification"],flush=True);return base

def main():
 global CLANG,VCVARS
 ap=argparse.ArgumentParser(description=__doc__,formatter_class=argparse.RawDescriptionHelpFormatter)
 ap.add_argument("--output",type=Path,default=EVIDENCE/"pass1",help="Fresh destination strictly inside the replay_validation output directory")
 ap.add_argument("--clang",type=Path,default=CLANG,help="HOST clang.exe; build commands are saved in REPORT.json and build/*.cmd")
 ap.add_argument("--vcvars",type=Path,default=VCVARS,help="Visual Studio vcvars64.bat for the HOST CRT environment")
 ap.add_argument("--native-audit",type=Path,help="Optional source-bound2kHz native AUDIT.json; absent/stale evidence becomes PENDING_NATIVE_BUILD")
 a=ap.parse_args();out=a.output.resolve();allowed=EVIDENCE.resolve()
 if allowed not in out.parents:raise ValueError("Output path escapes the dedicated replay_validation directory: "+str(out))
 if out.exists() and (not out.is_dir() or any(out.iterdir())):raise FileExistsError("Nonempty output cannot be overwritten; choose another --output path")
 CLANG=a.clang.resolve();VCVARS=a.vcvars.resolve()
 if not CLANG.is_file() or not VCVARS.is_file():raise FileNotFoundError("Specify installed HOST tools with --clang and --vcvars")
 out.mkdir(parents=True,exist_ok=True);work=out/"build";work.mkdir()
 before={n:sha(TARGET/n) for n in NAMES};driver_before=sha(Path(__file__))
 for n in NAMES:
  dest=out/"source_snapshot"/n;dest.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(TARGET/n,dest)
 # Static source audit verifies event directions independently of the timing
 # arithmetic test. It is not a register read or a hardware acquisition proof.
 halc=(TARGET/"vienna_hal.c").read_text(encoding="utf-8");halh=(TARGET/"vienna_hal.h").read_text(encoding="utf-8")
 directions={"SOC_up_CMPB":"EPWM_SOC_TBCTR_U_CMPB" in halc,"ISR_down_CMPC":"EPWM_INT_TBCTR_D_CMPC" in halh}
 common=["vienna_pcmfpc_zcdc.c","vienna_pcmfpc_fast.c","vienna_pcmfpc_observer.c","vienna_grid_sync.c"]
 exe,module_command=build(work,"control_rate_test",common+["tests/control_rate_test.c"])
 checked=subprocess.run([str(exe)],cwd=TARGET,capture_output=True,text=True)
 (out/"modules.log").write_text(checked.stdout+checked.stderr,encoding="utf-8")
 lines=[json.loads(x) for x in checked.stdout.splitlines() if x.startswith("{")]
 assert len(lines)==2,checked.stdout+checked.stderr
 timing,modules=lines
 # Existing unchanged plant uses a0.5us physical grid; the recorded251.85us ISR
 # event maps to252us. Explicitly retain that approximation rather than claim
 # a sub-tick event was simulated. ADC/SOC ordering is unchanged.
 defines="-DTI_CLOSED_LOOP_FAST=1 -DSIM_CONTROL_STEP_SEC=0.000500 -DSIM_SAMPLE_OFFSET_SEC=0.000250 -DSIM_ISR_OFFSET_SEC=0.000252"
 plant,plant_command=build(work,"closed_loop_2khz",common+["tests/ti_closed_loop.c"],defines)
 cases=[]
 with ThreadPoolExecutor(max_workers=3) as pool:
  for future in as_completed([pool.submit(simulation_case,plant,out,mode,noisy) for mode in [0,1,2] for noisy in [0,1]]):cases.append(future.result())
 cases.sort(key=lambda x:(x["mode"],x["sensitivity"]))
 assert before=={n:sha(TARGET/n) for n in NAMES},"Executed source changed during validation"
 assert driver_before==sha(Path(__file__)),"Validation driver changed during execution"
 assert all(sha(out/"source_snapshot"/n)==d for n,d in before.items())
 timing_qualification,native_proof=native_audit_evidence(a.native_audit)
 module_pass=checked.returncode==0 and modules["failures"]==0 and all(directions.values())
 native_offset_matches=timing["ADC_offset_ticks"]==185 and timing["CMPB_CMPC"]==24815
 new_cases=[x for x in cases if x["mode"] in [1,2]]
 closed_pass=all(x["classification"]=="COMPLETED_WITHOUT_MODELED_TRIP_OR_MODULE_ERROR" for x in new_cases)
 result={"date":"2026-10-28","status":"OFFLINE_CONTROL_RATE_NOT_QUALIFIED",
  "module_status":"PASS" if module_pass else "FAIL","closed_loop_screen_status":"PASS_LIMITED_MODEL_SCREEN" if closed_pass else "FAIL_MODELED_CONTROL_OR_PROTECTION",
  "timing_arithmetic":timing,"timing_qualification":{"status":timing_qualification,"host_matches_recorded_185tick_arithmetic":native_offset_matches,"host_offset_ticks":timing["ADC_offset_ticks"],"host_CMPB_CMPC":timing["CMPB_CMPC"],"native_build_proof":native_proof,"interpretation":"Native qualification requires a successful source-bound2kHz AUDIT and a matching local OUT. Without those, only numerical evidence is produced and native status remains pending. No hardware register is read."},"modules":modules,"module_exit":checked.returncode,"HAL_event_source_readonly_audit":directions,
  "simulation_cases":cases,"source_sha256":before,"measured_pass4_source_identity":{n:{"published_sha256":MEASURED_PASS4_SHA256[n],"current_sha256":before[n],"matches":before[n]==MEASURED_PASS4_SHA256[n]} for n in NAMES},"driver_sha256":driver_before,"module_compile_command":module_command,"plant_compile_command":plant_command,
  "preserved_protection_values":{"simulated_instantaneous_current_A":7,"simulated_filtered_total_bus_V":204,"reference_peak_limit_A":5.5,"source":"unchanged ti_closed_loop.c; not component ratings or a new protection setting"},
  "simulation_time_domain":{"control_s":.0005,"sample_effective_s":.00025,"host_formula_SOC_s":.00024815,"host_formula_ISR_s":.00025185,"simulated_ISR_grid_s":.000252,"plant_step_s":.0000005,"expected_initial_delay_s":.00025,"candidate_hold_s":.0005,"ISR_to_ZERO_s":.00024815,"after_write_guard_s":.00024775,"after_write_guard_CPU_cycles_at200MHz":49550},
  "model_limitations":["Assumes all computations finish in time; no target CPU cycles, jitter, nesting or DMA modeled","Plant samples ADC history and models a6.8us first-order sensor chain; not real sensor transfer identification","Unchanged target instrumentation uses EMAVG alpha0.000528 at10kHz; unchanged plant uses1-(1-0.0001056223)^(Ts/20us) once per control sample to approximate the same~189ms time constant. Exact hold/phase/nesting behavior is not reproduced","Harness does not fully latch runtime OST/loops on core errors; any core/observer error invalidates the case, and a later rail collapse is not a real-board trajectory prediction","Only7A instantaneous/204V filtered total-bus checks simulated; original half-bus/difference protection not fully simulated","Two-substep predictor and four-substep reconstruction at500us are coarse models; finite math/PLL lock do not prove tracking or safety","No changed controller/protection thresholds, CCS/hardware operations, commit or deletion by this validator"],
  "interpretation":"A larger computation window alone cannot qualify2kHz direct finite-state control. Actual model failure/Trip is reported as failure; return2 timing refusal is marked unsupported. No failed case receives steady-state approval."}
 (out/"REPORT.json").write_text(json.dumps(result,indent=2)+"\n",encoding="utf-8")
 text=["# Independent2kHz time-domain validation","",result["status"],"",f'Module tests: {result["module_status"]}. Closed-loop screening: {result["closed_loop_screen_status"]}.',"",result["interpretation"],"", "|Case|classification|completed|", "|---|---|---:|"]
 text.extend(f'|{x["case"]}|{x["classification"]}|{x["simulation_completed"]}|' for x in cases)
 text.extend(["", "HOST formula yields185TBCLK offset/CMP24815. Recorded ISR251.85us is approximated by252us on the existing0.5us plant grid. Native status is separately determined from current matching AUDIT/OUT evidence; no hardware register is read.","", "The original plant counts core errors and submits OFF rather than reproduce the full firmware fault latch. Any such error invalidates the screening result. Failed/partial traces and logs are retained.","", "Module finite-output/sequence/oracle checks establish the implemented time-domain contract only. They do not establish real power-stage stability, PWM timing acceptance or permission to release hardware.",""])
 (out/"REPORT.md").write_text("\n".join(text),encoding="utf-8")
 print(result["status"],flush=True)
 print(json.dumps({"native_status":timing_qualification,"module_status":result["module_status"],"closed_loop_status":result["closed_loop_screen_status"],"module_checks":modules["checks"],"module_failures":modules["failures"],"new_control_cases":len(new_cases)}))
 return 1  # Timing hardware qualification remains pending; never auto-release.

if __name__=="__main__":raise SystemExit(main())
