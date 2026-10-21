# BUILD 4 简化降维 FCS-MPC

已在本工程接入单状态 FCS-MPC。`main.syscfg` 明确选择 **BUILD 4、C28x、每个 PWM 周期运行一次**。电压外环保留 TI 的 PI；电流环与中点均压由有限开关状态代价统一决定。

## 算法与降维

每相只有导通/关断两个门极状态。`S=1` 时双向开关导通、相端接中点；`S=0` 时由电流方向决定接正/负半母线。因此确定电流极性时，共有 `2^3=8` 个可控状态。

`vienna_fcs_mpc.h` 先用上一拍已生效状态，将 ADC 电流预测到下一次 ZERO；再预测各候选状态保持一个控制周期后的电流与中点差压。模型使用前向 Euler RL 离散化：

```
i_next = (1 - R*dt/L)*i + dt/L*(v_grid - v_converter)
Delta_next = Delta - dt/C_half * (S1*i1 + S2*i2 + S3*i3)
Delta = VPM - VMN，电流正方向为电网流入整流器。
```

三线制电流在 alpha/beta 两轴计算，消去共模。代价为：

```
J = e_alpha^2 + e_beta^2 + W_NP*Delta_next_pu^2
    + W_SWITCH*三相门极切换次数
```

将它展开为二元二次式，利用 `Sj^2=Sj`：

```
J = J0 + q1*S1 + q2*S2 + q3*S3
       + q12*S1*S2 + q13*S1*S3 + q23*S2*S3
z = q3 + q13*S1 + q23*S2
S3 = (z < 0)
```

只比较 `(S1,S2)=00、10、01、11` 四组，每组的 S3 直接由 z 决定。**在该模型、代价和固定极性假设内，数学上与全八状态搜索等价**，没有按连续电压参考筛掉候选，也没有求解连续占空比。代码没有在线优化器、候选循环、三角函数或运行时指数计算。四组比较并不代表 CPU 时间自动减半。

模型冻结一个预测周期内的电流极性和半母线电压，保持当前电流参考；近零电流按电网电压极性回退。这不是完整的 DCM/二极管换流模型，过零区仍需开关模型及实测验证。

## 输出与保护

`VIENNA_fcsSwitchState` 的 bit0/bit1/bit2 分别对应 A/B/C 相。状态 0 是三相全关断，7 是三相全导通。

HAL 用 AQCSFRC 连续软件强制，同时写每相 A/B 输出：`0x000A` 导通、`0x0005` 关断。三相影子命令在同一下次 ZERO 生效，并保持整个周期；避免 CMPA 等于 0/TBPRD 时的事件优先级与窄脉冲问题。CMPSS、Trip Zone、母线过压和不平衡保护保留。

原 `VIENNA_duty1PU/2PU/3PU` 只作观察，保留 TI 的关断比例含义：0 表示导通，1 表示关断。FCS 分支不会把它们再交给占空比 PWM 驱动，也不会叠加原比例均压或三次谐波注入。

参考先去零序，再以共同比例限制三相峰值。当前低压档上限为 `0.9*4=3.6 A`；这是参考峰值上限，不是预测电流硬约束，也不能替代 4 A 瞬时 CMPSS 保护。

停止/故障会清电压 PI 的积分与旧电流参考。再次请求清 trip 时，先提交一个周期的全关断，再解除 Trip Zone，避免恢复之前的导通命令。

## 设置位置

仅在 `vienna_user_settings.h` 调整新增参数；不要写进自动生成的 `vienna_settings.h`。

| 参数 | 当前值 | 依据/含义 |
|---|---:|---|
| 控制更新 | 50 kHz，20 us | 当前 main.syscfg |
| L | 3 mH | TI 设置头/当前工程 |
| R | 0.2 ohm | 当前 main.syscfg 的 Ri，实物需校准 |
| 每半母线 C | 440 uF | 已确认每半两颗220 uF并联；总串联等效220 uF |
| W_NP | 100 | 简化模型的初始权重，尚未实机整定 |
| W_SWITCH | 0.00001 | 门极切换次数权重 |
| 电流极性阈值 | 0.005 pu = 0.06 A | 零附近电压极性回退 |
| 数字延迟 | 10 us | 四次 ADC 平均的近似时间戳到 ZERO |

R 和 C 不会随 SysConfig 自动生成更新；修改硬件参数时需同步核对以上宏。当前延迟没有把传感器、模拟 RC 和驱动延迟混入一个未经测量的常数；应根据实机采样/门极时序校准。当前工程 `Rfltr=68 ohm、Cfltr=0.1 uF` 的 RC 时间常数约 6.8 us，实际传感链传递函数仍须核实，不能直接把该值相加后宣称补偿准确。

## 计算预算与观察

当前 ePWM 为 100 MHz、TBPRD=1000。ADC SOC 在上数 CMPB=814，控制中断在下数 CMPC=814。中断到 ZERO 的命令写入窗口约 **8.14 us=1628 CPU cycles**；下一次控制中断间隔为 20 us。

三相 AQ 命令在电压 PI 之前写入，所以命令写入截止时间与完整 ISR 截止时间不同。写入前检查方向和剩余计数，预留 40 个 TBCLK tick（0.4 us）。若错过窗口，三相立即 OST 关断，关闭控制环并增加 `VIENNA_fcsDeadlineMissCount`。

`setupdebugenv_build4.js` 添加以下观察变量：

| 变量 | 用法 |
|---|---|
| VIENNA_fcsSwitchState | 0…7 的命令状态 |
| VIENNA_fcsIsrCycles | 本次控制主体计数，cycles/200 得到 us |
| VIENNA_fcsIsrCyclesMax | 最大主体计数；不包括 ISR 进入/退出全部开销 |
| VIENNA_fcsDeadlineMissCount | 写入窗口错误次数，正常运行应为 0 |
| GPIO12 | 控制代码执行脉宽 |
| EPwm1/2/3Regs.TZFLG | 硬件 trip 状态 |

静态汇编估算只作算力筛查，无法证明 DSP 的最坏执行时间。台架需同时看 GPIO12、命令生效时刻与错时计数；不要仅以“完整 ISR 小于 20 us”判断命令及时生效。

## CCS 操作

先保持主功率母线断开并确认储能已放电，使用低压辅助供电核对门极、ADC 和保护；再做限流低压闭环。电压观察使用满足共模范围的差分/隔离测量，电流用电流探头。

1. 在 CCS 保存 `main.syscfg`，确认 BUILD 4 / C28x，执行 Rebuild Project。
2. 加载 `FLASH/pfc3phvienna_F2837x.out` 与 `setupdebugenv_build4.js`。脚本只增加观察变量，不会启机。
3. 采样校准及保护检查通过后，将 `VIENNA_clearTrip` 写入一次 1；代码跨过一个全关断周期后使能三个闭环。若 RMS 或半母线测量未就绪，请求会被撤销，保持关断。
4. 停止控制时将 `VIENNA_closeGiLoop=0`；FCS 会停止三环、清旧参考及积分，并在下次 ZERO 输出全关断。全关断不等于切断整流二极管通路或使母线立即无电。
5. 若错时计数增加或发生 trip，先排查时序/波形；代码不会自行重新启机。

单状态 FCS 的**实际器件开关频率随状态变化**，50 kHz 是控制更新率。低载纹波与 THD 尚未完成实机验证，不能套用官方 PI-PWM 的 THD 指标。

## 验证证据

操作详见 [FCS-MPC保姆操作指南](D:/CCSworkspace_v12/pfc3phvienna_F2837x/FCS_MPC_BUILD4_保姆操作指南.md)。本次输入57.74 V相RMS，对应100.008614 V线RMS（标称100 V）；总母线180 V、每半约90 V，负载100 ohm / 4 kW，实际功率324 W、输出电流1.8 A。输入理想相电流1.870454 A RMS、2.645221 A峰值。

按效率95%～90%、PF=0.99作规划估算，相RMS约1.9888～2.0993 A、基波峰值约2.8126～2.9688 A，尚未实测且未计开关纹波/瞬态。旧每相2 A RMS源限流余量不足，建议仪器允许时手动设为每相2.5 A RMS。代码中的4 A瞬时过流和3.6 A参考峰限保持，源RMS设置不保证实际峰值低于4 A。

当前总母线参考0.3964758 pu、每半母线约0.1982379 pu、相RMS反馈约0.1271806 pu、理想公共电流参考约0.1558711 pu。CCS临时修改须在初始化完成、三环已关后，先写`VIENNA_guiVbusTripLimit_Volts=216`，再写`VIENNA_vBusRef_pu=0.3964758`；不写Slewed或Meas。永久配置为`Vout=180`、`Pout=324`、软件过压宏216 V，需重编译并加载新`.out`；复位/重载前关闭AC以零电流校准。

总母线软件过压由上一档192 V改为216 V，沿用目标加20%的观察门槛；它检查慢速滤波GUI值，不是硬件耐压保证或瞬时钳位。原半母线415 V、差压50 V门槛保持，不能当作本次均压合格标准。历史160 V档为256 W、192 V软件过压；更早40 V相RMS / 110 V总母线档为121 W，均不是当前默认。

本轮参数复核与构建记录在 `C:/Users/SAM/Documents/New project/work/fcs_180v_20261016/`。原控制律未改变，电压PI和FCS权重未针对实物重新整定；C_half=440 uF、Cf=220 uF及454 V/12 A采样基准保持。

前一轮移植时的完整备份、宿主测试、构建日志和汇编分析保存在：

`C:/Users/SAM/Documents/New project/work/vienna_fcs_20261014/`

- `before/`：修改前原工程。
- `validation/equivalence_results.txt`：实际 C 与独立八状态 oracle，六组权重共 601920 个样本。
- `validation/README.md`：CCM 近似趋势及 DCM/过零局限。
- `validation/integration_results.txt`：真实控制函数的外围模拟测试。
- `analysis/isr_timing_review.json`：按 TI 汇编的工程时序估算。
- `full_build_target.log`、`regenerated_build_target.log`：原目录重编译与配置再生成记录。

等价性测试证明该样本集上的搜索结果一致；外围模拟不等于真实 ADC/PWM；CCM 模型趋势不等于完整开关级闭环；编译与链接通过不等于实机性能通过。

## 原始资料

- [TI TIDM-1000 设计指南](https://www.ti.com/lit/ug/tiducj0g/tiducj0g.pdf)：平台、参数与官方控制链。
- [TI F2837xD ePWM API](https://software-dl.ti.com/C2000/docs/C2000_driverlib_api_guide/f2837xd/build/html/modules/epwm.html)：AQ 连续强制和 ZERO 影子加载。
- [Xie 等，Vienna 预测控制论文](https://ietresearch.onlinelibrary.wiley.com/doi/full/10.1049/iet-epa.2018.0033)：确定电流方向下的八状态及单状态方法背景。本工程的二元解析消元由代价展开推导，并非照搬该论文的开关序列算法。
