"""Prepare independent compatibility checks; never edits authority files."""
from pathlib import Path
import argparse
import difflib
import hashlib
import json
import re
import xml.etree.ElementTree as ET
import zipfile

TARGET = Path(__file__).resolve().parents[1]
ROOT = TARGET.parents[3]
OUT = ROOT / "output/ti_pcmfpc_zcdc_port/rt_optimization/reference_compatibility"
ADAPTERS = TARGET / "tests/observer_build/reference_compatibility"
OLD = ROOT / "tmp/algorithm_diag_assignment_fix/a2e13a284c8b45b2b0f97249d1c07bb3_before.m"
NEW = ROOT / "pcmfpc_zcdc/vienna_pcmfpc_zcdc_complete.m"
HISTORICAL = "a77ea4dea3267d82d444efbf4a7437a39e15b7c48928931f40d6476e67503f4a"


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def normalize(text):
    return text.replace("\r\n", "\n").replace("\r", "\n").lstrip("\ufeff")


def outside(text):
    begin = text.index("diagOut=[n;mode;chosen;gi(chosen);gu(chosen)];")
    begin = text.index("\n", begin) + 1
    end = text.index("zcdcDiag=[double(valid);double(requested);double(active);mode;", begin)
    return text[:begin] + text[end:], text[begin:end]


def adapt(text, name):
    text = text.replace("vienna_pcmfpc_zcdc_complete(", name + "(", 1)
    changes = [
        ("Ts=p(1);L=p(2);Vdc=Uup+Ulow;", "Ts=p(1);L=p(2);Vdc=Uup+Ulow;\nTfirst=Ts;Tcand=Ts;\nif numel(p)>=19,Tfirst=p(18);Tcand=p(19);end\npFirst=p;pFirst(1)=Tfirst;pCand=p;pCand(1)=Tcand;"),
        ("[i1,np1,firstBlocked]=predict_blocked(idq,Uup,Ulow,Sactive,theta,omega,p,fHat);", "[i1,np1,firstBlocked]=predict_blocked(idq,Uup,Ulow,Sactive,theta,omega,pFirst,fHat);"),
        ("theta1=theta+omega*Ts;", "theta1=theta+omega*Tfirst;"),
        ("[ip,vp,blockedCandidates(j)]=predict_blocked(i1,up1,low1,gate,theta1,omega,p,fHat);", "[ip,vp,blockedCandidates(j)]=predict_blocked(i1,up1,low1,gate,theta1,omega,pCand,fHat);"),
        ("theta2=theta1+omega*Ts;", "theta2=theta1+omega*Tcand;"),
    ]
    for before, after in changes:
        assert before in text, before
        text = text.replace(before, after)
    return text


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--finalize", action="store_true")
    args = parser.parse_args()
    OUT.mkdir(parents=True, exist_ok=True)
    ADAPTERS.mkdir(parents=True, exist_ok=True)
    prepared_report = json.loads((OUT / "REPORT.json").read_text()) if args.finalize else None
    assert sha(OLD) == HISTORICAL
    old, new = normalize(OLD.read_text(encoding="utf-8")), normalize(NEW.read_text(encoding="utf-8"))
    old_outside, old_diag = outside(old)
    new_outside, new_diag = outside(new)
    assert old_outside == new_outside, "Changes outside final algorithmDiag block"
    (OUT / "old_new_controller.diff").write_text("".join(difflib.unified_diff(old.splitlines(True), new.splitlines(True), fromfile=str(OLD), tofile=str(NEW))), encoding="utf-8")
    (OUT / "old_diagnostic_block.txt").write_text(old_diag, encoding="utf-8")
    (OUT / "new_diagnostic_block.txt").write_text(new_diag, encoding="utf-8")
    for label, text in (("old", old), ("new", new)):
        name = f"compat_{label}_original"
        (ADAPTERS / (name + ".m")).write_text(text.replace("vienna_pcmfpc_zcdc_complete(", name + "(", 1), encoding="utf-8")
        name = f"compat_{label}_adapter"
        (ADAPTERS / (name + ".m")).write_text(adapt(text, name), encoding="utf-8")
    model = ROOT / "VIENNA_PCMFPC_ZCDC.slx"
    matches = []
    with zipfile.ZipFile(model) as package:
        for member in package.namelist():
            if not member.endswith(".xml") or "stateflow" not in member:
                continue
            xml = ET.fromstring(package.read(member))
            for node in xml.iter("P"):
                if node.get("Name") == "script" and node.text and "diagOut=[n;mode;chosen;gi(chosen);gu(chosen)]" in node.text:
                    script = normalize(node.text)
                    # Only the public function name may differ in an embedded chart.
                    canon = lambda s: re.sub(r"\bvienna_pcmfpc_zcdc_complete\(", "PUBLIC_NAME(", s, count=1)
                    matches.append({"member": member, "script_matches_current_m": canon(script) == canon(new),
                                    "normalized_script_sha256": hashlib.sha256(script.encode()).hexdigest()})
    assert len(matches) == 1 and matches[0]["script_matches_current_m"]
    references = ["pcmfpc_zcdc/vienna_pcmfpc_zcdc_complete.m", "VIENNA_PCMFPC_ZCDC.slx", "output/paper_aligned_validation/paper_aligned_delivery_20261025.json"]
    report = {"status": "PENDING_MATLAB", "historical_controller_sha256": HISTORICAL,
              "historical_controller": str(OLD), "control_source_outside_diagnostics_identical": True,
              "diagnostic_change_scope": "Only text after final diagOut assignment and before first zcdcDiag assignment; assertions preserved.",
              "outside_control_text_sha256": hashlib.sha256(old_outside.encode()).hexdigest(),
              "current_reference_hashes": {path: sha(ROOT / path) for path in references},
              "slx_embedded_controller": matches, "model_rerun": False,
              "oracle_input_sha256": sha(ROOT / "output/ti_pcmfpc_zcdc_port/oracle_inputs.csv"),
              "authority_files_modified_by_check": False,
              "adapter_paths": str(ADAPTERS), "scope": "Controller pure-function compatibility; model wiring, InitFcn and formal performance not rerun."}
    if args.finalize:
        assert prepared_report["current_reference_hashes"] == report["current_reference_hashes"], "Reference files changed after adapter preparation"
        assert prepared_report["oracle_input_sha256"] == report["oracle_input_sha256"], "Oracle inputs changed during compatibility run"
        result = json.loads((OUT / "MATLAB_RESULT.json").read_text())
        assert result["status"] == "PASS" and result["matlab_all_outputs_identical"]
        assert result["mode7_oracle_cases"] == 1017 and result["all_modes_random_cases"] == 336
        assert result["total_old_new_cases"] == 1353 and max(result["maximum_absolute_difference_per_output"]) == 0
        report.update({"status": "PASS", "matlab_all_outputs_identical": True,
                       "approved_reference_hashes": report["current_reference_hashes"], "matlab": result})
    (OUT / "REPORT.json").write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    (OUT / "REPORT.md").write_text(
        "# 历史参考与当前诊断赋值修复的独立兼容核查\n\n"
        f"状态：{report['status']}。旧控制器SHA256为{HISTORICAL}；完整当前指纹见REPORT.json。\n\n"
        "静态验证：最终diagOut赋值之后、首次zcdcDiag之前的algorithmDiag诊断赋值块之外，旧/新源码全文（规范化换行）完全一致。完整diff及两段诊断块已保存。\n\n"
        "MATLAB直接比较旧/新原函数的全部6输出；1017原mode7输入使用两个显式时长适配副本，另有0..7各42个正常随机用例。等时长适配器另与未改原函数比较。原oracle输入/数值文件没有覆盖。\n\n"
        + (f"实际MATLAB结果：1353旧/新用例、各模式随机42个，六输出最大差全0；{report['matlab']['equal_duration_adapter_vs_unmodified_original_cases']}个等时长适配对原函数额外检查通过。\n\n" if args.finalize else "MATLAB尚待实际执行，不批准指纹漂移。\n\n")
        + "当前SLX压缩包内唯一控制器脚本与当前.m规范化文本一致，记录成员simulink/stateflow/chart_38.xml。没有运行整个SLX，没有重新验证接线、InitFcn或正式性能；model_rerun=false。当前SLX与交接历史模型哈希不同，本报告不据控制器兼容性声称整个模型逐位等价。\n\n"
        "paperdelivery只记录当前文件指纹及诊断修复来源；不把元数据更新当成正式仿真重新通过。历史baseline_manifest保持不变。\n",
        encoding="utf-8")
    print(report["status"], "outside diagnostic source identical, SLX controller text matches;", OUT)


if __name__ == "__main__":
    main()
