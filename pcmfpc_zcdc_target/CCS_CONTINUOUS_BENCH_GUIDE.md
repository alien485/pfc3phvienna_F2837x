# 连续数值测试与中断计时：Runtime5

2026-10-28。当前为 Runtime5 / Kernel12 / Timing2，控制频率仍为4 kHz。
本次只增加停止状态的连续数值测试和计时观察，没有修改算法、频率、PWM形式、ADC或保护配置。

## CCS操作

1. 主功率断开，Refresh并Build子工程；不用Clean/Rebuild。CPU1通过
   `Run > Load > Load Program`重新加载本目录的`FLASH/vienna_pcmfpc_zcdc_F2837x.out`。
2. 从main点击Resume，等待约6.25 s初始化，确认`VIENNA_pcmTick`增长。
   识别值应为`VIENNA_pcmRuntimeRevision=5`、`PC_fast_kernel_revision=12`、
   `VIENNA_pcmTiming.revision=2`、`VIENNA_pcmTiming.control_hz=4000`。
3. 运行本目录`setupdebugenv_pcmfpc_zcdc.js`，或导入`CCS_Expressions_PCMFPC_ZCDC.txt`。
   新观察表为79项；旧表不会自动出现新增变量。
4. 保持`VIENNA_pcmHardwareRelease=0`、`VIENNA_clearTrip=0`、三环全部关闭，
   `VIENNA_pcmActualAppliedState=0`、`VIENNA_pcmPendingState=0`、`VIENNA_pcmFault=0`、三相OST置位。
   OST可在Memory Browser以16-bit Hex查看0x4093/0x4193/0x4293，bit2应为1。
5. 保持`VIENNA_pcmBenchRequest=0`，在Expressions中**只写一次`VIENNA_pcmBenchRepeat=5`**。
   每次中断只执行一次请求5夹具，`BenchCount`持续增长、`BenchStatus=1`。
6. 看下面表格中的值。结束时**写`VIENNA_pcmBenchRepeat=0`**。
   本拍若已开始会正常完成，后续不再测试。若变量自动回0，先查看Status、Fault及停止条件，不要反复强制写5。

| 变量 | 含义/单位 |
|---|---|
| `IntruTime_us` | 本拍CPU定时器测得的代码区间时间，已换算为微秒 |
| `IntruTimeMax_us` | 从本次程序启动以来上述区间的最大值，微秒 |
| `IntruCpuCycles` / `IntruCpuCyclesMax` | 上述区间的本拍/最大CPU计数；按配置200 MHz，除以200得到微秒 |
| `VIENNA_pcmBenchCycles` | 请求5或6自身计时区间的CPU计数，不等于整个ISR |
| `VIENNA_pcmBodyCyclesMax` | 控制C主体既有计时的累计最大值，不含整个ISR入口/出口 |
| `VIENNA_pcmBenchCount` | 成功进入数值计算的次数；不是功率控制运行次数 |
| `VIENNA_pcmBenchStatus` | 1成功、2停止条件不满足、3非法请求、4数值错误；0为初始空闲 |
| `IntruStratPoint` / `IntruEndPoint` / `IntruDifPoint` | 保留的TBCTR原始观察值与绝对差；跨ZERO/PRD折返时绝对差不能换算耗时 |

停止连续测试后，`IntruTime_us`会恢复普通停止拍的较小值；`IntruTimeMax_us`保留。
CCS实时刷新多个变量并非同一拍的原子快照，避免拿不同时刻的起点/终点重新相减。
如需比较独立测试的最大值，重新加载并初始化后分别测试；最大值不会在Repeat写0时清零。

## 为什么不用一直写BenchRequest=5

`BenchRequest`保留单次触发语义，执行时会清0。把赋值硬塞进ISR会失去正常停止方式。
新增`BenchRepeat`只接受0、5、6，不使用while循环；每次中断重新核查停止/OST条件。
非零单次`BenchRequest`优先执行一拍，之后继续Repeat；操作时保持Request=0可避免混入其他测试。
任何故障、非法值、数值失败或周期超时都会取消Repeat。
连续测试中若尝试启动/清Trip，启动检查会先取消Repeat并拒绝本次启动；不会用夹具门极去驱动功率管。

也可以先写0，再写`BenchRepeat=6`，连续测量请求6。
请求5包含MODEL积分重构，6在其内部计时前准备同一积分；但是**整个中断仍要做请求6的准备工作**，
所以`BenchCycles`的5/6差异不等于`IntruTime_us`的5/6差异。

## 计时范围及限制

`vienna_main.c::ISR1`读取现有CPU Timer0，围住`VIENNA_pfcControlCode()`和PIE中断清除，
包括少量采集读数开销，不包括ISR入口/出口保存恢复，也不包括之后的时间换算/最大值更新。
没有重配、重载或清零CPU Timer0。使用实际PRD处理一次回绕，假定区间小于其计数周期且定时器保持运行。
按工程现有Timer0零预分频及200 MHz配置换算，尚未独立测量板卡实际时钟。

TBCTR为上下计数；连续运行请求5后测量区间可能跨ZERO，因此`IntruDifPoint/100`仍可能偏小。
请使用`IntruTime_us`，不能把连续测试理解成修复了TBCTR绝对差公式。

本测试使用固定合成夹具、保持三相OST，测量的是停止路径加数值测试。
它不能证明实际ADC/PLL/ESO闭环的所有工况耗时、写前截止时间、最坏执行时间或带载安全。
4 kHz的整周期为250 us，当前写前预算仍为122.75 us；两者不能混用。
本次没有进行主功率测试或目标板下载操作，仍未放行100 V线RMS/50 ohm带载。

## 已做验证

- 实际运行层HOST测试755项通过，包含连续5/6、停止、单次优先、非法值、故障及启动互锁。
- 独立HOST白盒故障注入6项通过，覆盖数值失败和profile时钟失败后的自动停止。
- TI CGT25.11.1.LTS增量编译/链接通过，0错误、0警告；79项观察符号见map。
- 当前构建与文件保全审计见`validation/CONTINUOUS_BENCH_BUILD_AUDIT.json`。

算法和名义0.8 s物理回放的历史依据见`CCS_RUNTIME4_GUIDE.md`；本次没有重跑物理闭环或宣称新的性能提升。
