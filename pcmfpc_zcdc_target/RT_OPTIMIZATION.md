# 实时路径优化记录

2026-10-26第四轮已实现CONTROL的lambda活动集解析根，FULL/ESO保留原根。
当前OUT为52971695...，实际CCS构建0errors/1warning；数学/安全检查通过，
但扩展31750回放有1887选态差，严格浮点等价为FAIL，原1017参考输入选态不变。
当前必经区域保守下界4860cycle/24.30us，仍不满足4000cycle周期，不放行带功率。
本轮完整结论见validation/RT4_REPORT.md，构建、差异与闭环证据见validation/RT4_*。
以下三轮快照是历史，不能把旧27485cycle测量或6408下界当当前OUT的实际耗时。

2026-10-25，本轮起点为用户已同步的new_mpc提交44f0ec5。
原1c93fcd仍是父FCS工程的历史算法基线；不将用户新提交回滚成旧HEAD。
当前仅在唯一pcmfpc_zcdc_target继续实现，未提交或推送本轮改动。

2026-10-26用户反馈首次板卡数值计时：BenchStatus=1/CoreStatus=0、Count=1，
BenchCycles=27485，BodyCyclesMax=28973，Fault=32（PERIOD），实际/待执行门极均0。
按配置200MHz分别为137.425us/144.865us；实际主频未独立核验，单次结果不是WCET，
Body计时也不是完整ISR。已确定该样例超20us及8.14us预算，不能放行带功率。
详见validation/BENCH_20261026.md及bench_20261026.json；原截图保存在根output的bench_20261026。

交付复查发现参考此前在16:23做过diagnostic数组一次性赋值兼容修复：MATLAB当前指纹
6be3a96d...，不是旧A77...。旧A77 backup核对准确，诊断块外控制源码逐字相同；
独立MATLAB实际比较1017模式7输入及336组八模式输入，全部六输出全同，另751等时长
适配器对原函数通过；当前SLX内控制脚本与当前.m相同。没有重跑整个SLX接线/InitFcn/性能。
历史manifest未改，当前指纹及精确兼容范围见validation/REFERENCE_COMPATIBILITY.md。

## 当前范围与约束

保留50kHz、CPU200MHz、TBCLK100MHz、TBPRD1000、CMPB/CMPC814，
原ADC、AQ shadow、CMPSS/TZ和写前40TBCLK守护均未调整。
7A瞬时、5.5A参考峰限、204V滤波OV仍是上一轮授权计算的候选配置，未重新整定。
HardwareRelease=0；本代理未连接、烧录、清Trip或运行真实DSP；用户的固定数值计时另有记录。

本轮目标是在模式7的8候选、双子步、双排序、0.02A预算和严格末级不变的条件下
降低软件计算开销。原PC_run、PC_predict_interval保持不变；未写入权威MATLAB/SLX。

## 已实施的变化

- 共享八候选首子步的old/free abc、断点稳定排序及各相端点on/off投影；
  候选自己的第二子步、中点和根仍分别计算。
- 控制路径采用PC_FAST_CONTROL_ONLY，不再计算控制选择不用的pole积分；
  FULL/SUMMARY接口保留真实模型积分，ESO仍使用FULL。
- 控制预测18子步内部坐标变换由72次减至40次；这个计数不是DSP耗时。
- 增加PC_fast_output_integrals_available和VIENNA_pcmOutputIntegralValid。
  无效时积分字段为0占位，不能解释成物理积分为0或送进ESO。
- TI小函数显式内联；大函数内联造成的寄存器溢出和栈帧寻址进一步单独评估。
- 构建脚本先离线核对.ccxml的安装数据库引用，避免C编译成功却漏掉调试配置错误。
- 交付检查将历史基线改为祖先验证，允许用户正常提交新版本。

## 三轮构建和证据边界

| 快照 | 实际构建 | 数学/宿主结果 | 静态筛查 |
|---|---|---|---|
| pass1 | 17:25:33链接，0errors | 同输入控制结果与44f0ec5一致 | root固定前缀下界10.8us，仍超8.14us |
| pass2 | 17:31:10链接，0errors | 31750控制回放、三种区间各46675、实际fast闭环10对均一致 | 单候选最短572组×8=4576cycle=22.88us，超写前及整周期 |
| pass3 | 20:42:56链接，0errors | 同输入回放、安全85/runtime127/PLL-ESO/10对实际fast闭环均通过 | 18×(CONTROL174组+root182组)=6408cycle=32.04us，仍超两个预算 |

pass1早期脚本未去除标签尾空格，曾把条件分支误作fallthrough，得到13.68us草稿；
修正并断言所有控制转移目标可解析后为10.8us。pass2草稿47.52us也已更正为22.88us。
当前只引用修正结果；第二种基本块CFG/Bellman-Ford独立复核亦得到572组。
这些数值是保守串行发射工作量下界，不是实测时间、平均时间或WCET，不能互相相减作提速率。

pass2大内联虽移除调用，却产生264word帧；最短候选路径65.4%为MOV类，
大量FP大偏移装载成为主要瓶颈。第三轮已引入分离的PF_RootWork/PF_ControlWork/
PF_SelectWork，CONTROL调用独立pf_control_interval，root/interval不再大规模内联。
PC_run_fast最大帧从264降至88word，RAM代码从14154降至11947word；.bss从2960增至3110word。
所有实际快路径callee在RAM，没有实时Flash库调用；全程序栈水位仍待实测。
这证明代码和栈布局改善，但不能把不同子集下界相减作实际提速率；当前仍不具备闭环时限。

第三轮fast.c SHA256为`b8665494d2fd304f3b644c451dbf0f479b0380913f42350ab3a798260ada00a8`。
当前OUT SHA为`8c8251baff6b1e1938c3e6c8d531643ffd261c1e05e3c729bcfb7e42527bddd5`。
编译器仍CGT25.11.1；Problems为0errors/4warnings（原SysConfig建议和unused markers）。
无主功率单次计时步骤见`BENCH_TIMING.md`，不得用它放行带功率。

## 已完成宿主验证

31,750同输入回放的成本、排序、集合和门极精确一致；真实PC-OFF5→ID2事件保留。
FULL/SUMMARY/CONTROL_ONLY各46,675直接区间、85项安全、127项runtime及PLL/ESO通过。
两个10us实际历史段、两根方法×8门极的16个非零积分与原参考逐值一致。

实际fast闭环使用显式测试编译宏TI_CLOSED_LOOP_FAST=1，比较旧44f0ec5与新fast，
覆盖名义50ohm、L/R噪声、ADC提前、压降和100→50→100ohm事件；10对/20次运行
全部指标一致，130000行新CSV与旧CSV逐字节一致。默认root32另有13000行原字段回归。
这些模型均假设计算及时完成，不是带延迟/迟到的实机闭环。

名义50ohm实际fast OFF/ON跟踪RMS约.0827113/.0826541A，
与上一轮root32的.0825067/.0831477A属于不同根方法轨迹，不能混用。
本轮优化不改变fast轨迹；未据此宣称末级在所有工况更优。

原始证据集中根output/ti_pcmfpc_zcdc_port/rt_optimization，按before、pass1、pass2及
round2/round3分开保留，没有覆盖上一轮18组硬件参数仿真或原MATLAB oracle。
最新概要将随validation/RT_*文件保存，便于Git审查。

## 后续方向

已有三轮结果说明仅靠共享变量、去诊断和内联组合不能证明满足现有8.14us窗口。
最有依据的软件数学方向是电流变量lambda=(h/L)*mu下的有限活动集解析根：固定导通集
H(lambda)=B+N*lambda，N为0..3，每OFF相最多一个内部阈值，最多四个区间。
这保留同一实数二极管模型，但改变浮点运算顺序，必须重新报告近似平局、零向量和门极差异，
不能再宣称与前三轮逐位一致，也不能预先承诺实时通过。第四轮已实现此实验方向，
保留严格差异FAIL及实时预算FAIL，详见validation/RT4_REPORT.md。

另有只在tests/进行的时标可行性评估。它不改变当前DSP时序，也不授权修改ADC/PWM或清Trip。
部分低频场景出现严重中点失衡/半母线失效，不能靠降频直接使当前固件可运行。
4种时标×3模式×名义/L-R噪声共24组中，20组完成、4组10k场景失效提前结束。
20k中心采样的末级ON在L/R噪声下中点RMS约159.96V，已经严重失衡；10k新控制
出现半母线非正退出，部分先触发7A。没有为通过而放宽0.02A预算或保护。
这批测试只实现7A/204V动作，没有完整模拟原50V差压/415V半母线GUI守护及core错误时
runtime的OST锁存，不能用trip=0宣称保护通过，失败后也不能推定实板会继续运行到负电压。
默认50k三模式各13000行轨迹及原指标与参数化前逐字节相同。软件GUI滤波仍保持原带宽。
评估完整结果见validation/TIMING_FEASIBILITY.md；真实DSP计时、时标/保护及外设调整仍需
单独资格依据。本轮没有把任何备选时标写入DSP工程。
