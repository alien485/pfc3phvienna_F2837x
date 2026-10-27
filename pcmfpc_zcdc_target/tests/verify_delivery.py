"""Read-only source/config/watch verification; writes one evidence JSON only.

Run after the real incremental CCS build. Never invokes a debugger or clean.
This validates symbols/configuration, not CCS GUI import or hardware timing.
"""
from pathlib import Path
import hashlib
import json
import re
import subprocess
import xml.etree.ElementTree as ET

TARGET = Path(__file__).resolve().parents[1]
REPO = TARGET.parent
ROOT = TARGET.parents[3]
EVIDENCE = ROOT / "output/ti_pcmfpc_zcdc_port"


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def git(*args):
    return subprocess.check_output(["git", "-C", str(REPO), *args], text=True).strip()


manifest = json.loads((EVIDENCE / "baseline_manifest.json").read_text(encoding="utf-8-sig"))
newline_only_parent_files = []
newline_parent_evidence = {}


def parent_matches_historical(name, digest):
    actual = (REPO / name).read_bytes()
    if hashlib.sha256(actual).hexdigest() == digest:
        return True
    original = subprocess.check_output(
        ["git", "-C", str(REPO), "show", manifest["commit"] + ":" + name])
    normalized = original.replace(b"\r\n", b"\n")
    # Preserve the original raw pin. Some original TI files have mixed EOLs,
    # which Git canonicalizes. Also use the immutable historical commit's
    # canonical bytes: every non-EOL byte must match, and binaries must retain
    # exact raw hashes. This does not adopt a new source/model baseline.
    text_file = b"\0" not in actual and b"\0" not in original
    if text_file and actual.replace(b"\r\n", b"\n") == normalized:
        newline_only_parent_files.append(name)
        newline_parent_evidence[name] = {
            "historical_raw_sha256": digest,
            "canonical_historical_commit_sha256": hashlib.sha256(normalized).hexdigest(),
            "actual_raw_sha256": hashlib.sha256(actual).hexdigest(),
            "non_eol_bytes_identical_to_historical_commit": True,
        }
        return True
    return False


parent_changed = [name for name, digest in manifest["files"].items()
                  if not parent_matches_historical(name, digest)]
# The user previously built the historical parent in this linked worktree.
# CCS localized only its SFRA data path. Preserve that pre-existing edit and
# accept exactly that path substitution; every other canonical byte must match
# the immutable historical file. This does not relax control-source checks.
parent_local_path_evidence = {}
if "Kit.json" in parent_changed:
    original_kit = subprocess.check_output(
        ["git", "-C", str(REPO), "show", manifest["commit"] + ":Kit.json"])
    actual_kit = (REPO / "Kit.json").read_bytes()
    old_path = json.loads(original_kit)["MODEL"]["COMP_OPTIONS"]["SFRAPATH"]
    local_path = (REPO / "SFRAData/SFRAData.csv").as_posix()
    old_literal = json.dumps(old_path).encode("utf-8")
    new_literal = json.dumps(local_path).encode("utf-8")
    assert original_kit.count(old_literal) == 1
    expected_kit = original_kit.replace(old_literal, new_literal, 1)
    assert actual_kit.replace(b"\r\n", b"\n") == expected_kit.replace(b"\r\n", b"\n")
    parent_local_path_evidence["Kit.json"] = {
        "historical_sha256": hashlib.sha256(original_kit).hexdigest(),
        "actual_sha256": hashlib.sha256(actual_kit).hexdigest(),
        "field": "MODEL.COMP_OPTIONS.SFRAPATH", "old": old_path, "local": local_path,
        "only_path_substitution_and_eol_allowed": True,
        "preexisting_user_edit_preserved": True,
    }
assert [name for name in parent_changed if name not in parent_local_path_evidence] == [".cproject"], parent_changed
reference_changed = [name for name, digest in manifest["references"].items() if sha(ROOT / name) != digest]
compatibility = None
compatibility_path = EVIDENCE / "rt_optimization/reference_compatibility/REPORT.json"
if reference_changed:
    # Never overwrite the historical pin or silently adopt a changed model.
    # A separately executed comparison may establish a reviewed source-only
    # compatibility repair; all other drift still fails verification.
    assert compatibility_path.is_file(), reference_changed
    compatibility = json.loads(compatibility_path.read_text(encoding="utf-8-sig"))
    assert compatibility["status"] == "PASS"
    assert compatibility["control_source_outside_diagnostics_identical"] is True
    assert compatibility["matlab_all_outputs_identical"] is True
    assert compatibility["historical_controller_sha256"] == manifest["references"]["pcmfpc_zcdc/vienna_pcmfpc_zcdc_complete.m"]
    reviewed = compatibility["approved_reference_hashes"]
    assert set(reference_changed) == set(reviewed), reference_changed
    for name in reference_changed:
        assert sha(ROOT / name) == reviewed[name], name
assert git("branch", "--show-current") == "new_mpc"
assert subprocess.run(["git", "-C", str(REPO), "merge-base", "--is-ancestor",
                       manifest["commit"], "HEAD"], capture_output=True).returncode == 0
main_tip = git("rev-parse", "refs/heads/main")
# The user's independent main branch may advance. Its historical baseline
# remains an ancestor; never reset main to make this verification pass.
assert subprocess.run(["git", "-C", str(REPO), "merge-base", "--is-ancestor",
                       manifest["commit"], main_tip], capture_output=True).returncode == 0
assert ET.parse(TARGET / ".project").findtext("name") == "vienna_pcmfpc_zcdc_F2837x"
assert "28379D" in ET.parse(TARGET / ".ccsproject").find("deviceVariant").get("value")
parent_entries = ET.parse(REPO / ".cproject").findall(".//sourceEntries/entry")
assert any("pcmfpc_zcdc_target" in e.get("excluding", "").split("|") for e in parent_entries)
target_entries = ET.parse(TARGET / ".cproject").findall(".//sourceEntries/entry")
assert any({"tests", "FLASH"} <= set(e.get("excluding", "").split("|")) for e in target_entries)

script_lines = (TARGET / "setupdebugenv_pcmfpc_zcdc.js").read_text(encoding="utf-8-sig").splitlines()
expressions = []
for line in script_lines:
    line = line.strip()
    if not line or line.startswith("//") or line == "expRemoveAll();":
        continue
    match = re.fullmatch(r'expAdd\("([^"\n]+)", get(Natural|Hex)\(\)\);', line)
    assert match, f"Unexpected executable watch statement: {line}"
    expressions.append(match[1])
txt = (TARGET / "CCS_Expressions_PCMFPC_ZCDC.txt").read_text(encoding="utf-8-sig").splitlines()
assert expressions == txt
assert len(expressions) == len(set(expressions))
map_path = TARGET / "FLASH/vienna_pcmfpc_zcdc_F2837x.map"
map_text = map_path.read_text(encoding="utf-8-sig")
for expression in expressions:
    # Keep the portable watch list to symbols. Raw register casts are viewed
    # in Memory Browser because this CCS evaluator rejected their C syntax.
    assert re.fullmatch(r"[A-Za-z_]\w*", expression), expression
    assert re.search(r"\b" + re.escape(expression) + r"\b", map_text), expression
for function in ("PC_run_fast", "PC_run", "VO_reconstruct", "VG_run", "VIENNA_PCMFPC_post"):
    assert re.search(r"\b" + function + r"\b", map_text), function
assert not subprocess.run(["git", "-C", str(REPO), "diff", "--check"], capture_output=True).returncode
for relative in ("FLASH/vienna_pcmfpc_zcdc_F2837x.out", "tests/core_runtime_test.exe",
                 "tests/observer_build/ti_closed_loop.exe", "tests/core_oracle_float.dll"):
    assert subprocess.run(["git", "-C", str(TARGET), "check-ignore", "-q", relative]).returncode == 0, relative

report = {
    "scope": "source fingerprints, branch isolation, CCS metadata and watch syntax/symbols; no GUI/hardware test",
    "branch": git("branch", "--show-current"), "head": git("rev-parse", "HEAD"),
    "historical_baseline_commit": manifest["commit"], "baseline_is_ancestor": True,
    "main_tip": main_tip, "main_contains_historical_baseline": True,
    "main_advanced_since_historical_baseline": main_tip != manifest["commit"],
    "parent_changed_files": parent_changed,
    "parent_local_path_evidence": parent_local_path_evidence,
    "parent_newline_only_files": newline_only_parent_files,
    "parent_newline_evidence": newline_parent_evidence,
    "unchanged_reference_files": [name for name in manifest["references"] if name not in reference_changed],
    "reviewed_changed_reference_files": reference_changed,
    "reference_compatibility_report_sha256": sha(compatibility_path) if compatibility is not None else None,
    "watch_expression_count": len(expressions), "watch_gui_import_tested": False,
    "compiled_artifacts": {p.name: sha(p) for p in (map_path, map_path.with_suffix(".out"))},
    "reference_hashes": manifest["references"],
    "current_reference_hashes": {name: sha(ROOT / name) for name in manifest["references"]},
    "checks": "PASS",
}
(EVIDENCE / "delivery_checks.json").write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
print(json.dumps(report, ensure_ascii=False, indent=2))
