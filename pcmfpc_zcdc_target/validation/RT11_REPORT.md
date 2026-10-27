# 第十一轮：坐标复用实验与精确分量省算

当前new_mpc唯一子工程版本11。两种改变浮点坐标往返的A/B方案已经拒绝；正式安装的是C精确依赖消除方案，控制实现仅fast.c/.h改变。观察表仍66项，外设/保护/时序参数保持，HardwareRelease继续0。

## 为什么没有采用直接坐标复用

A用第一根raw nextABC代替第二步旧电流；B缓存Clarke量，以rho=c1²+s1²重建。两者电流预测和gi未变，但np2/gu存在微伏量级变化，并沿排序并列判据传播：pf_rank(gi,gu,sw)在gi并列时仍比较gu，故电流排序/前三、交集/pcOff/最终selected都能变化。
每种诊断策略31750输入中，A/B分别122/121次选态不同，最大np误差7.629e-6/3.815e-6V；全部选态变化仍在24626项硬件参数筛选组内，该组3856近零项中分别71/70次变化。筛选是报告分组，不是实机实验，也未重设任何接受或保护阈值。
两者各10条HOST闭环轨迹均变化，跟踪/中点/零窗/THD指标有升有降，未证明整体改善。因此严格FAIL保留，没有加epsilon掩盖，也未把这两个原型放进运行固件。数学推导及原始差异哈希见RT11_COORDINATE_DERIVATION/RT11_AB_VALIDATION和硬件子集报告。
预先scope把active视为隔离不变量过强：它也依赖pcOff选到的blocked标志；已在推导明确更正，但没有改预先文件或借此接受差异。此次active实际未变，拒绝结论不受影响。

## 最终实施的C方案

新增always-inline私有函数pf_dq_to_abc_on，仅用于N8候选第二子步的old电流。
hw0全关断时不计算旧坐标；hw1仅计算原a；其他mask保留原a/b及所需ON相的-a/2±sqrt3half*b。后续neutral只读取这些已赋值的ON分量，且仍按phase0→1→2累加；未写OFF private scratch不会被本路径读取。
没有用KCL补集、rho=1或坐标互逆恒等式。所需分量的原乘加表达式保持；N1延迟/standalone、freeDQ/根输入、FULL/ESO、全部候选/子步、残差/阻断/代价和失败触序均保持。新helper完全内联，没有新增ABI函数调用或全局状态。

## 正式验证与构建

正式证据为host/pass2、formal_closed_loop/pass2和profile_replay：双策略各31750完整输出/140025区间，对冻结第十轮全字节、状态、排序、选态和阻断零差；24912 CONTROL、80计时、325551根、1464公参边界、1536合法alias、安全85/runtime299/ESO16全部通过。10个CSV和10个metrics JSON全同，127008次普通/粗/细对照零差。19执行源/快照/报告指纹一致。
最初pass1用的是正确基线与marker11，但状态文字漏换旧ROUND9标签；旧报告未改，修正新driver文字后重跑pass2作为权威证据。

TI CCS生成的gmake增量规则，CGT25.11.1.LTS，native0，0错误/0警告，未Clean/Rebuild或连接目标。链接时间2026-10-27 20:48:10，OUT SHA256：
`f8128de38d9653df32c002aff259a4e036dd9549a9e1e115563b7ac2492b147b`。
实际代码15443/16384字、剩941，比10增加176；BSS3242/4096字、剩854，全部137个.bss符号条目（含section labels）的实际地址/大小与10相同。23函数/54静态调用闭包在RAM，19既有辅助函数规范化汇编相同。
普通/细核frame88/88，比10各增加2字，PC_run_fast72保持；已知bench链302/302字，栈分配896。这些不是后台/自动中断帧/全部分支或实测水位证明。目标FPU普遍等价、完整ISR和WCET仍未证明。
22受保护目标文件、main82个tracked文件及父Kit用户编辑指纹保持。原1887选态差及历史严格等价FAIL保留，不作为本轮已修复项。没有删除、提交、推送、烧录、清Trip或写目标。

## 下一次板上计时

第十轮用户单次18924cycle（配置200MHz时94.620us）作为当前比较基线；仍超4000cycle周期和1628cycle名义写前窗口。第十一轮尚无板上耗时。少算FP表达式同时引入mask分支和少量栈开销，不能预告净提速。

按BENCH_TIMING.md，保持主功率断开、HardwareRelease=0、各环停止、三相OST及实际/待执行状态0，由用户加载当前子工程CPU1 OUT并初始化。确认PC_fast_kernel_revision=11，单次写BenchRequest=2，等Request回0/Count增加1，保存Status/Cycles/Count/SelectedId/HWState/Fault，与18924比较。JS/TXT无需重导。不加载A/B实验原型，不清Trip或提高放行来绕过条件。
