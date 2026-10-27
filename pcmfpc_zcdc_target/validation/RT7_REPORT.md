# 第七轮：精简交集、局部角度及一次性分段计时

2026-10-26，继续既有new_mpc工作目录pcmfpc_zcdc_target。版本标记7，观察表66项。
基线为第六轮实际fast源57454914.../412bd5cd...与用户固定样例21217cycle。
该历史样例不是第七轮测量。本代理没有连接、加载、烧录、写目标变量或运行主功率。

## 实现与边界

1. PC_run_fast的候选交集改为直接整数构造，消除反复重建中点排序前缀的扫描。
   所有mask/count/prefix、空集错误、稳定排序及PC-OFF选择语义保持。
2. runtime中fast控制、shadow与benchmark只计算最终交集角度；参考root0仍保留全候选诊断。
   PC_default_config和核心对diagnostic_all_angles的语义保持，未改变用户的仿真参考。
   跨策略只有未交集gz和zcdc_diag[4]的诊断不同，不得解释这些占位值为完整角度集合。
3. 新增PC_fast_profile_configure/arm及PC_fast_profile结果。请求3/4仅分析一次fast调用；
   普通调用不读取新增分析时钟，并保留完成报告。请求2为未插入分析读钟的fast总计时。
   使用Timer0的既有只读回调，period模数PRD+1=2000001；原pc_elapsed和所有时序配置未改。

没有改变八个候选、双子步预测、二极管模型、根/残差、坐标浮点公式、范数预算、排序平局、
ZCDC激活条件或原1e-12判据。14个根/模型/变换/排序/初始化函数体对第六轮逐字符相同。
没有用降低ADC/PWM频率、延长加载窗口、调整CMPSS/TZ或保护参数来争取通过。
main及用户父目录Kit.json改动保留，17个受保护目标文件前后SHA另行核对。
最终检查观察到main引用由756e806推进至独立提交81822e3；工作目录82个文件的内容与本轮
开始时完全一致。该提交没有合并到new_mpc，未用其中参数覆盖PCMFPC的现有保护或控制配置。

## 已执行验证

| 检查 | 结果 |
|---|---|
| diagnostic_all_angles=1，同策略对第六轮 | 31750完整PC_Output、140025区间输出逐字节0差 |
| diagnostic_all_angles=0，同策略对第六轮 | 31750完整PC_Output、140025区间输出逐字节0差 |
| 诊断策略1到0 | 31750例仅允许未交集gz及diag[4]变化，其余原始字节0差 |
| 实际交集helper | 全256mask*8!排列，10321920例0差 |
| 一次性分析器 | 81项fake-clock检查通过：回绕、读数范围、stage和、错误返回、单次消费、输出不变 |
| 安全/runtime/ESO | 85/299/16项通过，原门极/故障守护保留 |
| HOST闭环 | 10个轨迹CSV与10个指标JSON对第六轮逐字节相同 |

根和独立double模型的已有判据保持，本轮没有为相同函数体无条件重跑全部旧模型测试。
相对早期piecewise的1887次选态差及严格等价FAIL仍保留，没有把本轮对第六轮等价当成
对最早参考实现的全域等价。HOST结果也不是TI浮点逐位证明或实机性能证明。
最终HOST证据host/pass2；pass1仅baseline头搜索路径编译失败，未执行测试，原日志保留。

## 实际TI构建

本次CCS控制台启动器退出1且stdout/stderr为空，未进入编译；直接Java尝试退出15，
同样没有进入编译。未声称这两个启动成功，也没有清理安装、工作区或项目来规避问题。
改用现有CCS生成的FLASH/gmake all增量规则（先-n核对无clean），真实CGT25.11.1编译/链接
nativeExit0，0error/0warning。没有重新生成SysConfig或改CCS编译/链接参数。

- 链接时间：2026-10-26 21:57:56。
- fast.c SHA256：530a0d979fc4938e2b04ea954964fa5a3ad50666a551a9fecd61c63e4d3c5f31。
- fast.h SHA256：8548b529e9abcbf1c6715de05cb3dd723bd79d92938430eac5f595723b04fc17。
- runtime.c SHA256：bb90b1a62c1655f740908796c2a2f5470f70c2bb9474df0e8b0e48296e29258c。
- OUT SHA256：928bb780011e931ce7b9f82f805cb65e458b66193fb5d22085e2376f791ec405。

32个固定源/产物快照在build_pass7；实际RAM/ASM/回调/栈审计见该目录AUDIT。
代码13645/16384word，BSS3222/4096word；新增分析代码/门控也有开销，不能只凭减少
角度评价和整数循环便宣称板上提速。现有20us整周期和8.14us名义写前资格仍未通过。
实际21函数/42调用及尾调用位点的绑定闭包均在RAM；回调仅VMOV32读取0xc00并返回，
初始化绑定的是RAM RUN地址。关闭分析时实际分支跳过begin/stage/finish及root读钟。
PCrun帧88word，CONTROL40（原36），dense30/generic20；已知normal generic链244、
FAST FULL466/reference506word，分配896word。这些不是全程序栈水位或中断嵌套证明。
部分helper规范化ASM相同；dense多DP切换，FULL原根有load/DP调度变化，浮点算术序列保持，
没有声称所有机器指令逐条相同或以此代替目标DSP的逐位测试。

## 用户下一步

用户后续三张图直接显示版本7，并确认21138为请求2、profile为之后的请求3。
普通计时21138cycle/配置200MHz为105.690us，较第六轮少79cycle/0.37234%，单次且同条件假设。
coarse八阶段相加21497；mode1/valid1/completed1/core0/read11/clock_fault0均符合契约。
候选14823占68.95%，延迟1783占8.29%，select2142占9.96%；angle_calls1，angles470占2.19%。
不能把整个候选桶都当成根；mode1的root_cycles/root_calls0不代表未求根。
原图及完整边界见bench_20261026_round7/REPORT，下一步继续当前固件请求4，无需重编译。
本次跟进只归档数据，没有再修改控制源码或外设/保护、构建或操作硬件。

此后用户请求4反馈Bench23071/Count3，fine总22817，mode2/valid1/root_calls18/read47/
clock_fault0均符合契约。根窗口9005占39.47%，预测桶内根窗口外8921占39.10%，其余4891。
fine较coarse多1320，全部出现在两预测桶，含额外36读钟的扰动，不自动校正为纯算法成本。
证据在bench_20261026_round7_fine/REPORT。数据已足以确定根与预测非根的并行优化方向，
无需继续重复本轮基准。不带分析的版本比较仍用请求2的21138，硬件放行仍0。

只加载本目录CPU1的OUT，初始化后核实PC_fast_kernel_revision=7。
保持主功率断开、HardwareRelease/clearTrip/三个closeLoop0、实际/待执行0及三相OST。
先请求2保存未插入分析的BenchCycles；再请求3保存PC_fast_profile全部字段；必要时请求4。
请求3/4增加分析读钟，不能拿其BenchCycles与旧未分析计时直接比较。
root_cycles已包含在delay/candidates中，不得再加到total；须检查valid/completed/core_status/
clock_fault/mode。完整阶段、读钟、暂停和回绕限制见PROFILE_TIMING.md。
Fault32可以与数值成功同时出现，原周期守护继续执行，不清Trip或提高放行来绕过。

源码、宿主测试、TI构建与板上资格分别记录；本轮没有提交/推送或删除文件。
