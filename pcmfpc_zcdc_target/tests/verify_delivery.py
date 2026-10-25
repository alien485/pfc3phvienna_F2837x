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
parent_changed = [name for name, digest in manifest["files"].items() if sha(REPO / name) != digest]
assert parent_changed == [".cproject"], parent_changed
reference_changed = [name for name, digest in manifest["references"].items() if sha(ROOT / name) != digest]
assert not reference_changed, reference_changed
assert git("branch", "--show-current") == "new_mpc"
assert git("rev-parse", "HEAD") == manifest["commit"]
assert git("rev-parse", "main") == manifest["commit"]
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
    if expression.startswith("*"):
        assert re.fullmatch(r'\*\(volatile unsigned int \*\)0x(4093|4193|4293)', expression)
    else:
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
    "main_unchanged": True, "parent_changed_files": parent_changed,
    "unchanged_reference_files": list(manifest["references"]),
    "watch_expression_count": len(expressions), "watch_gui_import_tested": False,
    "compiled_artifacts": {p.name: sha(p) for p in (map_path, map_path.with_suffix(".out"))},
    "reference_hashes": manifest["references"],
    "checks": "PASS",
}
(EVIDENCE / "delivery_checks.json").write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
print(json.dumps(report, ensure_ascii=False, indent=2))
