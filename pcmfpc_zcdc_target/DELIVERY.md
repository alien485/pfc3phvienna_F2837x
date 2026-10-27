# 移植交付与实际验证状态

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

## 历史：第八轮，2026-10-27

版本8固定展开两个预测子步，普通/细计时共用一个模型宏；普通路径不含逐根计时分支。
仅删除私有叶函数无用cfg参数，公开接口和66项观察表不变。模型、8候选/2子步、根、
范数预算、1e-12和末级判据均保留；运行适配层、HAL及外设/保护/时序参数未改。
同策略两种diag各31750完整输出/140025区间、24912直接CONTROL边界以及10闭环轨迹对7逐字节一致。
80项profile、安全85/runtime299/ESO16通过；实际TI编译链接0error/0warning，OUT d01c3f7f...。
该轮证据validation/RT8_REPORT.md，步骤BENCH_TIMING/PROFILE_TIMING。用户第八轮普通19212cycle，
较第七轮单次少9.11%，见validation/BENCH_RT8_20261027.md；仍超预算，HardwareRelease保持0。
较大的普通/fine代码和栈帧开销均纳入实际构建审计，不以该样例宣称WCET或实时合格。
没有连接、烧录、写目标、删除、提交或推送。下面为第七轮及之前的历史。

## 当前：第七轮

版本7保留预测模型和浮点公式，直接构造整数候选交集；fast运行策略仅计算交集角度。
增加一次性coarse/fine分段计时，普通调用没有分析读钟，使用既有Timer0且没有配置写入。
两种角度策略各31750完整输出/140025区间对第六轮逐字节相同，10对HOST轨迹相同；
跨角度策略仅未交集gz及全体spread诊断改变。交集10321920例、profile81、runtime299项通过。
真实TI CGT25.11.1构建链接成功，0error/0warning，OUT928bb780...，linked21:57:56。
本次CCS控制台启动器未进入编译，改用原CCS生成的gmake增量规则；失败日志未抹去。
用户第七轮普通计时21138cycle，较第六轮仅少0.372%；coarse候选阶段占68.95%，
见validation/BENCH_RT7_20261026.md。写前及完整ISR资格仍未通过，HardwareRelease保持0。
main和外设/保护参数未由本代理修改。
当前证据见validation/RT7_REPORT.md；按BENCH_TIMING和PROFILE_TIMING由用户在断电/全OST下测量。
观察表66项，PC_fast_kernel_revision=7，新增PC_fast_profile。没有提交、推送或操作硬件。

## 以下第六轮及之前为历史记录

当前为第六轮（PC_fast_kernel_revision=6），目标为new_mpc独立工作目录中的本工程。
两相/三相ON状态采用专用lambda根；其余状态、FULL/SUMMARY和ESO保留第五轮实现。
最新真实CCS增量构建为2026-10-26 17:09:40，0errors/0warnings，OUT e3987113...。
相对冻结第五轮：31750组完整控制输出、140025次区间输出和10对闭环轨迹逐字节相同；
新增191620组专用根检查通过。相对更早piecewise实现的1887次选态差及严格等价FAIL仍保留。
当前静态弱下界4910cycle/24.55us，超过4000cycle周期及1628cycle名义写前窗口。
用户已确认版本6并反馈单次21217cycle，较第四轮23425少9.4258%（同测试条件假设），
按配置200MHz为106.085us；仍超周期预算，不能宣称实时合格。HardwareRelease保持0。
原图、条件限制及Fault32解释见`validation/BENCH_RT6_20261026.md`。
当前观察表65项。完整证据见`validation/RT6_REPORT.md`和`validation/RT6_BUILD_AUDIT.md`，
仅由用户按`BENCH_TIMING.md`在无主功率、全OST条件下执行单次请求2计时。
main及19个时序/外设/保护等受保护目标文件指纹未变；没有提交、推送或操作硬件。

**以下是首次移植（44f0ec5）的历史交付记录。旧10.44us等数值不是当前构建耗时；
最新结论以RT_OPTIMIZATION及validation/RT6_REPORT.md为准。**

2026-10-25，分支new_mpc；基线1c93fcd。唯一CCS项目为本目录的
`vienna_pcmfpc_zcdc_F2837x`，产物`FLASH/vienna_pcmfpc_zcdc_F2837x.out`。
没有提交/推送，没有Clean/Rebuild，没有连接/烧录/上电/清Trip。

**已完成离线迁移、独立测试和TI实际构建；当前时限未通过，不能带主功率运行。**
HardwareRelease=0保持关闭。root0参考已确定超时；root1快速实现仅坐标变换下界
约10.44us，也超过现有8.14us写前窗口。这是下界，不是实际完整耗时或WCET。
没有改ADC/PWM触发、TBPRD、CMPSS/TZ结构或原deadline来隐藏问题。

## 已接入的功能

模式0旧FCS内核，1模式7末级OFF，2末级ON；共用PLL、SI峰值外环和限幅。
完整8门极、二极管阻断预测、双排序/预算/自适应交集和严格末级均在真实ISR调用链中。
ESO使用显式上一完整区间DeltaU和actual/pending历史，输入来源明确为模型重构。
参考和快速内核分开保留；快速候选完整子步不可用，不能解释陈旧RAM。
新观察脚本/TXT有65个表达式，已按真实MAP验证符号及仅观察语法，未在CCS GUI实导入。
事件128拍和10kS/s×200ms波形缓冲、无主功率单次数值benchmark与诊断均已接入。

关键文件/函数见MIGRATION_NOTES.md；时标、数据有效性和benchmark见TIMING.md。

## 验证结果

| 层级 | 已实际执行 | 结论与限制 |
|---|---|---|
| 核心宿主 | float/double各84059检查、12000随机root对比 | 通过；root法切换的强平局差异保留 |
| 独立MATLAB | 1017输入，18,306子步，6变体 | double32全部离散选择一致；有界float32仍16个最终ID差异，500正式轨迹/真实5→2事件一致 |
| fast差分 | 31,750同输入、46,675完整区间 | 对float-piecewise参考普通域逐字段零差；不等于对32轮/MATLAB全部等价，极端溢出域额外安全拒绝 |
| PLL/ESO | 噪声/负序/反相序/频率、显式DeltaU、解析积分 | 宿主通过；MODEL输入与真实极点积分不等价 |
| runtime | 122项真实数学模块+硬件stub检查 | 启停/历史/参考/缓存/benchmark/错误分支通过；未模拟真实ADC/ZERO/TZ及时间 |
| fast失效安全 | 73项非法/极端输入检查 | 通过；原参考极端不物理参数边界问题单列 |
| 独立物理闭环 | 基础9组+扩展9组+默认回归 | 3mH/440uF/20us；不是SLX原论文参数，不含真实CPU执行时间 |
| CCS | CGT25.11.1，最终13:54增量构建 | 原生退出0，Errors0、Problems汇总Warnings4；真实OUT/MAP/ASM已审计 |
| 真实DSP/实机 | 未执行 | 两类时限、栈水位、采样/保护及闭环均未验收 |

Warnings为一项SysConfig Device Support建议及三项旧fcs变量未使用marker；
后者本轮cl2000输出未重新发出，不能以Clean清标记违反用户文件规则。
所有原始日志/CSV在根output/ti_pcmfpc_zcdc_port；可Git审查的概要在validation/。

## 仿真中保留的不利结果

100V线RMS、170V、50ohm基础工况，综合跟踪RMS旧FCS/OFF/ON分别
.090807/.082507/.083148A。ON比OFF约差0.78%，中点略改善，部分低次THD恶化。
实际开关频率不同，不称等损耗收益。时标提前1us时ON也略差，加入近似器件压降时ON略好。
100→50→100ohm负载事件中，母线约跌至145.8V、卸载升至199.1V，2%恢复约34/29ms；
这是共同外环明显动态缺口。204V慢滤波未触发，不能据此认为瞬态安全或动态已达标。
实际只有50ohm负载；100ohm及可逆切换是离线仿真场景。

## 参数和下一步

用户确认F28379D、3mH/相、440uF/半、50ohm且无极点传感器。
据授权计算170V/578W、7A瞬时候选、5.5A峰限、204V滤波OV；不代表实测器件能力。
原父源码和原SLX/MATLAB哈希保留；父.cproject仅增加本目标排除项；main指针未改变。

下一步先优化实时必需量：复用候选首子步old/free abc，拆离不用的pole积分诊断，
显式内联/固定矩阵并逐步重放，再重新检查真实汇编。涉及控制周期、ADC触发或ISR位置
的方案另行设计和验证，当前没有实施。只有时限/采样/保护资格通过后才按PORT_GUIDE
由用户逐级进入低能量闭环；同时再调共同外环动态，不能把其收益归给末级。
