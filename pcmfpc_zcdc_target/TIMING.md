# 采样、预测、实际装载与观测器时标

当前精确恢复第十轮源码/OUT，marker10，观察表66项；采样、预测和提交时标未改。
第十一轮3次19168cycle未较第十轮18924提速，源码与证据保留为实验，当前不采用。
第十轮18924cycle按配置200MHz为94.620us，仍超20us周期；恢复后没有新增板上测量。
粗/细时钟与嵌套root解释以PROFILE_TIMING.md为准，不将root窗口重复累加，也不把模式差全部当读钟开销。

保留CPU200MHz、ePWM100MHz、TBPRD1000、50kHz。上数CMPB814触发SOCA，
下数CMPC814触发ISR1。相对ZERO：8.14us触发，10us PERIOD，11.86us中断，20us加载。
中断到下一ZERO为8.14us=1628CPU周期；原40TBCLK guard保留，三相连续影子写入不得跨ZERO。

```text
previous sample       ZERO                 current sample        ZERO/load       prediction end
   ~10us ------------20us--------------------~30us----------------40us---------------60us
          old gate     |   previous pending      current gate      | new candidate 20us
     ESO segment 10us  | ESO segment 10us       first prediction10us
```

第一预测10us+候选20us，不是论文原50us+50us；MATLAB oracle已显式推广两段长度并回放。
本次没有额外软件Unit Delay，也没有改为ISR内立即GPIO导通。
`pcmPendingState`在成功影子提交后更新，`pcmActualAppliedState`在下一个ISR中、
已经跨过ZERO后才取该状态；Trip覆盖为0并使观测历史失效。
普通停止只提交下一个ZERO的OFF，不会提前声称当前ON已实际OFF。

ADC四次平均不是同时采样。按100ns采样窗+210ns转换的串行近似，
A/B/C电流平均保持端点约9.635/9.945/10.255us；相电压约8.705/9.170/9.480us。
这些是寄存器配置推算，不是实测。统一10us及共同电压时角仍是硬件适配近似，
模拟RC、隔离传感器、驱动传播和实际采样偏斜需要台架测量，不能仅把6.8us RC直接相加。

PLL输出本次采样时刻有界theta；Fhat在该dq坐标下初始化/更新。
ESO重构上一个完整采样区间，分旧状态10us、新实际状态10us，每段内部两子步阻断模型。
极点dq积分按子步投影电压和角度旋转解析积分，来源MODEL，不是硬件测得的pole电压。
首次无历史只初始化ESO，不能将零DeltaU伪装成一个已执行的区间。
故障/重启时清ESO和预测历史；停机期间PLL仍可锁相，不每拍清PLL导致无法启动。

## 计时与放行

`pcmAlgorithmCycles`：纯PC_run或PC_run_fast计时；`pcmWriteCycles`：控制主体开始到三相影子写完；
`pcmBodyCycles`：含采集/影子的整个C主体。200cycles=1us。
这些都不包括完整硬件向量进入/退出开销，GPIO12与中断入口/出口仍需实测。
原deadlineMissCount和超时OST保留；主体超过20us也触发OST。
InputFaultMask的bit0..2标识电流非有限、3..5标识网压非有限、6/7标识上/下母线
非有限或非正；MeasuredDQ_A只在PLL锁定且InputsValid时有效。
ReferenceSaturation=1表示外环下限，2表示上限，0表示未限幅。
默认hardwareRelease=0、shadowEnable=0，不自动运行高开销内核或出门极。

32轮参考路径有18次子步求根、576轮三相投影；真实汇编的保守工作量下界已超过
8.14us窗口及20us周期。完整输出memset单独也超过写前窗口。
root_method=1改用独立PC_run_fast，移除全量清零并共享角度节点；
ESO同样用fast区间函数但明确要求完整子步。fast候选只保证summary，
`pcmOutputDetailValid=0`、root_iterations=0xffff表示完整候选子步不可用。
分段根及共享浮点运算仍须按差分报告解释，且没有板上WCET。
第六轮实际CGT汇编中，控制子步最少196组，generic根75组、dense根79组。
八个候选各两子步固定包含8次generic和8次dense根，加上首次两子步，
混合路径静态弱下界为18*196+8*75+8*79+2*75=4910cycles=24.55us（配置200MHz）。
初始状态也有两相以上ON时为4918cycles；未计plan/seed、入口出口、排名、PLL/ESO/ISR、
分支延迟及存储停顿等。该下界已超过1628cycle写前和4000cycle整周期预算，
不能当作实测耗时或WCET。错误提前退出不能算正常控制通过。
第四轮4860下界、第三轮6408下界均为历史审计，不能据差值判断本轮快慢。
用户27485/23425cycle分别属于第三/第四轮；后续用户确认版本6并反馈21217cycle，
按配置200MHz为106.085us，BodyMax22706cycle。原图及限制见validation/BENCH_RT6_20261026.md。
历次不同子集的下界不可相减作实际提速率，最新快照见RT_OPTIMIZATION。
在两类时限、PLL、保护和输入时标验证前不能打开硬件放行。
静态审计详见根输出resource_timing_audit，不能把宿主运行时间当成DSP WCET。

## 全关断单次数值计时

`pcmBenchRequest=1`请求参考32，`=2`请求fast。只在HardwareRelease=0、
三个closeLoop=0、actual/pending=0且三相TZFLG均有OST时接受；每次请求自动清0。
使用固定的独立数值输入，不替换ADC、PLL、ESO输入，不提交计算出的门极。
结果见BenchStatus/Cycles/CyclesMax/Count/SelectedId/HWState。
status=1完成，2条件拒绝，3非法请求，4内核错误；Count只计实际执行次数。
当前快核心下界已超20us，因此真实DSP单次快benchmark也可能同时出现status=1和
PERIOD故障；这是数值成功后周期守护生效，不能通过关闭守护消除。
该计时仅含一个固定工况的core，不包括ESO/PLL，也不是最差ISR时间证明。
原周期守护仍执行，参考benchmark可能使Body超过20us，触发PERIOD/OST并复位ESO历史；
不为计时豁免保护。禁止在带主功率时运行，也不通过工具自动写这些变量。

## 记录与导出

事件缓冲128条，每控制拍可记录，共2.56ms；满后停止并增加溢出计数，不阻塞ISR。
记录冻结在本次pcmInput的参考，不能用同拍后算的新外环参考解释本次gi。
`output_source`=0本拍无PC结果、1控制、2影子、3独立数值计时；事件记录只将
source1/2、core_status=0、合法ID的预测/成本视为有效，其他预测/成本字段填0。
Watch中的完整substep只有DetailValid=1才可解释，旧RAM不是当前fast轨迹。
最新PC_run_fast采用CONTROL_ONLY；`pcmOutputIntegralValid=0`和
`PC_fast_output_integrals_available=0`表示各interval积分仅为0占位，不能当作物理积分。
独立SUMMARY/FULL入口仍生成真实模型pole积分，ESO仍请求FULL；当前观察表为66项。
三条原始寄存器指针cast在用户CCS中被拒绝，已从观察脚本移除；如需查看Trip flags，
使用Memory Browser的Data页/16-bit Hex只读查看0x4093、0x4193、0x4293。
波形缓冲2000条，50kHz每5拍箱形平均，10kS/s、200ms；theta取5拍窗口中心。
它提供明确率和长度的基础采集，但5点箱形仅是弱抗混叠，不能单凭该缓存宣称实机
2..40次THD已测准；应使用已验证的抗混叠链/带宽与独立电流仪器，并保存原始数据。
CCS表达式低速刷新不代替控制拍波形。
导出时先停止采集、确认count稳定，按CCS数组/字段导出为文本，保留count、tick、
Ts=20us、wave decimation=5、模式和固件SHA256。不要硬编码宿主二进制字节布局，
C28x的char与地址单位为16位，和宿主8位不同。
