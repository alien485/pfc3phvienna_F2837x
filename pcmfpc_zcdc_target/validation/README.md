# 可随new_mpc审查的验证概要

总入口为上级DELIVERY.md。原始日志、oracle、MAT/NPZ、逐行差异、仿真CSV、图与反汇编在
工作区根`output/ti_pcmfpc_zcdc_port/`；本目录仅保存明确命名的概要副本。
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
| 最终fast构建/资源 | RESOURCE_FINAL.md/json、ccs_build_stdout.txt、ccs_build_command.txt |
| 源码/分支/观察符号核查 | delivery_checks.json |
| 后续用户台架记录 | RESULT_TEMPLATE.md |

参考/快速路径都尚不满足当前写前时限；静态下界与真实测得WCET须区分。
宿主回放不证明TI的TMU/浮点重排等价；物理闭环仿真也没有模拟真实CPU迟到。
没有真实板卡闭环证据，不把Errors0或某项指标改善称为实机已验证。
