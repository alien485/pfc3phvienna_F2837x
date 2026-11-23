# F28379D PCMFPC-ZCDC 模式7移植目标

**当前交付：Runtime5 / Kernel12 / Timing2 / 4 kHz单状态FCS。**
新增停止状态连续数值测试：`VIENNA_pcmBenchRepeat=5/6`开始，`0`停止；
`IntruTime_us`/`IntruTimeMax_us`用CPU定时器显示本拍/最大微秒耗时。
755项运行层HOST检查、6项故障注入与TI增量构建通过（0错误/0警告）；观察表79项。
操作见`CCS_CONTINUOUS_BENCH_GUIDE.md`，当前审计为`validation/CONTINUOUS_BENCH_BUILD_AUDIT.json`。
本次未改变算法、控制频率或保护；实机时限及带载仍未放行。以下为Runtime4及更早历史记录。

**历史交付：Runtime4 / Kernel12 / Timing2 / 4 kHz单状态FCS。**
真实源码已集成动态预测、现有子步可行性/未来电流预留、中点软恢复及写后观察器预计算；未改变PWM输出形式或保护门限。
567项实际运行层HOST检查、完整0.8 s名义闭环与最终TI增量构建通过（0错误/0警告）；名义母线169.73 V、全程I峰6.604 A，THD约12%。
71项观察表，当前OUT SHA71973086...；实机时限与带载尚未验证，先按`CCS_RUNTIME4_GUIDE.md`无主功率加载并测请求5/6。
当前构建审计为`validation/SINGLE_FCS_4KHZ_BUILD_AUDIT.json`。下面2 kHz/旧OUT记录仅为当时版本，不作为当前操作依据。

2026-10-28最新真实固件为Runtime3：单状态FCS保持，观察器MODEL积分改为写后预计算/下一拍校验消费。
556项HOST检查与TI增量构建通过（0错误/0警告）；观察表70项，新增同夹具缓存路径请求6。
当前仍2 kHz/kernel10/Timing.revision1，OUT SHA为5dc95b7f...；尚不能100 V线RMS/50 ohm带载。
加载及唯一下一步5/6测时见`CCS_RUNTIME3_GUIDE.md`。下面旧OUT/67项等记录按当时版本保留。

2026-10-28追加长区间模型离线对照：12312项检查、8组闭环与固定输入回放完成。
母线动态与扰动增量组合使旧故障输入OFF预测峰值7.225降至6.951 A，但完整170 V闭环仍不合格：
PC-ON持续全关断、母线约131 V；组合模型PC-OFF出现严重半母线失衡。
实现只在tests/output，MCU与保护未改；见 `validation/PREDICTION_DYNAMICS_REPORT.md`。

2026-10-28追加离线电流可行性原型，未进入MCU：2415项检查与原版逐字节对照通过。
端点/子步约束均避免原7 A事件，但约164.252 ms因无可行候选停机，未达到170 V。
局部物理回放发现被拒绝的OFF候选峰值6.844 A（预测7.225 A），需继续核查长区间预测偏差。
实现及边界见 `validation/OFFLINE_CURRENT_LIMIT_REPORT.md`；现有固件/频率/保护保持。

2026-10-28：当前为 **2 kHz 直接FCS控制更新的计时试验版本**，工作分支仍为 `new_mpc`。
快速算法内核保持第十轮 `PC_fast_kernel_revision=10`；它不能单独区分旧50kHz固件与本轮固件。
加载并完成初始化后，还须确认 `VIENNA_pcmTiming.revision=1`、`control_hz=2000`、
`sample_us≈500`、`first_duration_us≈250`、`pwm_period_ticks=50000`、`tbprd_ticks=25000`、`period_cycles=100000`。
工程自有配置 `VIENNA_PCMFPC_CONTROL_RATE_HZ=2000U` 覆盖TI生成模板；正常默认求解器改为 `PIECEWISE=1`。
JS/TXT观察表为67项，新增 `VIENNA_pcmTiming`。模式仍默认0、`HardwareRelease=0`，不自动启机。
本轮离线小步物理仿真6案均触发原7A保护，虽核心/ESO错误为0，2kHz功率闭环仍不合格。
当前仅用于无主功率计时，不能用于原100V线RMS/50Ω带功率运行。
TI gmake增量构建已完成，C编译/链接0错误、0警告；SysConfig有1类Clock Tree建议warning（本次日志出现2次）。
本轮OUT SHA为 `32406e84...`；运行适配层358项、2kHz专项36490项宿主检查通过，功率闭环资格仍为 `NOT_QUALIFIED`。
用户已反馈请求2/5单次计数19732/27718，按配置200MHz为98.66/138.59us，Status1/Fault0。
完整写前路径/整ISR/WCET仍待测，单次结果见 `validation/BENCH_2KHZ_20261028.md`，统一证据见 `validation/CONTROL_RATE_2KHZ_REPORT.md`。
2026-10-28追加固定请求5三次均27718cycles，Status1/Fault0/DeadlineMissCount0；
用户文字反馈BodyCyclesMax29912。按配置200MHz分别为138.59us、149.56us。
固定夹具重复测时结束；完整写前路径/ISR及7A离线闭环问题仍待验证，见 `validation/BENCH_2KHZ_REQUEST5_REPEATS_20261028.md`。
旧18924/19168cycle及OUT `4b847bd1...` 属于旧50kHz实验，不能用于证明新时标下实时合格。
配置依据、时标和无主功率操作以 `CONTROL_RATE_2KHZ.md`、`BENCH_TIMING.md` 为准。

## 历史：恢复第十轮及此前50kHz实验

以下原记录保留供追溯；其中“当前”、旧OUT、观察项数量及20us预算仅指记录当时版本。

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

## 当前工程配置与操作入口

唯一 CCS 项目名：`vienna_pcmfpc_zcdc_F2837x`。工作分支：`new_mpc`。
本目录是独立目标；父目录原 FCS 工程保留对照，父 `.cproject` 仅增加本目录排除项。
本次移植没有写原MATLAB/SLX。参考此前另有诊断赋值兼容更新，已独立核对1353组
六输出全同，当前与历史指纹分开记录于`validation/REFERENCE_COMPATIBILITY.md`。
父FCS基线为`1c93fcd`，用户首版移植提交为`44f0ec5`；完整历史指纹在根项目
`output/ti_pcmfpc_zcdc_port/baseline_manifest.json`。

**默认 `VIENNA_pcmHardwareRelease=0`，任何模式都不能由 clearTrip 启机。**
默认模式0为原 FCS 内核；模式1/2分别为模式7末级OFF/ON。共同使用新PLL、
同一SI外环和5.5A峰值参考，故模式0并非父目录固件的逐位等价运行。
32轮参考求根和快速分段根均保留；当前正常默认快速分段根 `root_method=1`。实时优化历史见`RT_OPTIMIZATION.md`；
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
- `main.syscfg`、`vienna_user_settings.h`：170V/50ohm参数规划；当前由用户配置显式覆盖为2kHz，ADC采样窗/保护阈值不变，触发位置随PWM时基重算。
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
本轮实际PWM时基、ADC/控制更新均为2kHz，仍每周期更新一次；直接保持开关组合，器件实际开关频率不固定。
`TS=500us/DELAY=250us`同步进入预测器、PLL/ESO和SI外环；保留写入守护，不以旧20us时标验证新配置。
完整写前流程和整ISR仍待板上测量，500Hz ESO及低频电流/中点性能仍待新时标闭环验证。

证据入口：`tests/core_VALIDATION.md`、`tests/observer_validation.md`、
根项目 `output/ti_pcmfpc_zcdc_port/c_matlab_comparison.json`、
`hardware_sim/REPORT.md`、CCS日志及资源/时限审计。
独立硬件参数仿真不是完整开关器件/磁性/热模型，不等于实机闭环成功。
50ohm名义仿真中ON相对OFF的跟踪与低次THD略恶化，此结果保留，不承诺末级必然改善。

分级台架流程和采集解释见 `PORT_GUIDE.md`，采样/执行关系见 `TIMING.md`。
本轮完成状态、不利结果及下一步见 `DELIVERY.md`；概要证据在 `validation/`。
用户提交44f0ec5之后的三轮实现、实际fast闭环回归及最新构建见`RT_OPTIMIZATION.md`。
