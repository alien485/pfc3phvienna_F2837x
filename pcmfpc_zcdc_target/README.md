# F28379D PCMFPC-ZCDC 模式7移植目标

当前恢复使用第十轮（PC_fast_kernel_revision=10），工作分支仍为new_mpc。
第十一轮固定请求2三次均19168cycle，比现有第十轮18924单样例多244cycle/1.220us/1.289%，不作为性能升级。
只把fast.c/.h恢复到已执行验证的第十轮精确字节，未回退分支或删除任何实验/其他用户文件。
重新TI增量构建0错误/0警告，当前OUT与原第十轮逐字节相同，SHA4b847bd1...；保护22/main82/父Kit均保持。
当前本地源码和OUT已恢复，板卡仍须用户重新加载后确认marker10；不会自动从11切回10。
第十一轮与A/B失败实验、源码、测试及三次截图全部保留，见BENCH_RT11_20261027及旧RT11报告。
当前操作以validation/RESTORED_RT10_REPORT.md和BENCH_TIMING.md为准。HardwareRelease保持0，未放行带功率。
以下较早轮次是历史交付记录，不是当前版本。

2026-10-27第十一轮：正式采用精确ON分量省算，新增pf_dq_to_abc_on。
仅候选第二子步省掉未被neutral读取的OFF old电流；所需原乘加、相序、N1延迟、freeDQ、根和FULL/ESO保持。
A/B坐标复用虽只产生微伏中点差异，却各改变122/121次选态（含硬件参数近零子集），已拒绝默认安装。
正式双策略31750输出/140025区间及10轨迹/10指标对第十轮逐字节同；1464公参异常/1536 alias等通过。
127008分析回放通过，实际TI编译链接0错误/0警告，版本11，OUTf8128de3...。
代码剩941字，BSS剩854字且地址/大小保持；模型核frame各增2字，不能据静态省算宣称提速。
第十轮用户普通18924cycle（配置200MHz为94.620us）作为基线；第十一轮板上时间待测。
先按BENCH_TIMING.md请求2；66项JS/TXT不变，main与外设/保护/时序保持，HardwareRelease继续0。
当前证据validation/RT11_REPORT.md；以下是较早轮次交付时的历史记录。

2026-10-27第十轮：完成批量预测与公共准备。相同模型核心支持N1单区间/N8候选，
成功PC_run_fast的模型函数入口9→2，仍保留8候选/双子步/18根及原代价、失败输出和诊断契约。
公共np/dc/h/c及setup状态复用；局部结果填两份完整摘要。公开接口和66项观察表保持。
正式双策略31750输出/140025区间、24912 CONTROL、80profile、325551根、安全85/runtime299/ESO16通过；
新增1464公共边界及1536合法alias零差，10轨迹/10指标与127008分析回放对照通过。
TI CCS生成规则增量链接0错误/0警告，版本10，OUT4b847bd1...；新context20字在RAMGS3。
代码剩1117字/BSS剩854字，普通核帧增加，资源限制见RT10_BUILD_AUDIT.md。
第九轮用户普通19242未较第八轮19212提速，分段数据见BENCH_RT9_PROFILE_20261027.md。
第十轮板上耗时待测，先按BENCH_TIMING.md单次请求2；JS/TXT无需更新。
main及外设/保护/时序参数保持，HardwareRelease继续0。当前证据validation/RT10_REPORT.md。
以下较早轮次为交付当时的历史记录，不作为当前固件版本或耗时。

2026-10-27第九轮：仅精简单相ON、无共享计划时的OFF事件准备。
`pf_lambda_single_plan`只为hw=1/2/4生成两相OFF事件；原`pf_lambda_root`求根循环、共享计划、
双子步、8候选和代价判据保持。完整专用solver的较大变体已拒绝，未纳入正式代码。
版本标记9；TI CCS生成规则增量编译链接0错误/0警告，板上第九轮计时尚未取得。
HOST对第八轮：两种diag各31750输出/140025区间、325551根、24912直接CONTROL、
80计时检查及安全85/runtime299/ESO16通过；10组闭环及127008计时路径对照均一致。
观察表仍66项；JS/TXT无需更新。先按BENCH_TIMING.md测请求2，对比第八轮19212cycle。
main、运行适配层、外设/保护/时序参数未修改，HardwareRelease继续0。
当前证据见validation/RT9_REPORT.md；以下第八轮及更早内容作为历史记录。

2026-10-27：历史第八轮，独立new_mpc工作目录，版本观察项8，观察表仍66项。
固定展开两个预测子步，以同一个模型宏生成普通/fine两条路径，普通预测没有逐根读钟判断。
原模型、浮点表达式、根、候选和末级判据保留；适配层及外设/保护配置未改。
两种诊断策略各31750完整输出/140025区间、24912直接CONTROL边界对照及10闭环轨迹对第七轮HOST逐字节相同。
真实TI编译链接0errors/0warnings，使用既有CCS生成的增量规则；该轮证据validation/RT8_REPORT.md。
用户第八轮普通计时反馈19212cycle（配置200MHz为96.060us），较第七轮21138少1926/9.11%，
见validation/BENCH_RT8_20261027.md。单次样例且按加载流程关联，不是WCET或实时通过。
第七轮coarse21497、fine22817/root9005仍为历史分解，不能直接当作第八轮各部分耗时。
硬件放行继续0；先按BENCH_TIMING.md测请求2，必要时再按PROFILE_TIMING.md测3/4。
当前打开方法、main/new_mpc对应目录、暂存恢复边界和构建清理保护以
`RECOVERY_AND_WORKFLOW.md`为准。以下RT4报告属于恢复前的历史实验快照；PCMFPC仍未放行带功率闭环。

唯一 CCS 项目名：`vienna_pcmfpc_zcdc_F2837x`。工作分支：`new_mpc`。
本目录是独立目标；父目录原 FCS 工程保留对照，父 `.cproject` 仅增加本目录排除项。
本次移植没有写原MATLAB/SLX。参考此前另有诊断赋值兼容更新，已独立核对1353组
六输出全同，当前与历史指纹分开记录于`validation/REFERENCE_COMPATIBILITY.md`。
父FCS基线为`1c93fcd`，用户首版移植提交为`44f0ec5`；完整历史指纹在根项目
`output/ti_pcmfpc_zcdc_port/baseline_manifest.json`。

**默认 `VIENNA_pcmHardwareRelease=0`，任何模式都不能由 clearTrip 启机。**
默认模式0为原 FCS 内核；模式1/2分别为模式7末级OFF/ON。共同使用新PLL、
同一SI外环和5.5A峰值参考，故模式0并非父目录固件的逐位等价运行。
32轮参考求根和快速分段根均保留，默认32轮。当前实时优化见`RT_OPTIMIZATION.md`；
第四轮CONTROL已采用lambda活动集根，FULL/ESO保留原根；存在浮点选态差异，
不能作为原验证版的逐位替代。第六轮静态弱下界4910cycle/24.55us是历史审计；
第八轮不由旧下界或静态指令数推算提速，仍没有实时放行证据。该轮见`validation/RT8_REPORT.md`。

## 文件与实际调用链

- `vienna_pcmfpc_zcdc.h/.c`：SI纯C核心，独立双排序、0.02A范数预算、
  自适应交集、共享触发与严格相角末级。MATLAB ID和HAL位序显式转换。
- `vienna_pcmfpc_fast.h/.c`：显式root_method=1路径，分段求根、公共角度节点、
  逐项初始化必要输出；CONTROL窄内核和分离静态工作区减少大帧寻址。
  候选子步与pole积分不可用标志明确，ESO的FULL路径保留；仅由CPU1 ISR1顺序调用。
- `vienna_grid_sync.h/.c`：有界采样时刻角的归一化SRF PLL；并非仿真PLL原样复制。
- `vienna_pcmfpc_observer.h/.c`：显式上一完整区间DeltaU ESO；
  **当前输入来源为模型重构，不是实测极点积分**。
- `vienna_pcmfpc_runtime.h/.c`：TI采样、启停、门极历史、公共外环、诊断和采集适配。
- `vienna.h`：`ISR1 -> VIENNA_pfcControlCode -> ADC -> sample -> clearTrip守护 ->
  make_refs -> 原FCS或PCMFPC_select -> 原deadline检查 -> AQ影子提交 ->
  submitted -> 公共外环 -> post`。
- `main.syscfg`、`vienna_user_settings.h`：170V/50ohm参数规划；ADC/PWM时序未改。
- `build_incremental.ps1`：独立工作区导入及增量构建；不clean、不烧录、不连接硬件。
- `setupdebugenv_pcmfpc_zcdc.js`、`CCS_Expressions_PCMFPC_ZCDC.txt`：仅添加观察项。
- `tests/`：核心边界/精度、MATLAB oracle、PLL/ESO、独立小步物理闭环验证。

## 编译与导入

CCS12选择本目录 `.project`，项目名必须为 `vienna_pcmfpc_zcdc_F2837x`。
实际 `.out` 位于本目录 `FLASH/vienna_pcmfpc_zcdc_F2837x.out`，不要混淆父目录旧固件。
目标配置选择 `targetConfigs/TMS320F28379D.ccxml`；旧配置副本以 `.reference` 结尾。
当前时钟按20MHz controlCARD；芯片已由用户确认F28379D，板上晶振与时钟仍需核对。

```powershell
& '.\build_incremental.ps1'            # 首次导入+增量构建
& '.\build_incremental.ps1' -SkipImport # 已导入后增量构建
```

脚本默认本机CCS、CGT25.11.1、SDK26.01及SysConfig1.21路径，精确命令和日志在
项目根 `output/ti_pcmfpc_zcdc_port/`。不使用Rebuild/Clean，以遵守禁止批量删除规则。
新代码由 `pcmfpc_code` 段从FLASHI复制至RAMGS12..15；事件和波形缓冲独立分区。
`PC_Output`、ESO重构输出为静态对象，不能改成ISR栈大对象。

## 配置与验证边界

用户已确认 F28379D、3mH/相、440uF/半母线、50ohm、没有额外极点传感器。
目标100V线RMS、50Hz、170V总母线，实际负载578W。
拟议7A瞬时保护、5.5A参考峰限、204V滤波软件过压见 `PARAMETERS.md`。
这组数值不是已测保护整定或器件安全性证明，放行锁默认保持0。

已独立比较MATLAB、C double和float32。float32平坦阻断/合成边界仍有选择差异，
不能声称全部门极等价；PLL必须保持角度有界。分段根是显式待验优化。
参考20us控制时标不会因算法参数Ts改变而自动改变PWM；本次保持50kHz和原deadline。

证据入口：`tests/core_VALIDATION.md`、`tests/observer_validation.md`、
根项目 `output/ti_pcmfpc_zcdc_port/c_matlab_comparison.json`、
`hardware_sim/REPORT.md`、CCS日志及资源/时限审计。
独立硬件参数仿真不是完整开关器件/磁性/热模型，不等于实机闭环成功。
50ohm名义仿真中ON相对OFF的跟踪与低次THD略恶化，此结果保留，不承诺末级必然改善。

分级台架流程和采集解释见 `PORT_GUIDE.md`，采样/执行关系见 `TIMING.md`。
本轮完成状态、不利结果及下一步见 `DELIVERY.md`；概要证据在 `validation/`。
用户提交44f0ec5之后的三轮实现、实际fast闭环回归及最新构建见`RT_OPTIMIZATION.md`。
