# 第四轮：lambda活动集实验内核

2026-10-26，new_mpc，基于第三轮用户固定样例27485cycle计时继续优化。
实现和TI构建已完成；数学/安全检查通过，旧浮点严格等价未通过，实时预算仍未通过。
HardwareRelease保持0，本代理没有连接、烧录、操作目标变量或启用主功率。

## 实现及公式

工程仅改vienna_pcmfpc_fast.c/.h；新增tests/validate_lambda_root.py、lambda_root_probe.c。
runtime、参考PC_run、PLL/ESO、HAL、ADC/PWM/CMPSS/TZ、时标、链接配置与保护阈值未改，
17个受保护文件的前后SHA均相同。没有删除、Clean/Rebuild、提交或推送。

原CONTROL根以电压mu为变量，在每个断点重复三相投影并做差商插值。
新pf_lambda_plan()/pf_lambda_root()令c=h/L、lambda=c*mu、cu=c*Uup、cl=c*Ulow，使用

```text
ON:  i_r = q_r + lambda
OFF: i_r = max(q_r + lambda - cu, 0) + min(q_r + lambda + cl, 0)
lambda in [-cl, cu]
H(lambda) = sum(i_r) = B + N*lambda
root = -B/N, N in {1,2,3}; N=0为完全阻断平台，取最左可行端点
```

每个OFF相在这个括号内最多一个严格内部事件，三相最多四段；八候选共享第一子步的事件计划。
B按相序重新求和，避免事件增减累积误差。最终仍投影并检查原32*EPS残差，不增加电流或成本epsilon。
CONTROL的h/C每角度计划缓存一次，neutral/blocked按1/2/4掩码展开，保持相序。
八候选、双子步、双排序、0.02A范数预算、自适应交集、1e-12阻断/角度分支及严格末级比较未更改。
FULL/SUMMARY仍用原pf_root，ESO仍要求FULL真实模型积分；CONTROL积分依旧是不可用零占位。
PC_FAST_LEGACY_CONTROL_ROOT=1是宿主旧根对照开关，默认0选新lambda；普通RootMethod默认0仍为参考二分根。
BenchRequest=2在独立固定输入上调用当前新fast，不由普通RootMethod决定。

## 数值验收：不冒充原浮点等价

最终冻结宿主报告位于host/pass3。旧根对照31750输入全部0差；新lambda原严格回放返回1：

| 检查 | 结果 |
|---|---|
| 原1017参考输入（含500正式轨迹、罕见5→2） | 最终选择/PC-OFF/active均0差 |
| 扩展31750回放 | 1887最终选择差、1880 PC-OFF差、42 active差；严格等价FAIL |
| 1887差异构成 | ULP预算1043、TI-derived167、普通随机5、flat664、过零8 |
| 同一候选最大数值差 | dq 3.33786011e-6A、np 1.52885914e-5V |
| 48000独立区间 | FULL/SUMMARY逐字段0差；CONTROL对double模型无状态/非有限/测试数值界失败 |
| 80000活动根 | 无状态/残差/数值界失败；最大KCL残差2.14576721e-6A |
| 安全/runtime/非零ESO完整历史 | 85 / 127 / 16通过 |

不能用微小的每候选误差推定行为等价。已有约5e-9A的旧预测向量在lambda下变成精确0，
跨越原1e-12角度分支，角度代价差最大约9.7464rad²。部分被选预测端点相距约0.377943A。
聚焦样例的新选择仍在其0.02A范数预算内，但这不证明全部边界等价或闭环性能不变。
11个白箱blocked端点差已逐项保留。原始差异CSV、1211个base输入逐候选详细值和失败日志未覆盖。
独立模型误差界只用于测试，没有写入控制判断；没有扩大epsilon使回归通过。

## 宿主闭环

10对旧/新实际fast、同一独立abc小步plant均完成0.8s仿真，新的core/observer错误及模型hard_trip均0。
10对轨迹全部改变，原严格轨迹回归为FAIL。模型假设计算及时完成，不含真实CPU迟到或完整实板保护资格。
名义50ohm的末级OFF跟踪RMS由0.082711307变为0.082793227A；
末级ON由0.082654104变为0.083512645A（约恶化1.04%），中点RMS由0.147410165变为0.148275667V。
收益与退化同时保留，不把计算改写称为控制性能普遍改善。其他工况、THD及负载动态见closed_loop/SUMMARY。
默认readable二分32原字段回归仍一致。

## TI构建、资源及实时边界

真实CCS增量构建：2026-10-26 09:26:31，nativeExit0，Errors0、Warnings1（原SysConfig Device Support建议）。
fast.c SHA256：36412b8fa7c0c6f8051c330ce828d2db92ac4ca4b69c5c260afe533c2f723ac5。
OUT SHA256：52971695495f326d60d936a80f57aee79c52750c4e84dae0016b364f3a780b2b。
真实OUT调用链PC_run_fast→pf_control_interval→pf_lambda_root→pf_lambda_plan均在RAM；FULL仍走pf_root。
新lambda根/事件计划/control没有变量DIVF32或EINVF32；除3是float常量乘，不能称精确有理运算。
RAM代码12531/16384word，bss3180/4096word；PCrun/control/lambda/plan帧88/36/20/22word。
已知控制调用链240word；FULL466word，未证明整个程序栈上界或实际水位。

新ASM两个互不重叠必经区域的放松最短路径：CONTROL子步191组、lambda成功根79组；
18*(191+79)=4860cycle，名义200MHz为24.30us，已超过4000cycle周期及1628cycle到ZERO名义窗口。
真实可用窗口还需扣40TBCLK守护及提交开销。该下界忽略callee计划、其他循环次数、指令等待等，
不是WCET、平均耗时或实际DSP计时。不得与旧6408下界相减作提速率。

旧OUT 8c8251...的27485cycle/137.425us只属于此前用户样例，不能当成新OUT的测量。
新OUT还需用户按BENCH_TIMING在无主功率、全OST及放行0下写一次BenchRequest=2，
记录BenchStatus/Cycles/Count/SelectedId/HWState/Fault和暂停历史，以比较同一样例真实耗时。
即使比27485降低，也不改变当前未通过实时预算的结论，不清Trip或打开硬件放行。

## 下一步

先取得当前同样例硬件计时，检验本轮代数简化是否确实减少目标周期，再决定后续结构重写。
可继续研究ABC状态携带、完整8状态下的公共投影/活动集共享和C28x静态工作区搬运，
但这些同样需要完整浮点差异清单，不能把近零端点/排序变化当成无关诊断。
零向量的数值定义、严格末级规则与可复现实验变体需要单独讨论，当前未修改阈值。
没有通过缩减候选、减少子步、放宽预算或改变外设时序去制造实时通过。
