# TI PCMFPC-ZCDC 移植进度

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

## 当前状态：第八轮，2026-10-27

目标仍为Vienna_Project/Vienna_MPC/pfc3phvienna_new_mpc/pcmfpc_zcdc_target，new_mpc、CPU1。
版本8，66项观察表/原profile接口不变；固定展开2个CONTROL子步，同源宏分别生成普通/fine核。
普通预测没有逐根计时guard，叶函数移除unused cfg；根/模型/阈值、runtime及外设/保护未改。
diag1/0各31750完整输出/140025区间、24912私有CONTROL边界、80profile及85/299/16安全/runtime/ESO通过；
10个闭环轨迹和指标对7逐字节相同。初始增加栈访问的局部化变体拒绝，最终仅选一版。
真实TI生成规则增量构建0error/0warning，linked27日08:48:32，OUTd01c3f7f...。
代码14821/16384、BSS3222/4096word；普通/fine帧增大，不能以静态proxy宣称板上提速。
用户第八轮普通计时19212cycle，较第七轮21138少1926/9.11%，配置200MHz为96.060us。
单次同条件假设及版本关联边界见bench_20261027_round8/REPORT；仍超20us，保持HardwareRelease0。
当前证据rt_optimization/round8/REPORT及build_pass8/AUDIT。没有Clean、删除、硬件操作、提交或推送。

## 以下第七轮及更早为历史记录

## 当前状态：第七轮，2026-10-26

唯一当前目标仍为Vienna_Project/Vienna_MPC/pfc3phvienna_new_mpc/pcmfpc_zcdc_target，
CCS项目vienna_pcmfpc_zcdc_F2837x、new_mpc。版本7，观察表66项，新增PC_fast_profile。
本轮直接构造整数交集；fast适配层只计算交集角度；一次性分析仅由断电请求3/4触发。
同策略diag1/0各31750完整输出+140025区间对第六轮0字节差，跨策略仅许可诊断差异；
交集10321920例、profile81、安全85/runtime299/ESO16项及10对闭环轨迹通过。
CCS启动器失败后使用其已生成TI gmake增量规则构建成功，0error/0warning，linked21:57:56，
OUT928bb780...；没有Clean/Rebuild、外设/保护参数修改、硬件操作或提交/推送。
代码13645/16384word、BSS3222/4096word。用户随后反馈版本7普通计时21138cycle，
仅比第六轮少79/0.372%；coarse候选阶段14823占68.95%，延迟+候选占77.25%。
数据见bench_20261026_round7/REPORT。请求4后续有效：fine22817、根窗口9005占39.47%，
预测桶中根窗口外8921占39.10%，见bench_20261026_round7_fine/REPORT。
后续同时优化根与预测非根；不再需要重复本轮基准。硬件放行0。
当前入口rt_optimization/round7/REPORT及build_pass7/AUDIT；用户按目标目录PROFILE_TIMING.md
先测普通请求2，再测请求3，必要时4。第六轮21217cycle为历史，不是版本7耗时。
工作期间观察到main独立提交81822e3；其工作目录82个文件内容前后不变，未合并至new_mpc。

## 以下第六轮及更早为历史记录

## 当前状态：第六轮，2026-10-26下午

唯一当前目标为Vienna_Project/Vienna_MPC/pfc3phvienna_new_mpc/pcmfpc_zcdc_target，
CCS项目vienna_pcmfpc_zcdc_F2837x，分支new_mpc。main仍使用pfc3phvienna_F2837x目录。
在已恢复并提交的第五轮基础上，新增hw3/5/6/7专用lambda根，版本观察项为6。
HOST对第五轮31750组完整输出、140025次区间输出及10对轨迹逐字节0差，
另191620组专用根定向检查通过；更早piecewise的1887次选态差和严格FAIL没有消除。
CCS真实增量构建17:09:40，0errors/0warnings，OUT e3987113...；快速调用闭包均在RAM。
代码13097/16384word，BSS3180/4096word；静态弱下界4910cycle仍大于4000cycle周期预算，
用户随后确认版本6并反馈单次21217cycle，按配置200MHz为106.085us，Fault32、Count1。
较第四轮23425少2208cycle/9.4258%须同测试条件；第五轮没有独立实测，仍不能宣称实时合格。
原图分析见bench_20261026_round6/REPORT；写前与完整ISR资格均未通过。
main的82个受跟踪文件与19个受保护目标文件保持指纹不变；未操作硬件或提交/推送。
当前证据以rt_optimization/round6/REPORT和build_pass6/AUDIT为准，Git审阅副本为目标工程
validation/RT6_*及BENCH_RT6_20261026；后续继续减少计算量，保持HardwareRelease0。

## 以下为恢复及早期优化历史

2026-10-26恢复补记：main保持原目录/756e806，82个受跟踪文件未改；new_mpc使用独立目录
Vienna_Project/Vienna_MPC/pfc3phvienna_new_mpc，恢复第五轮版本5，真实导入/构建通过。
当前路径、清理保护、原暂存删除项恢复和工具兼容修复以recovery_20261026/REPORT及新项目
RECOVERY_AND_WORKFLOW.md为准。以下优化阶段记录属于恢复前历史，不代表main仍停留在原基线。

日期：2026-10-26。分支 new_mpc。用户已将首版提交并同步为44f0ec5；本轮后续优化未提交/推送。

唯一源工程：Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x。
唯一目标工程：同一 Git 仓库内 pcmfpc_zcdc_target（独立CCS项目）。此位置用于满足在 new_mpc 管理变更，同时保留原工程逐文件对照。

## 阶段状态

| 阶段 | 当前状态 | 证据与边界 |
|---|---|---|
| A 事实审计 | 已完成离线部分 | AUDIT.md、baseline_manifest.json；时标、ID/SI映射、PLL与极点输入缺口及保护冲突已核查 |
| B 参考实现与独立回放 | 已完成 | 真MATLAB1017输入、6变体；18306子步逐字段对照；core与PLL/ESO宿主测试 |
| B 实时优化 | 第四轮lambda实验实现完成；严格等价未通过 | 原1017输入选态0差；扩展31750有1887选态差，48000区间及80000根模型核查正常，85安全/127runtime/16ESO通过 |
| C 硬件参数闭环 | 原18组保留；新增实际fast10对及24组时标筛查 | 10对20runs/130000行旧新fast全一致；24时标用例保留严重失衡及4组提前失效，默认50k回归不变 |
| D CCS构建 | 第四轮真实增量成功 | 2026-10-26 09:26:31 OUT52971695...，Exit0/Errors0/Warnings1；RAM代码12531/16384word，PCrun88/control36word帧 |
| D 无主功率时限 | 第四轮仍超预算；新板上计时待用户执行 | 第四轮非重叠下界4860cycle；旧OUT用户BenchStatus1/Count1，27485cycle，Fault32，详见bench_20261026；旧值不是新OUT计时 |
| E 实机闭环 | 未执行 | 未连接调试器、未烧录、未上电、未清Trip，硬件放行0 |

## 当前配置

用户确认F28379D、每相3mH、上下各440uF、实际50ohm，无额外极点传感器。
按其授权计算的目标：100V线RMS（57.735V相RMS）、50Hz、170V总母线、578W。
目标采用待验证候选7A瞬时Trip、独立5.5A参考峰限、204V滤波软件OV。
原父控制源码仍保留历史配置。没有由计算推定电感饱和、保险丝、热或保护传播已通过。
200V/50ohm不放行；20MHz controlCARD假设、极性和真实采样/驱动延迟仍待实板核验。

ESO使用已执行门极与二极管模型重构上一完整区间DeltaU，不是实测pole积分。
默认模式0、root0、HardwareRelease0、ShadowEnable0；观察脚本不会自动启机。
root0是可追溯参考；第四轮root1同样已确定不能用于现有50kHz带功率控制。
已提供BENCH_TIMING.md供用户在无交流主功率、全OST状态执行一次独立数值计时，不能拿它启机。

2026-10-26用户截图已确认新观察符号可读、170V/204V配置。固定样例CoreStatus0，
SelectedId3/HWState2未施加到门极（Actual/Pending0）；C主体最大28973cycle。
Count1不覆盖最坏路径，实际主频及板上OUT指纹未由截图独立确认。
本代理仅整理用户结果，没有连接/烧录/操作目标，没有调整固件或外设。

## 不利结果与已知差异

double32与MATLAB全部离散选择一致；有界float32在500正式轨迹及真实5→2末级事件一致，
1017集仍有16个最终ID差异（14平坦阻断、2合成边界）。分段根的差异另列，未改平局规则掩盖。
50ohm基础仿真综合跟踪RMS：旧FCS .090807A、OFF .082507A、ON .083148A；
ON对OFF约恶化0.78%，中点略改善，部分低次THD也恶化。实际开关频率不同，不能说等损耗。
宿主闭环假设计算及时完成；数值稳定不代表8.14us影子写入和20us整ISR通过。

## 下一步与证据索引

本轮交付入口为目标RT_OPTIMIZATION.md及validation/RT4_REPORT.md；第四轮构建/宿主/差异/闭环为RT4_*。
lambda活动集根已实现，浮点选态差异和严格回归FAIL完整保留。10对宿主轨迹均改变，
名义末级ON跟踪RMS约恶化1.04%，不能称普遍性能改善。下一步先同固定样例计新OUT周期，
再评估ABC状态携带及完整候选公共计算；不扩大1e-12阈值掩盖近零末级问题。不能把降频视作捷径：20k中心采样
ON+L/Rnoise出现约160V中点RMS，10k新控制有半母线失效/7A动作；仅离线评估并未改DSP设置。
用户可按BENCH_TIMING/PORT_GUIDE做全OFF数值计时及采样/保护资格，不得直接带功率。
没有写前及整ISR实际最坏路径证据，不打开硬件放行。
必要的PWM/ADC/CMPSS/TZ时序调整需另行推导，不在本轮静默修改。
所有原始日志、oracle及仿真CSV集中本目录；可提交的简要报告在目标validation目录。
没有删除项目文件，没有Clean/Rebuild，没有提交或推送。
read_thread工具本会话未提供，未依赖未读取的引用聊天内容。

## 参考兼容更新的独立核查

历史baseline后另有MATLAB诊断数组一次性赋值修复，当前.m为6be3a96d...，SLX为38268096...。
已核对旧A77备份准确、诊断块外全文相同，并真实MATLAB比较1017模式7+336跨八模式输入，
全部六输出一致，另751等时长适配器核查通过。当前SLX控制脚本与当前.m一致；未宣称
整个新SLX接线/InitFcn/形式性能重跑。没有覆盖用户参考、没有改历史manifest；变更与兼容
证据单列rt_optimization/reference_compatibility，delivery_checks同时记录旧/当前指纹。
