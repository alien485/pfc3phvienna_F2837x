# 2 kHz直接FCS时标修改：实现、构建与验证结果

历史2 kHz报告；当前已更新为Runtime4/Kernel12/4 kHz，操作见`../CCS_RUNTIME4_GUIDE.md`，当前构建审计为`SINGLE_FCS_4KHZ_BUILD_AUDIT.json`。

2026-10-28，分支new_mpc，唯一目标pcmfpc_zcdc_target。

## 结论

已形成可构建的2 kHz无主功率计时版本，尚未证明目标板满足实时约束，离线功率闭环不合格。
保留8个直接开关组合、模式7选择及第十轮数学核心；未引入固定载波调制。
控制周期500 us，预测首段约250 us；每个PWM周期仍更新一次。
正常根方法默认PIECEWISE(1)，参考32轮仍可在停机时显式选择。
模式默认0、HardwareRelease默认0、三环关闭，不自动清Trip或启动。

## 配置与构建证据

- 工程-owned vienna_user_settings.h: VIENNA_PCMFPC_CONTROL_RATE_HZ=2000U。
- 官方SysConfig只允许20..200 kHz，所以main.syscfg保留合法50 kHz模板、注明工程覆盖入口；
  重新生成头文件后有效HAL/模型时标仍2 kHz，C28x/CLA编译单元一致。
- TI gmake all增量构建退出0；C编译/链接0错误、0警告。
- SysConfig有一类Clock Tree建议warning，本次两次生成日志各出现一次；未为消除建议改动SDK/模块。
- OUT：FLASH/vienna_pcmfpc_zcdc_F2837x.out。
- OUT SHA256：`32406e84a00664d037358e238de2e4591bf2950867419807dc5a7401722353fc`。
- RAM代码15315/16384 C28 words；BSS3306/4096 words；栈分配0x380 words，链接分配通过不等于实测栈水位通过。
- main的82个文件、18个保留文件（含数学核心、HAL及构建配置）及父Kit均经本轮基线哈希核对保持。
- 7 A瞬时过流、5.5 A参考峰限、204 V滤波软件过压及CMPSS/TZ/ADC采样窗未更改。

## 时序

CPU200 MHz、TBCLK100 MHz均为工程配置，未独立测量板上时钟。
完整period=50000 ticks，TBPRD=25000。TI HAL汇编417行及已链接0x82021指令写CMPB=24815(0x60ef)，
main读取CMPB配置CMPC。HOST原公式也得到185 tick补偿；先前186/24814名义推导差1 tick，已纠正。

| 事件 | 相对ZERO时刻 |
|---|---:|
| ADC SOC，上数CMPB | 248.15 us |
| PWM顶点 | 250 us |
| 控制中断触发，下数CMPC | 251.85 us |
| 三相AQ命令下一ZERO装载 | 500 us |

写前窗口248.15 us，原40 TBCLK预留后247.75 us/49550 CPUcycles；完整周期500 us/100000 cycles。
窗口还必须容纳中断入口、ADC读取、PLL、重构/ESO、选态与三相提交；完整ISR需另外满足周期预算。
这是编译/时钟配置推导，目标寄存器尚未实读。用户已反馈本版单次数值计时：请求2为19732cycles、请求5为27718cycles，
均Status1/Fault0；按配置200MHz为98.66/138.59us。原18924cycles不能沿用于本版。

请求5发生在post，正常门极写入此前已完成，且不含完整ISR。因此247.75−138.59=109.16us只是名义差额，
不是已测得的真实写前余量。Count2是两个不同请求累计，不是请求5的重复样本。原图与限制见BENCH_2KHZ_20261028.md。

## 本组请求5三次复测

2026-10-28追加固定请求5三次均27718cycles，Status1/Fault0/DeadlineMissCount0；
用户文字反馈BodyCyclesMax29912。按配置200MHz分别为138.59us、149.56us。
固定夹具重复测时结束；完整写前路径/ISR及7A离线闭环问题仍待验证，见 `validation/BENCH_2KHZ_REQUEST5_REPEATS_20261028.md`。

DeadlineMissCount0对应停机测时流程；benchmark发生在正常门极写入之后，不能用于证明真实闭环写前截止时间。

## 验证与失败

- 运行适配层358项通过：真实PLL/ESO/数学核心，计时器/Trip为HOST stub，不能用HOST耗时冒充DSP。
- 2 kHz专项36490项通过：时基、50 Hz PLL、ESO离散增益/递推、旋转积分、1280区间预测、640整轮选态、64重构。
- 2 kHz六组小步物理闭环(old FCS/PC-OFF/PC-ON × 名义/LR噪声)均触发保留的7 A；core/ESO错误均0。
  例如PC-OFF/ON名义案在约0.1614735 s首次Trip，记录峰值约7.31049 A。不可用Trip后的THD/跟踪量作为稳态合格证据。
- 有限追加2.5/约3.333/4 kHz的PC-OFF/ON六案也未通过物理筛查，目标固件仍为2 kHz。
- 旧plant没有完整复现runtime的core-error OST/关环锁存和全部半母线保护。首个Trip/core错误即拒绝该案；
  后续负半母线是失败诊断，不能推断真实受保护硬件会继续运行至该状态。
- 旧plant采样相位和ISR网格近似、滤波及保护模型差异已在独立报告中保留；不能把它当硬件实验。

## 下一步仅做无主功率计时

详见../BENCH_TIMING.md、../CONTROL_RATE_2KHZ.md。
只用辅助电源、真实零电流加载本轮OUT，Resume后等待约12.5 s偏置校准结束并确认pcmTick增长。
核对PC_fast_kernel_revision=10、VIENNA_pcmTiming.revision=1/control_hz=2000、根方法1、Release0、三环0及三相OST。
先单次BenchRequest=2，再单次=5，分别记录Status/Cycles/Count/Fault/DeadlineMissCount，Max可能混合不同请求。
请求5隔离执行PLL+两段FULL重构+已初始化ESO+快MPC，包含FLASH helper开销；不提交门极或替换真实测量/历史。
它不是完整ISR、全部运行状态或WCET验证。若时钟确为200 MHz，微秒=cycles/200。
目前不得把此配置用于100 V线RMS、50 ohm带功率运行，也不能提高保护阈值消除仿真失败。

本轮未删除文件、未Clean/Rebuild、未连接/烧录/写目标/清Trip、未commit/push。
