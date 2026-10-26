# 可随new_mpc审查的验证概要

总入口为上级DELIVERY.md。原始日志、oracle、MAT/NPZ、逐行差异、仿真CSV、图与反汇编在
工作区根`output/ti_pcmfpc_zcdc_port/`；本目录仅保存明确命名的概要副本。
最新第四轮实验实现见RT4_REPORT.md，构建见RT4_BUILD_AUDIT.md，宿主及差异见RT4_HOST/RT4_DIFFERENCES。
原RT_BUILD_REPORT/RT_HOST是第三轮历史；RESOURCE_FINAL是首次移植13:54历史快照。
`evidence_copies.json`记录每份副本的原路径、大小和SHA256。
验证脚本不提交Git、不改分支、不连接硬件、不删除或清理文件。

| 内容 | 文件 |
|---|---|
| 当前状态/参数事实 | PROGRESS.md、AUDIT.md、baseline_manifest.json |
| 核心MATLAB对照 | core_VALIDATION.md、c_matlab_comparison.json、SUBSTEP_VALIDATION.md、substep_comparison.json |
| PLL与模型积分ESO | observer_validation.md、observer_results.txt |
| 快速分段对照 | FAST_REPLAY.md、fast_replay_manifest.json、fast_replay_summary.json |
| runtime/失效边界 | RUNTIME_HOST_VALIDATION.md、FAST_SAFETY_VALIDATION.md及结果TXT |
| 基础9组/扩展9组 | HARDWARE_PARAMETER_SIM.md、EXTENDED_SIM.md及结果JSON |
| 独立plant和固件差异 | SIM_METHOD_AND_RUNTIME_AUDIT.md、default_regression.json |
| 原参考快照资源 | RESOURCE_REFERENCE_SNAPSHOT.md/json（13:37旧快照，不能当成最终fast资源） |
| 首次移植fast构建/资源 | RESOURCE_FINAL.md、resource_final.json、ccs_build_stdout.txt、ccs_build_command.txt |
| 本轮第三次构建/下界 | RT_BUILD_REPORT.md、rt_build_report.json、rt_lower_bound.json及两完整路径JSON |
| 本轮宿主/实际fast闭环 | RT_HOST_VALIDATION.md、RT_FAST_REPLAY.md、RT_CLOSED_LOOP.md及对应JSON |
| 仅离线时标筛查 | TIMING_FEASIBILITY.md/json，包含中点失衡和提前失败，不是降频放行 |
| 源码/分支/观察符号核查 | delivery_checks.json |
| MATLAB诊断赋值兼容更新 | REFERENCE_COMPATIBILITY.md/json；保留旧oracle指纹，另记录当前源/模型指纹 |
| 后续用户台架记录 | RESULT_TEMPLATE.md |
| 2026-10-26用户单次数值计时 | BENCH_20261026.md、bench_20261026.json；27485cycle，数值成功、实时预算失败，不是WCET |
| 第四轮lambda实验实现 | RT4_REPORT.md/json；严格等价FAIL、实时预算FAIL，原1017选态不变 |
| 第四轮构建与静态审计 | RT4_BUILD_AUDIT.md/json、rt4_lower_bound.json；4860cycle是下界，不是实测 |
| 第四轮宿主/详细差异 | RT4_HOST.md/json、RT4_DIFFERENCES.md |
| 第四轮实际fast闭环比较 | RT4_CLOSED_LOOP.md/json；10对均完成但轨迹改变，原严格回归FAIL |

参考/快速路径都尚不满足当前写前时限；静态下界与真实测得WCET须区分。
宿主回放不证明TI的TMU/浮点重排等价；物理闭环仿真也没有模拟真实CPU迟到。
没有真实板卡闭环证据，不把Errors0或某项指标改善称为实机已验证。
