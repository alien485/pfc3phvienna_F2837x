# 2kHz直接FCS控制更新：配置与计时验证

历史配置：当前已交付Runtime4/Kernel12/4 kHz，先阅读`CCS_RUNTIME4_GUIDE.md`。本文件的2 kHz数值不作为当前固件操作或实时性依据。

2026-10-28最新真实固件为Runtime3：单状态FCS保持，观察器MODEL积分改为写后预计算/下一拍校验消费。
556项HOST检查与TI增量构建通过（0错误/0警告）；观察表70项，新增同夹具缓存路径请求6。
当前仍2 kHz/kernel10/Timing.revision1，OUT SHA为5dc95b7f...；尚不能100 V线RMS/50 ohm带载。
加载及唯一下一步5/6测时见`CCS_RUNTIME3_GUIDE.md`。下面旧OUT/67项等记录按当时版本保留。

2026-10-28追加长区间模型离线对照：12312项检查、8组闭环与固定输入回放完成。
母线动态与扰动增量组合使旧故障输入OFF预测峰值7.225降至6.951 A，但完整170 V闭环仍不合格：
PC-ON持续全关断、母线约131 V；组合模型PC-OFF出现严重半母线失衡。
实现只在tests/output，MCU与保护未改；见 `validation/PREDICTION_DYNAMICS_REPORT.md`。

2026-10-28追加离线电流可行性原型，未进入MCU：2415项检查与原版逐字节对照通过。
端点/子步约束均避免原7 A事件，但约164.252 ms因无可行候选停机，未达到170 V。
局部物理回放发现被拒绝的OFF候选峰值6.844 A（预测7.225 A），需继续核查长区间预测偏差。
实现及边界见 `validation/OFFLINE_CURRENT_LIMIT_REPORT.md`；现有固件/频率/保护保持。

2026-10-28，唯一目标为 `new_mpc` 工作目录中的 `pcmfpc_zcdc_target`，
CCS项目名 `vienna_pcmfpc_zcdc_F2837x`。本轮降低控制更新频率以扩大计算窗口，
仍直接输出8个物理门极组合，保留模式7双排序、范数预算、二极管阻断预测和末级ZCDC。
功率器件的实际开关频率随状态序列变化，不是固定2kHz载波调制。

**当前为无主功率计时试验，不构成实机闭环放行。**
`VIENNA_pcmHardwareRelease=0`、三环关闭、模式0的默认状态保留，不自动清Trip或启动。
本轮离线小步物理仿真6案均未达到闭环合格条件：旧FCS、PC-OFF、PC-ON在名义和L/R/噪声工况下均触发保留的7A过流。
仿真数学流程完成、核心/ESO错误为0，不代表控制质量通过；不得把该2kHz配置用于原100V线RMS/50Ω带功率运行。
TI实际增量构建已完成；运行适配层358项和2kHz专项36490项宿主检查通过，功率闭环资格仍为 `NOT_QUALIFIED`。
统一报告为 `validation/CONTROL_RATE_2KHZ_REPORT.md`/`.json`。用户已反馈请求2/5单次19732/27718cycles，
按配置200MHz为98.66/138.59us；两次Status1/Fault0。完整写前/整ISR时序仍待验证，详见 `validation/BENCH_2KHZ_20261028.md`。

2026-10-28追加固定请求5三次均27718cycles，Status1/Fault0/DeadlineMissCount0；
用户文字反馈BodyCyclesMax29912。按配置200MHz分别为138.59us、149.56us。
固定夹具重复测时结束；完整写前路径/ISR及7A离线闭环问题仍待验证，见 `validation/BENCH_2KHZ_REQUEST5_REPEATS_20261028.md`。

## 实际配置来源

`vienna_user_settings.h` 中的 `VIENNA_PCMFPC_CONTROL_RATE_HZ=2000U` 是本轮有效频率设置。
在FCS/BUILD4配置中覆盖 `VIENNA_PFC3PH_PWM_SWITCHING_FREQUENCY_HZ`，使C28x与CLA编译单元采用一致时基；控制仍在C28x运行。
`VIENNA_PFC3PH_PWM_PERIOD`、`VIENNA_ISR_CONTROL_FREQUENCY_HZ` 和 `VIENNA_FCS_TS_SEC`
由宏引用派生，因此HAL时基、采样触发与模型时间一起变化，ISR/PWM比例仍为1。

安装的TI powerSUITE模块只接受20～200kHz。`main.syscfg` 故保留合法的50kHz生成模板，
并注明上述工程覆盖入口；生成的 `vienna_settings.h` 或GUI仍显示50kHz模板并不代表编译后的有效配置。
不修改SDK全局校验范围，不手工把2写进GUI，也不只修改容易被重新生成覆盖的头文件。
当前HAL以uint16传入完整PWM周期；工程覆盖同时检查该整数范围。

新观察对象 `VIENNA_pcmTiming` 是编译配置标识，不是对板上时钟或寄存器的测量。
观察脚本 `setupdebugenv_pcmfpc_zcdc.js` 和TXT为67项，仅添加表达式，不写目标变量。

| 观察字段 | 预期值 |
|---|---:|
| `PC_fast_kernel_revision` | 10，算法核心保留第十轮 |
| `VIENNA_pcmTiming.revision` | 1，新的时标配置 |
| `VIENNA_pcmTiming.control_hz` | 2000Hz |
| `VIENNA_pcmTiming.sample_us` | 约500µs |
| `VIENNA_pcmTiming.first_duration_us` | 约250µs |
| `VIENNA_pcmTiming.pwm_period_ticks` | 50000 |
| `VIENNA_pcmTiming.tbprd_ticks` | 25000 |
| `VIENNA_pcmTiming.period_cycles` | 100000 |
| `VIENNA_pcmRootMethod` / `RootMethodActive` | 1 / 1，优化分段根 |

正常求解默认由参考32轮改为 `PC_ROOT_PIECEWISE`，才能执行本轮沿用的优化核心。
参考求解器仍保留；模式0仍是旧FCS，模式1/2才分别使用PCMFPC末级OFF/ON。
改变默认根方法不改变默认禁止功率输出的状态。

## 统一时间轴与计算预算

以下以工程的CPU200MHz、TBCLK100MHz配置计算；实际控制卡晶振/时钟仍须核实。
`VIENNA_HAL_setupTriggerForADC()` 保留采样窗和转换补偿公式，
比较值按 `TBPRD−ADC固定采样/转换补偿ticks` 派生，没有按旧0.407比例缩放。
本轮TI编译的 `FLASH/vienna_hal.asm:417` 确认为CMPB写入立即数24815，主程序读取CMPB设置CMPC，
因此编译结果为 `CMPB=CMPC=24815`、补偿185ticks。HOST float求值亦为185。
先前186ticks/24814是名义算术推导，因float求值后的整型截断差1TBCLK（10ns），本页已按实际编译结果修正。
这是构建证据，板上寄存器尚未实读，仍待用户核对。

| 同一PWM周期内的事件 | 自ZERO起的名义时刻 |
|---|---:|
| 上数CMPB触发ADC | 248.15µs |
| 计数器到TBPRD | 250µs |
| 下数CMPC触发控制中断 | 251.85µs |
| 下一ZERO，三相AQ影子同步生效 | 500µs |

根据本轮编译值及配置时钟，中断触发至下一ZERO为248.15µs；原40TBCLK写入预留仍为0.4µs，
扣除后为247.75µs，即49550CPUcycles。板上实际时钟、寄存器及中断进入时间仍待测。
中断入口、ADC读取、PLL、两段FULL重构、ESO、选态和三相写入都要占用写前窗口，不能把它全给MPC核心。
完整周期为500µs/100000CPUcycles，写前窗口与整周期是两个独立约束。

模型使用 `TS=500µs`、首段 `DELAY=250µs`，同步进入运行配置、PLL/ESO、SI外环和上一执行区间重构。
首段仍沿用四次ADC平均有效时间戳到ZERO的近似；真实通道偏斜、模拟传感器和门极延迟未实测，不能称精确250µs。
每预测区间仍只有两个子步；接口接受500µs不等于低频电流/中点预测误差已经合格。

保留的deadline检查仍要求写入时向下计数且距离ZERO大于40ticks；本轮未关闭或放宽守护。
它对已跨过多个ZERO的长阻塞并非完整周期计数证明，仍需结合整ISR计时与实际门极时刻核查。

## 本轮保留的参数与待测影响

- 主工程 `main` 和父目录用户已有 `Kit.json` 不属于本轮控制修改范围。
- 保护阈值保持7A瞬时过流、5.5A参考峰限和204V滤波软件过压；CMPSS/TZ配置、ADC采样窗不变。
  这些既有工程值仍不是实测整定或器件能力证明。
- PLL锁定样本数按约20ms重算；逆序检测仍16样本，在2kHz下变为约8ms。
- ESO带宽仍500Hz，离散系数按500µs重算，需重新验证噪声、重构残差和过零行为。
- 固定25000个PWM事件的偏置校准约需12.5秒，前1000事件约0.5秒；原滤波系数保留。
- Timer2仪表任务名义仍10kHz。若控制ISR不可抢占且占用超过100µs，仪表任务可能延迟或合并，
  不能据其配置推断实际软件保护/RMS更新节拍仍严格10kHz。
- 环形记录128拍约覆盖64ms。波形固定5分频后为400S/s，2000点约5秒；
  不能用这份抽取波形证明高次THD或开关纹波，需要外部合适带宽采集。
- 50Hz下每工频周期仅40次控制更新；100V线RMS、3mH/相、440µF/半母线、50Ω的电流纹波、
  过零和中点长期偏置须重新验证。未通过时不通过提高保护阈值来“跑通”。

## 断开主功率的计时操作

具体观察表和反馈说明见 `BENCH_TIMING.md`；本轮先测请求2，再测请求5。

1. 保持交流主功率断开、真实零电流，只按板卡要求供控制/辅助电源。
2. 在正确子工程执行Build Project增量构建，不Clean/Rebuild；加载本目录
   `FLASH/vienna_pcmfpc_zcdc_F2837x.out`。源码保存或编译不会自动更新DSP程序。
3. Resume，等待约12.5秒偏置校准及初始化结束，确认 `VIENNA_pcmTick` 持续增长。
   刚停在main时RAM代码可能尚未复制，此时不据全零反汇编判断源码丢失。
4. 确认上表时标、`HardwareRelease=0`、`clearTrip=0`、三个closeLoop为0、
   `ActualAppliedState=0`、`PendingState=0`，三相OST均保持。观察脚本不会替你设置这些值。
5. 仅刷新少量变量，记下BenchCount、DeadlineMissCount和BodyCyclesMax；单次写 `BenchRequest=2`。
   等请求回0且Count增加1，保存Status/Cycles/Count/SelectedId/HWState/Fault。
6. 保存请求2的数据后，再单次写 `BenchRequest=5`，同样等待并保存，注明请求号。
   所有fixture只用于隔离数值计算，不替换真实ADC/PLL/ESO历史，不向HAL提交门极。
7. 保持默认禁止功率输出，保存OUT SHA、时标对象、实际时钟依据、原始cycle和CPU是否暂停。
   不通过清Trip、提高HardwareRelease或修改保护来绕过拒绝/超时。

请求2仅测本轮时标下的快内核；请求5覆盖隔离PLL、两段FULL重构、已初始化ESO和快MPC数值流水线。
请求5仍不是完整ISR/WCET，可能包含专用fixture调度及helper开销；它只帮助评估此前未计入的算法流程。
请求1为参考核，3/4为快核分段分析，5不生成profile，6及以上非法。
BenchCyclesMax会混合不同请求，应分别保存本次Cycles。
实际CPU200MHz时 `时间[µs]=cycles/200`；未核实前先记录原始计数。

Status1只表示本次数值路径完成；PERIOD位32、deadline增长、输入错误和测量暂停等需分别解释。
新预测时长可能改变求解分支，不能将旧18924cycles/94.62µs当作新2kHz配置的已测时间。
无主功率时真实母线低、电网PLL未锁定可以是预期观察；不要为了让它锁定而伪造真实采样或接主功率。

## 构建与验证证据状态

本轮独立小步物理仿真的6案为旧FCS/PC-OFF/PC-ON各自的名义和L/R/噪声工况；
全部完成数学流程，核心/ESO错误为0，但均触发原7A保护，2kHz功率闭环不合格。
PC-OFF/PC-ON名义工况首次触发约0.1614735秒、峰值约7.31049A；没有因此提高保护或参考限幅。
TI CCS生成规则的 `gmake all` 增量构建退出0，C编译/链接0错误、0警告；
SysConfig有1类Clock Tree建议warning（未添加Device Support模块，本次日志出现2次），没有为消除建议而修改模块。
本次产物为 `FLASH/vienna_pcmfpc_zcdc_F2837x.out`，SHA256：

`32406e84a00664d037358e238de2e4591bf2950867419807dc5a7401722353fc`

运行适配层358项、2kHz专项PLL/ESO/长区间等36490项宿主检查通过；这些模块结果与功率闭环资格分开记录。
补充的2.5/约3.333/4kHz PC-OFF/PC-ON有限筛查也未通过，出现7A触发、半母线崩溃或核心错误，不能当作可上电备选点。
既有plant在核心错误后未完整模拟目标runtime的OST/关环锁存；后续负半母线是失败诊断，不能外推真实硬件故障幅度。
统一入口：`validation/CONTROL_RATE_2KHZ_REPORT.md`、`validation/CONTROL_RATE_2KHZ_REPORT.json`；
详细宿主结果：`validation/control_rate_2khz_validation.json`。已有请求2/5的单次板上数值计数，
完整写前/整ISR和功率闭环仍未合格，功率资格保持 `NOT_QUALIFIED`。
历史 `validation/RESTORED_RT10_REPORT.md`、旧OUT `4b847bd1...` 和原18924cycles仅证明旧50kHz试验。
2kHz闭环结果如出现7A触发、半母线非正、内核拒绝或控制质量退化，须原样报告，
不能以更宽计算窗口或宿主数值测试通过替代实际功率闭环结论。

离线专项重现入口（在本子工程目录运行，不操作CCS或目标板）：

```powershell
python tests/validate_control_rate.py
```

默认输出到项目根 `output/ti_pcmfpc_zcdc_port/control_rate_2khz/replay_validation/pass1`，
不覆盖已有非空目录；再次执行可用 `--output` 指定该专用目录下的新子目录。
支持 `--clang`、`--vcvars` 指定本机宿主工具链。若缺少匹配的TI构建及OUT证据，
标记 `PENDING_NATIVE_BUILD`；功率闭环或时序资格未通过时非零退出是预期的失败报告，不能当作已合格。
此可移植入口只做过帮助/语法检查；其模型与C测试源码及执行函数与本轮pass4已执行版本一致，
未为新增入口重复整套物理仿真。完整原始日志、失败案和本轮源码快照留在项目根output目录。
