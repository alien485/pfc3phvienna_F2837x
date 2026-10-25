# 采样、预测、实际装载与观测器时标

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
最终CGT正常成功路径中，两种变换各36次，函数分别31/27条顺序指令组（并行已合组），
仅此2088cycles=10.44us已超过1628cycle窗口；不含求根/排序/PLL/ESO/ISR，
所以当前fast也确定不能满足写前时限。错误提前退出更快不能算正常控制通过。
在两类时限、PLL、保护和输入时标验证前不能打开硬件放行。
静态审计详见根输出resource_timing_audit，不能把宿主运行时间当成DSP WCET。

## 全关断单次数值计时

`pcmBenchRequest=1`请求参考32，`=2`请求fast。只在HardwareRelease=0、
三个closeLoop=0、actual/pending=0且三相TZFLG均有OST时接受；每次请求自动清0。
使用固定的独立数值输入，不替换ADC、PLL、ESO输入，不提交计算出的门极。
结果见BenchStatus/Cycles/CyclesMax/Count/SelectedId/HWState。
status=1完成，2条件拒绝，3非法请求，4内核错误；Count只计实际执行次数。
该计时仅含一个固定工况的core，不包括ESO/PLL，也不是最差ISR时间证明。
原周期守护仍执行，参考benchmark可能使Body超过20us，触发PERIOD/OST并复位ESO历史；
不为计时豁免保护。禁止在带主功率时运行，也不通过工具自动写这些变量。

## 记录与导出

事件缓冲128条，每控制拍可记录，共2.56ms；满后停止并增加溢出计数，不阻塞ISR。
记录冻结在本次pcmInput的参考，不能用同拍后算的新外环参考解释本次gi。
`output_source`=0本拍无PC结果、1控制、2影子、3独立数值计时；事件记录只将
source1/2、core_status=0、合法ID的预测/成本视为有效，其他预测/成本字段填0。
Watch中的完整substep只有DetailValid=1才可解释，旧RAM不是当前fast轨迹。
波形缓冲2000条，50kHz每5拍箱形平均，10kS/s、200ms；theta取5拍窗口中心。
它提供明确率和长度的基础采集，但5点箱形仅是弱抗混叠，不能单凭该缓存宣称实机
2..40次THD已测准；应使用已验证的抗混叠链/带宽与独立电流仪器，并保存原始数据。
CCS表达式低速刷新不代替控制拍波形。
导出时先停止采集、确认count稳定，按CCS数组/字段导出为文本，保留count、tick、
Ts=20us、wave decimation=5、模式和固件SHA256。不要硬编码宿主二进制字节布局，
C28x的char与地址单位为16位，和宿主8位不同。
