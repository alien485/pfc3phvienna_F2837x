# 当前固件的无主功率单次数值计时

当前已更新为Runtime4/Kernel12/4 kHz，唯一当前步骤见`CCS_RUNTIME4_GUIDE.md`。以下旧OUT/2 kHz结果按历史保留；现在先测同夹具请求5/6，不用旧数值判定新时限。

2026-10-28追加固定请求5三次均27718cycles，Status1/Fault0/DeadlineMissCount0；
用户文字反馈BodyCyclesMax29912。按配置200MHz分别为138.59us、149.56us。
固定夹具重复测时结束；完整写前路径/ISR及7A离线闭环问题仍待验证，见 `validation/BENCH_2KHZ_REQUEST5_REPEATS_20261028.md`。


此步骤由用户在真实DSP上执行。本代理没有连接调试器、烧录、上电或写目标变量。
保持交流主功率断开，按实际板卡资料仅供控制/辅助电源；不能拿主功率运行做计时。

当前为2026-10-28的2kHz直接FCS计时试验，内核仍为第十轮 `PC_fast_kernel_revision=10`。
必须重新Load Program、Resume并完成初始化，展开 `VIENNA_pcmTiming` 确认新时标；只看marker10不能区别旧50kHz固件。
本轮完整周期预算为100000CPUcycles。TI实际编译CMPB/CMPC=24815；按配置时钟，写前窗口248.15us、
40TBCLK预留后247.75us/49550CPUcycles。此前186ticks补偿的名义推导已修正为编译的185ticks；板上寄存器/时钟仍待实读。
中断入口、采样、PLL、重构ESO、选态和三相写入均占用该窗口。当前尚无2kHz完整路径板上时序证据。
`HardwareRelease`继续0。2kHz离线物理仿真6案均触发7A保护，当前不得用于原100V线RMS/50Ω带功率运行；
数值计时不构成上电资格。配置和时标详见 `CONTROL_RATE_2KHZ.md`。

旧50kHz恢复/优化实验保留：`validation/RESTORED_RT10_REPORT.md`、`BENCH_RT11_20261027.md`。
旧18924/19168cycle和旧OUT `4b847bd1...` 不是本轮2kHz固件的板上测量或指纹。

2026-10-26旧OUT8c8251...首次反馈已记录：Count=1、Status=1、Cycles=27485、Fault=32。
按配置200MHz为137.425us，当前实时预算未通过。详见validation/BENCH_20261026.md；
该结果不会改变HardwareRelease=0或允许主功率启动。
第四轮后续用户反馈23425cycle（200MHz条件117.125us），原图见validation/BENCH_RT4_20261026.md。
这两个计数均是历史样例，不是当前恢复固件的新测量。

## 工程与固件

只导入本目录，CCS项目名应为`vienna_pcmfpc_zcdc_F2837x`，CPU1。
使用Build Project增量构建，不Clean/Rebuild。加载本目录
`FLASH/vienna_pcmfpc_zcdc_F2837x.out`，不要混用父目录旧FCS产物。
本轮TI gmake增量构建退出0，C编译/链接0错误、0警告；SysConfig有1类Clock Tree建议warning，本次日志出现2次。
当前本次OUT SHA256为：

`32406e84a00664d037358e238de2e4591bf2950867419807dc5a7401722353fc`

完整证据见 `validation/CONTROL_RATE_2KHZ_REPORT.md`/`.json`，配置说明见 `CONTROL_RATE_2KHZ.md`。
运行适配层358项和2kHz专项36490项宿主检查通过，6案功率闭环均触发7A，资格为 `NOT_QUALIFIED`。
2026-10-28用户单次请求2为19732cycles、请求5为27718cycles，均Status1/Fault0；
按配置200MHz为98.66/138.59us。Count2是两请求累计，不代表请求5重复两次。
详见 `validation/BENCH_2KHZ_20261028.md`。不能引用旧50kHz恢复OUT的SHA或18924cycle。
JS/TXT观察表为67项。初始化后核对：

| 观察项 | 本轮编译配置 |
|---|---:|
| PC_fast_kernel_revision | 10 |
| VIENNA_pcmTiming.revision | 1 |
| VIENNA_pcmTiming.control_hz | 2000 |
| VIENNA_pcmTiming.sample_us / first_duration_us | 约500 / 250 |
| VIENNA_pcmTiming.pwm_period_ticks / tbprd_ticks | 50000 / 25000 |
| VIENNA_pcmTiming.period_cycles | 100000 |
| VIENNA_pcmRootMethod / RootMethodActive | 1 / 1，优化分段根 |

这些是编译配置，真实寄存器/晶振/CPU时钟仍须独立核对。
记录本次OUT的SHA、请求号和暂停情况；以后重新构建同样要保存自己的新SHA。
控制卡晶振/实际CPU时钟仍须核实；本工程按controlCARD20MHz/CPU200MHz配置。

## 操作与观察

1. 确认无交流主功率、真实零电流后，由用户加载/复位并Resume。固定25000事件的偏置校准在2kHz下约需12.5秒；
   等初始化完成、`VIENNA_pcmTick`开始增长后再操作。刚停在main时RAM函数可能尚未复制，不在此时比较反汇编。
2. 检查上表的marker和`VIENNA_pcmTiming`，`VIENNA_pcmHardwareRelease=0`、`VIENNA_clearTrip=0`，三个closeLoop均为0，
   `VIENNA_pcmActualAppliedState=0`、`VIENNA_pcmPendingState=0`。不清Trip、不改AQ或保护。
3. 使用新的`setupdebugenv_pcmfpc_zcdc.js`或TXT观察表。仅保留下面少量变量刷新，
   不连续展开大波形数组进行计时，避免调试访问干扰。
4. 记下当前`VIENNA_pcmBenchCount`。由用户向`VIENNA_pcmBenchRequest`写一次`2`。
   这不是启动请求：代码再次要求三相均OST、各环停止且放行0，才计算一次固定独立输入；
   计算结果不会提交给门极，也不替换ADC/PLL/ESO输入。
5. 等Request自动回到0、Count增加1，保存下表；这次是新500us/250us预测时标的内核结果。
6. 再记下Count，单次写`VIENNA_pcmBenchRequest=5`。完成后保存同一组变量，注明请求5。
   它测隔离的PLL、两段FULL重构、已初始化ESO和快速MPC数值流水线，不注入真实ADC/PLL/ESO历史，也不提交门极。
   它仍不是完整ISR或最坏路径测量。不要持续反复写请求，也不要把两个请求的Max混在一起比较。

| 变量 | 含义 |
|---|---|
| VIENNA_pcmBenchStatus | 1数值完成；2条件拒绝；3非法请求；4内核/流水线错误 |
| VIENNA_pcmBenchCycles | 请求2为快速内核；请求5为隔离数值流水线，各含其dispatch/计时入口开销 |
| VIENNA_pcmBenchCyclesMax | 自初始化以来最大值，可能混合不同请求，不能代替本次Cycles |
| VIENNA_pcmBenchCount | 实际执行次数，请求被拒绝不增加 |
| VIENNA_pcmBenchSelectedId / HWState | 数值结果，ID1..8与HAL位序不是同一整数 |
| VIENNA_pcmFault | 当前runtime故障位；32为PERIOD |

若实际CPU为200MHz，时间us=Cycles/200；时钟未核实前先保存原始计数。
本次Status=1与Fault含32可能同时出现：数值求解成功，但整个C主体超过本轮500us，
随后原周期守护触发三相OST并使ESO历史失效。不得关闭该守护来消除这一结果。
Status=2时保持OFF并核查条件，不用改HardwareRelease或清Trip来绕过。

无主功率时上/下母线可能为0，正常采样输入会标无效、PLL不锁定；固定数值benchmark
与这些真实输入分开。不能为了锁相伪造采样值或接入主功率。

## 后续需要的数据

保存工程/OUT SHA、实际芯片/晶振/时钟依据、上述计数与故障、记录开关、是否有CPU暂停。
分别保存请求2和5的BenchStatus、Cycles、CyclesMax、Count、SelectedId、HWState和Fault，
同时保存 `VIENNA_pcmTiming`、BodyCyclesMax及DeadlineMissCount前后值。
完整ISR、写前最坏时限、ADC真实偏斜、保护传播与栈水位仍需后续独立测量，
一个固定benchmark的结果不放行任何带功率模式。
