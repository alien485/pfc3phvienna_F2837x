# TI PCMFPC-ZCDC 移植进度

2026-10-26恢复补记：main保持原目录/756e806，82个受跟踪文件未改；new_mpc使用独立目录
Vienna_Project/Vienna_MPC/pfc3phvienna_new_mpc，恢复第五轮版本5，真实导入/构建通过。
当前路径、清理保护、原暂存删除项恢复和工具兼容修复以recovery_20261026/REPORT及新项目
RECOVERY_AND_WORKFLOW.md为准。以下优化阶段记录属于恢复前历史，不代表main仍停留在原基线。

日期：2026-10-26。分支 new_mpc。用户已将首版提交并同步为44f0ec5；本轮后续优化未提交/推送。

唯一源工程：Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x。
唯一目标工程：同一 Git 仓库内 pcmfpc_zcdc_target（独立CCS项目）。此位置用于满足在 new_mpc 管理变更，同时保留原工程逐文件对照。

## 阶段状态

| 阶段 | 当前状态 | 证据与边界 |
|---|---|---|
| A 事实审计 | 已完成离线部分 | AUDIT.md、baseline_manifest.json；时标、ID/SI映射、PLL与极点输入缺口及保护冲突已核查 |
| B 参考实现与独立回放 | 已完成 | 真MATLAB1017输入、6变体；18306子步逐字段对照；core与PLL/ESO宿主测试 |
| B 实时优化 | 第四轮lambda实验实现完成；严格等价未通过 | 原1017输入选态0差；扩展31750有1887选态差，48000区间及80000根模型核查正常，85安全/127runtime/16ESO通过 |
| C 硬件参数闭环 | 原18组保留；新增实际fast10对及24组时标筛查 | 10对20runs/130000行旧新fast全一致；24时标用例保留严重失衡及4组提前失效，默认50k回归不变 |
| D CCS构建 | 第四轮真实增量成功 | 2026-10-26 09:26:31 OUT52971695...，Exit0/Errors0/Warnings1；RAM代码12531/16384word，PCrun88/control36word帧 |
| D 无主功率时限 | 第四轮仍超预算；新板上计时待用户执行 | 第四轮非重叠下界4860cycle；旧OUT用户BenchStatus1/Count1，27485cycle，Fault32，详见bench_20261026；旧值不是新OUT计时 |
| E 实机闭环 | 未执行 | 未连接调试器、未烧录、未上电、未清Trip，硬件放行0 |

## 当前配置

用户确认F28379D、每相3mH、上下各440uF、实际50ohm，无额外极点传感器。
按其授权计算的目标：100V线RMS（57.735V相RMS）、50Hz、170V总母线、578W。
目标采用待验证候选7A瞬时Trip、独立5.5A参考峰限、204V滤波软件OV。
原父控制源码仍保留历史配置。没有由计算推定电感饱和、保险丝、热或保护传播已通过。
200V/50ohm不放行；20MHz controlCARD假设、极性和真实采样/驱动延迟仍待实板核验。

ESO使用已执行门极与二极管模型重构上一完整区间DeltaU，不是实测pole积分。
默认模式0、root0、HardwareRelease0、ShadowEnable0；观察脚本不会自动启机。
root0是可追溯参考；第四轮root1同样已确定不能用于现有50kHz带功率控制。
已提供BENCH_TIMING.md供用户在无交流主功率、全OST状态执行一次独立数值计时，不能拿它启机。

2026-10-26用户截图已确认新观察符号可读、170V/204V配置。固定样例CoreStatus0，
SelectedId3/HWState2未施加到门极（Actual/Pending0）；C主体最大28973cycle。
Count1不覆盖最坏路径，实际主频及板上OUT指纹未由截图独立确认。
本代理仅整理用户结果，没有连接/烧录/操作目标，没有调整固件或外设。

## 不利结果与已知差异

double32与MATLAB全部离散选择一致；有界float32在500正式轨迹及真实5→2末级事件一致，
1017集仍有16个最终ID差异（14平坦阻断、2合成边界）。分段根的差异另列，未改平局规则掩盖。
50ohm基础仿真综合跟踪RMS：旧FCS .090807A、OFF .082507A、ON .083148A；
ON对OFF约恶化0.78%，中点略改善，部分低次THD也恶化。实际开关频率不同，不能说等损耗。
宿主闭环假设计算及时完成；数值稳定不代表8.14us影子写入和20us整ISR通过。

## 下一步与证据索引

本轮交付入口为目标RT_OPTIMIZATION.md及validation/RT4_REPORT.md；第四轮构建/宿主/差异/闭环为RT4_*。
lambda活动集根已实现，浮点选态差异和严格回归FAIL完整保留。10对宿主轨迹均改变，
名义末级ON跟踪RMS约恶化1.04%，不能称普遍性能改善。下一步先同固定样例计新OUT周期，
再评估ABC状态携带及完整候选公共计算；不扩大1e-12阈值掩盖近零末级问题。不能把降频视作捷径：20k中心采样
ON+L/Rnoise出现约160V中点RMS，10k新控制有半母线失效/7A动作；仅离线评估并未改DSP设置。
用户可按BENCH_TIMING/PORT_GUIDE做全OFF数值计时及采样/保护资格，不得直接带功率。
没有写前及整ISR实际最坏路径证据，不打开硬件放行。
必要的PWM/ADC/CMPSS/TZ时序调整需另行推导，不在本轮静默修改。
所有原始日志、oracle及仿真CSV集中本目录；可提交的简要报告在目标validation目录。
没有删除项目文件，没有Clean/Rebuild，没有提交或推送。
read_thread工具本会话未提供，未依赖未读取的引用聊天内容。

## 参考兼容更新的独立核查

历史baseline后另有MATLAB诊断数组一次性赋值修复，当前.m为6be3a96d...，SLX为38268096...。
已核对旧A77备份准确、诊断块外全文相同，并真实MATLAB比较1017模式7+336跨八模式输入，
全部六输出一致，另751等时长适配器核查通过。当前SLX控制脚本与当前.m一致；未宣称
整个新SLX接线/InitFcn/形式性能重跑。没有覆盖用户参考、没有改历史manifest；变更与兼容
证据单列rt_optimization/reference_compatibility，delivery_checks同时记录旧/当前指纹。
