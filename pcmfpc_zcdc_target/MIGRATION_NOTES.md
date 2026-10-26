# 与父FCS工程及TI参考结构的差异

TI参考以DCL电流PI、网压前馈、PWM调制和中点平衡为主；父BUILD4 FCS分支
已用vienna_fcs_mpc.h的VIENNA_FCS_run替代电流PI/占空比，输出二值AQ影子状态。
本次从实际父FCS工程迁移，不把TI_Change的220V配置混入。

| 位置/函数 | 本次变化 |
|---|---|
| vienna.h / VIENNA_pfcControlCode | ADC后sample；PLL参考；分模式选择；保留写前deadline、AQ shadow与先OFF再清Trip；写后算共同外环 |
| vienna_pcmfpc_zcdc.c / PC_run | 8状态阻断双子步、独立双排序、0.02A范数预算、自适应交集、共享触发、严格相角末级，无加权FCS回退 |
| vienna_pcmfpc_fast.c / PC_run_fast | root1独立快速分段实现、公共角度复用；不复用旧四组消元；完整候选子步不可用标记明确 |
| vienna_grid_sync.c / VG_run | 新SRF网侧PLL，有界采样时角、相序/低压/频率/锁定检查 |
| vienna_pcmfpc_observer.c / VO_update_delta、VO_reconstruct | 显式前一区间DeltaU ESO，actual/pending分段重构，来源MODEL；首拍/故障历史失效 |
| vienna_pcmfpc_runtime.c / outer、reset_control | 用220uF串联等效C重设计SI峰值外环，20Hz/ζ1、预滤波/回算、5.5A峰限；三模式共用；停止复位ESO但保持PLL获取 |
| main.syscfg / user_settings | 170V/578W、50Hz、授权计算的7A/204V候选；454V/12A采样基准及PWM/ADC时序、CMPSS/TZ结构不改 |
| CCS元数据/ccxml | 唯一项目名/F28379D，父排除目标、子排除tests/FLASH；旧377配置.reference |
| linker / Device_init | 新RAM代码段真实复制，独立NOINIT事件/波形缓存；PC_Output为全局 |
| vienna_main.c / 校准条件 | 未定义宏比较改为实际VIENNA_SDFM_SENSING==0；目标HAL头守卫拼写修正 |

目标比较模式0也使用新增PLL/共同SI外环，不称父固件逐位等价。
模式1/2只切末级，预测器/ESO/参考/集合选择相同。20us更新和约10us首段
是明确硬件适配；原MATLAB/SLX保持不变。

## 确定问题和待验证风险

已确认32轮参考汇编下界超时，原全量清零单独超写前窗口。fast针对两者优化，
第三轮静态工作区和CONTROL窄核降低了大帧寻址；快核心仍有32.04us保守下界，
超过8.14us写前和20us周期。该下界不是实测WCET，当前两路径均不具备带功率实时条件。
float32平坦阻断/近似平局会改变选择，不能以小连续误差声称门极全等价。
50ohm仿真中ON对OFF未全面改善，保留不利指标。
移植测试中发现并修复了ESO返回值约定、首拍虚构历史、停止提前标OFF、记录取新参考等集成错误。

待验证：ADC偏斜/滤波与传播，模型积分误差、PLL负序/失锁、float32/TMU重排、
完整ISR/后台栈、预充峰值、器件热/饱和/保护动作。204V是慢滤波，415V半母线/
50V差压也不能作为本低压试验的完整保护依据。
没有主功率与实机时限证据，HardwareRelease默认0。

后续先解决实时/采样/保护资格，再校验模型积分及过零残差；之后依据统一数据
评估中点交集和0.02A预算，最后讨论多目标取舍。预算/平局/求根修订必须有独立选择
与闭环证据，真实开关频率/损耗/最坏计算时间一起报告。
