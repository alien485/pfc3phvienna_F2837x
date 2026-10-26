# 分级台架步骤（由用户执行，当前未硬件放行）

本交付未烧录、未连接硬件、未上电、未远程清Trip。
只使用唯一新项目和对应.out，不能用旧180V/4A固件替代50ohm目标。
F28379D型号已确认；20MHz晶振controlCARD、采样极性、L饱和与热电流、保护传播仍待核实。
7A/5.5A/204V是经用户授权计算的工程候选，不是实测保护通过结论。

| 阶段 | 进入条件/操作 | 观察与继续条件 | 停止条件/证据 |
|---|---|---|---|
| 固件核对 | 无主功率，导入本目录项目；只增量构建 | .out名和SHA、main.syscfg与参数表一致 | 不一致先查实际路径；保存日志、map、asm |
| 辅助供电/校准 | AC关闭，真实零电流；由用户按板卡资料供电、Resume | 校准完成，默认Trip/OFF，HardwareRelease=0 | 静态采样异常先查比例/偏置，不能带AC复位校准 |
| 采样/锁相 | 保持门极OFF，用户按经核验的接线/限流措施逐渐建立输入 | 相/线单位正确、三相120°、PLL锁定与ed>0/eq小 | 未锁定/反相序/低压/频率故障禁止clearTrip；保存独立仪器与PLL数据 |
| 无功率计算时限 | AC关闭、三相OST、各环停止、HardwareRelease=0；可单次BenchRequest=2测fast固定数值工况 | 保存BenchCycles；随后仍须通过受控采样注入/时序装置测量完整ISR最差路径，含记录开关和入口出口 | 参考32已证明超时；单次benchmark不等于WCET通过，不能删deadline |
| 保护资格 | 用户核对4A保险丝、器件/电感/热能力，测试CMPSS/TZ及实际门极OFF | 7A传播、实际峰值、204V慢滤波与独立OV层级有依据 | 仅门极OFF不切断二极管；50V差压/415V半母线不是当前均压标准 |
| 低能量闭环 | 前述各项通过；若有100ohm可先用轻载，否则以50ohm但受控低能量步骤验证 | 先原FCS内核再PC-OFF/ON，同一外环/PLL/峰限，逐级接近100V线/170V总母线 | 峰流/母线/中点失控、源限流、错时、PLL故障立即由实际电源停机 |
| 同工况对照 | 只在前级通过、数据率和时窗统一后 | 记录电流误差/过零、THD带宽、中点、母线、Fhat/创新、末级参与、实际开关频率 | 不承诺ON必胜；保存不利指标，200V/50ohm不放行 |
| 停机/复位 | CPU保持运行，用户closeGiLoop写0，确认实际OFF，再隔离AC和实测放电 | 三环停、旧PI/ESO历史清理，pending与actual有时标依据 | 不能把Halt/拔USB当正常停机；重新加载前真实零电流 |

## 模式和操作变量

仅停机时设置`VIENNA_pcmModeRequest`：0旧FCS内核、1模式7末级OFF、2末级ON。
`VIENNA_pcmRootMethod`：0=32轮参考，1=独立快速分段实现；只在停机采纳，运行中改变会故障关断。
`VIENNA_pcmHardwareRelease`默认0是台架资格锁；当前交付没有满足实际时限放行条件。
当前快核心静态下界已超20us；全OFF单次benchmark可能同时数值完成和触发PERIOD，
不得把该故障当作需要关闭守护的误报。最新构建与后续方向见RT_OPTIMIZATION.md。
不得为了看PWM直接改该锁、AQ寄存器或绕过RMS/PLL/Trip守护。
在后续资格确认完成的固件/配置上，启动仍只请求一次`VIENNA_clearTrip=1`，
保留跨ZERO全OFF握手；三个closeLoop由程序管理，脚本不会自动启机。

## 观察脚本

CPU1加载新.out后，CCS12 `View -> Scripting Console`，用打开按钮加载
`setupdebugenv_pcmfpc_zcdc.js`；或Expressions右键Import导入同名TXT。
脚本只替换观察表，没有任何目标赋值/清Trip/启动动作。
新增mode、PLL/ESO、输入来源、实际/待生效状态、ID、gi/gu/gz、交集与时限变量均可展开。
原VIENNA_fcsDeadlineMissCount仍在观察表。三相TZFLG改用Memory Browser的Data页、
16-bit Hex查看0x4093/0x4193/0x4293，避免当前CCS不接受的volatile指针cast；只读不写。
BenchRequest是独立全OFF数值计时请求，不是启动请求；条件和状态见TIMING.md。
ShadowEnable只用于原FCS运行时的并行诊断，不能拿它代替全OFF计时入口，
其额外计算也可能超周期；当前没有通过带功率时限验收。

事件缓存开始前在停止采集状态将RingCount清0再RecordArm置1；2000点波形同理使用
WaveCount/WaveArm。缓存装满自动停止，不在ISR里导出或打印。
创新、预计电流和实际电流需按采样/加载时刻对齐，不能用一个低速Watch截图判断THD。

## 每次试验保存

固件与配置SHA256、板卡/元件、输入相/线RMS及频率相序、源RMS限流/功率模式、
负载/母线、探头带宽和共模范围、PLL锁相、起停/TZ/错时、算法/写入/总ISR计时、
原始波形与采样率/抽取/抗混叠、统一稳态窗口和异常现象。
文件模板在根输出RESULT_TEMPLATE.md。结果必须标明宿主/仿真/CCS编译/台架来源。
