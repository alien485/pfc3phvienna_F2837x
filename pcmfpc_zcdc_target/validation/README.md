# 可随new_mpc审查的验证概要

当前恢复第十轮，见RESTORED_RT10_REPORT、RESTORED_RT10_BUILD_AUDIT、RESTORED_RT10_SOURCE_VALIDATION；marker10。
第十一轮三次19168记录见BENCH_RT11_20261027，较已测第十轮18924未提速；所有实验/旧报告保留。
以下条目按历史轮次阅读，不作为当前固件版本。

当前第十一轮见RT11_REPORT、RT11_HOST/RT11_VALIDATION_SUMMARY、RT11_BUILD_AUDIT。
A/B拒绝原因见RT11_AB_VALIDATION、RT11_COORDINATE_DERIVATION及RT11_HARDWARE_SUBSET；正式方案C保持原表达式。
第十轮18924cycle见BENCH_RT10_20261027；第十一轮板上耗时待测。

当前第十轮：RT10_REPORT、RT10_HOST、RT10_BUILD_AUDIT、RT10_SOURCE_REVIEW、RT10_PROFILE_REPLAY。
新增参数异常/合法alias检查见RT10_VALIDATION_SUMMARY；第九轮普通/分段数据见BENCH_RT9_*。
第十轮尚无板上耗时，历史条目保留。

当前为第九轮：RT9_REPORT.md、RT9_HOST.md、RT9_BUILD_AUDIT.md、RT9_PLAN_REVIEW.md及RT9_PROFILE_REPLAY.md。
第九轮尚无板上耗时；第八轮19212cycle记录继续保留。旧轮次证据不覆写。

总入口为上级DELIVERY.md。原始日志、oracle、MAT/NPZ、逐行差异、仿真CSV、图与反汇编在
工作区根`output/ti_pcmfpc_zcdc_port/`；本目录仅保存明确命名的概要副本。
历史第八轮见RT8_REPORT.md、RT8_BUILD_AUDIT.md及RT8_HOST/RT8_CLOSED_LOOP；步骤见上级BENCH_TIMING/PROFILE_TIMING。
第七轮见RT7_REPORT.md、RT7_BUILD_AUDIT.md及RT7_HOST/RT7_CLOSED_LOOP。
第六轮实现见RT6_REPORT.md，实际构建见RT6_BUILD_AUDIT.md，宿主及闭环见RT6_HOST/RT6_CLOSED_LOOP。
第四轮实验实现见RT4_REPORT.md，构建见RT4_BUILD_AUDIT.md，差异见RT4_HOST/RT4_DIFFERENCES。
原RT_BUILD_REPORT/RT_HOST是第三轮历史；RESOURCE_FINAL是首次移植13:54历史快照。
`evidence_copies.json`记录每份副本的原路径、大小和SHA256。
验证脚本不提交Git、不改分支、不连接硬件、不删除或清理文件。

| 内容 | 文件 |
|---|---|
| 第八轮用户普通计时 | BENCH_RT8_20261027.md、bench_rt8_20261027.json；19212cycle，单次少9.11%，仍超预算 |
| 第九轮事件准备 | RT9_REPORT.md、rt9_report.json；单ON NULL计划只生成两OFF事件 |
| 第八轮预测内核 | RT8_REPORT.md、rt8_report.json；固定两子步，普通/fine分流 |
| 第八轮实际TI构建 | RT8_BUILD_AUDIT.md、rt8_build_audit.json；代码及栈代价均单独说明 |
| 第八轮同输入/闭环 | RT8_HOST.md、rt8_host.json、RT8_CLOSED_LOOP.md、rt8_closed_loop.json |
| 第八轮候选选择/静态结构 | RT8_CORE_SELECTION.md、rt8_success_path_proxy.json；不是实测速度 |
| 第七轮用户fine根分解 | BENCH_RT7_FINE_20261026.md、bench_rt7_fine_20261026.json；根窗口39.47%、预测根窗口外39.10% |
| 第七轮用户普通/coarse计时 | BENCH_RT7_20261026.md、bench_rt7_20261026.json；21138cycle，候选占68.95% |
| 第七轮交集/运行策略/分段分析 | RT7_REPORT.md、rt7_report.json；版本7，实时资格未通过 |
| 第七轮实际TI构建 | RT7_BUILD_AUDIT.md、rt7_build_audit.json；CCS生成规则构建，启动器故障单独记录 |
| 第七轮宿主/闭环 | RT7_HOST.md、rt7_host.json、RT7_CLOSED_LOOP.md、rt7_closed_loop.json |
| 第六轮专用根优化 | RT6_REPORT.md、rt6_report.json；版本6，HOST对第五轮逐字节相同，板上周期待测 |
| 第六轮目标构建/指令 | RT6_BUILD_AUDIT.md、rt6_build_audit.json；静态信息不冒充实际提速 |
| 第六轮宿主/闭环 | RT6_HOST.md、rt6_host.json、RT6_CLOSED_LOOP.md、rt6_closed_loop.json |
| 第六轮用户单次DSP计时 | BENCH_RT6_20261026.md、bench_rt6_20261026.json；21217cycle，仍超预算 |
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
