# 当前固件的无主功率单次数值计时

此步骤由用户在真实DSP上执行。本代理没有连接调试器、烧录、上电或写目标变量。
保持交流主功率断开，按实际板卡资料仅供控制/辅助电源；不能拿主功率运行做计时。

当前已恢复第十轮源码及本地OUT，marker10。第十一轮三次19168cycle未较第十轮18924提速，保留为实验记录。
本地恢复不会自动更新板卡，须重新Load Program并初始化后确认marker10。
该固件仍未满足20us/4000cycle及写前窗口，HardwareRelease继续0；固定数值计时不构成上电资格。
当前恢复及复用验证依据见validation/RESTORED_RT10_REPORT.md，三次测量见BENCH_RT11_20261027.md。

2026-10-26旧OUT8c8251...首次反馈已记录：Count=1、Status=1、Cycles=27485、Fault=32。
按配置200MHz为137.425us，当前实时预算未通过。详见validation/BENCH_20261026.md；
该结果不会改变HardwareRelease=0或允许主功率启动。
第四轮后续用户反馈23425cycle（200MHz条件117.125us），原图见validation/BENCH_RT4_20261026.md。
这两个计数均是历史样例，不是当前恢复固件的新测量。

## 工程与固件

只导入本目录，CCS项目名应为`vienna_pcmfpc_zcdc_F2837x`，CPU1。
使用Build Project增量构建，不Clean/Rebuild。加载本目录
`FLASH/vienna_pcmfpc_zcdc_F2837x.out`，不要混用父目录旧FCS产物。
2026-10-27 21:19:02恢复第十轮OUT的SHA256为
`4b847bd12c26178680d63c14992afd6d3a282d80a1a56ecbd91c0562216db13a`。
使用同一CCS生成的TI gmake增量规则构建，0error/0warning；本轮未重试上轮失败的CCS启动器。
加载并完成初始化后，PC_fast_kernel_revision应为10；JS/TXT与上一版相同，仍为66项。
第十轮原18924cycle对应相同二进制；恢复后尚未取得新的板上计时。第十一轮19168来自不同二进制。
后续重测仍使用同一固定请求2，并记录版本、OUT和暂停情况以便对比。
之后重新构建应保存自己的新SHA，不能继续引用这一快照名。
控制卡晶振/实际CPU时钟仍须核实；本工程按controlCARD20MHz/CPU200MHz配置。

## 操作与观察

1. 确认无交流主功率、真实零电流后，由用户加载/复位并Resume，让初始化及偏置校准完成。
2. 检查`PC_fast_kernel_revision=10`，`VIENNA_pcmHardwareRelease=0`、`VIENNA_clearTrip=0`，三个closeLoop均为0，
   `VIENNA_pcmActualAppliedState=0`、`VIENNA_pcmPendingState=0`。不清Trip、不改AQ或保护。
3. 使用新的`setupdebugenv_pcmfpc_zcdc.js`或TXT观察表。仅保留下面少量变量刷新，
   不连续展开大波形数组进行计时，避免调试访问干扰。
4. 记下当前`VIENNA_pcmBenchCount`。由用户向`VIENNA_pcmBenchRequest`写一次`2`。
   这不是启动请求：代码再次要求三相均OST、各环停止且放行0，才计算一次固定独立输入；
   计算结果不会提交给门极，也不替换ADC/PLL/ESO输入。
5. 等Request自动回到0、Count增加1，再保存下表。不要持续反复写请求。

| 变量 | 含义 |
|---|---|
| VIENNA_pcmBenchStatus | 1数值完成；2条件拒绝；3非法请求；4内核错误 |
| VIENNA_pcmBenchCycles | 本次数值内核及其dispatch/计时入口内的Timer0周期数 |
| VIENNA_pcmBenchCyclesMax | 自本次初始化以来最大值 |
| VIENNA_pcmBenchCount | 实际执行次数，请求被拒绝不增加 |
| VIENNA_pcmBenchSelectedId / HWState | 数值结果，ID1..8与HAL位序不是同一整数 |
| VIENNA_pcmFault | 当前runtime故障位；32为PERIOD |

若实际CPU为200MHz，时间us=Cycles/200；时钟未核实前先保存原始计数。
本次Status=1与Fault含32可能同时出现：数值求解成功，但整个C主体超过20us，
随后原周期守护触发三相OST并使ESO历史失效。不得关闭该守护来消除这一结果。
Status=2时保持OFF并核查条件，不用改HardwareRelease或清Trip来绕过。

无主功率时上/下母线可能为0，正常采样输入会标无效、PLL不锁定；固定数值benchmark
与这些真实输入分开。不能为了锁相伪造采样值或接入主功率。

## 后续需要的数据

保存工程/OUT SHA、实际芯片/晶振/时钟依据、上述计数与故障、记录开关、是否有CPU暂停。
将BenchStatus、Cycles、CyclesMax、Count、SelectedId、HWState和Fault反馈即可先分析。
完整ISR、写前最坏时限、ADC真实偏斜、保护传播与栈水位仍需后续独立测量，
一个固定benchmark的结果不放行任何带功率模式。
