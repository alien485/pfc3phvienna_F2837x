# Round 11：坐标递推独立数学审阅

审阅日期：2026-10-27。仅新增 round11/audit 证据；生产、旧证据、外设、保护、参数和构建只读。生产与 before 快照的 fast.c SHA256 均为 `924aa19f11699214ee06d1581f1044e240dd99821e90cf7d48ca1b7546b0557d`，仍为第十版。

本报告是源码依赖与数学推导，不是 TI 逐指令仿真、板上计时或功率放行。A/B 的实际差分结果由父任务负责；下述 HOST 数值例仅说明不能假设浮点变换互逆。

## 1. 现有两子步模型及角度节点

文件：`D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_new_mpc/pcmfpc_zcdc_target/vienna_pcmfpc_fast.c`。

关键函数/宏：`pf_plan`（约263）、`pf_abc_to_dq`（274）、`pf_dq_to_abc`（280）、`pf_seed`（327）、`PF_CONTROL_STEP`（678）、`PF_CONTROL_BODY/CORE`（714/734）、`PC_run_fast`（955）。

定义 Clarke 矩阵 C、逆 Clarke 矩阵 T、逆 Park 旋转 R：

```
C = [[2/3,-1/3,-1/3], [0,1/√3,-1/√3]]
T = [[1,0], [-1/2,√3/2], [-1/2,-√3/2]]
Rθ = [[cosθ,-sinθ], [sinθ,cosθ]]
Pθ = Rθᵀ C        // abc -> dq
Mθ = T Rθ         // dq -> abc
```

每个控制区间 h=duration/2，节点严格按 `theta+(PC_Real)j*omega*h` 计算 j=0,1,2。现有子步 k 为：

```
old_k = M_k dq_k
free_dq = dq_k + h*f_dq
q_next = M_(k+1) free_dq
z_next = 原 diode/KCL root(q_next, h/L, up, low, hw)
neutral = Σ_ON (old_k[i]+z_next[i])/2   // phase0 -> phase1 -> phase2
np_next = np + (h/C_half)*neutral
dq_next = P_(k+1) z_next
```

代码实际先做原 root 成功检查和 blocked 累积，再 forward 变换、np 更新及 finite 检查；任何等价改写还须保留这个触碰/失败顺序。每步电容电压由候选自己的 `(dc-np)/2`、`(dc+np)/2` 重建。

`fhat_A_s` 在本次预测中保持 dq 分量恒定；它的 abc 表示 `M_k*f_dq` 随节点改变。把第一次的 abc 强迫项保持不变，属于离散模型变化，不是坐标变换缓存。延迟末角 `theta+2*omega*(duration/2)` 与候选起角 `theta+omega*duration` 的实数表达式相同，但 float 运算分组不一定相同，不应据此跨延迟/候选边界直接复用 abc。

## 2. 为什么 dq/abc 往返不能直接删掉

理想实数满足 `C T=I₂`、`T C=J=I₃-11ᵀ/3`，因此 `Mθ Pθ=J`。即使理想旋转完全正交，也只对严格零序为零的 abc 向量是恒等映射。求根允许按既有 32EPS 规则接受残差，不保证存储的三个 float 的精确和为零；按 float 顺序求和得到零也不等于三个存储实数的精确和为零。

再把存储的 c=cosθ、s=sinθ 当作精确实数，`R Rᵀ=ρI`，ρ=c²+s² 未必为1。实际变换是 `M_f P_f=ρ T_f C_f`，还不能忽略 Clarke 系数舍入。例如 u=float32(1/3)、v=float32(1/√3)、t=float32(√3/2)，在 reciprocal 形式下 `C_f T_f=diag(3u,2vt)`；精确有 `3u=33554433/33554432`，`2vt=70368741651675/70368744177664`，均非1。实际执行还在每条乘加间舍入，所以单次计算 `ρ T_f C_f` 也不逐位等于原两次旋转。

附件 `COORDINATE_FLOAT32_EXAMPLE.json` 用独立 binary32 逐运算示例说明：θ=0.713 时计算出的 float32 ρ 虽为1，存储 c/s 的精确平方和约0.99999998272，原 roundtrip 与原始 abc、与 rho 投影仍可各差1 ULP。这仅是 HOST 算术例，不模拟 TI TMU、reassociation 或具体 root。

## 3. 小方案：仅替换 N8 第二子步 oldABC

第一个 root 输出 z₁，现有程序保留 `dq₁=P₁z₁`，第二步 old 为 `M₁dq₁`。

A 原型直接复制 z₁ 到独立 old_local。理想系数但保留存储旋转的 ρ 时，替代误差为：

```
δ_A = z₁ - ρJz₁ = (1-ρ)Jz₁ + (sum(z₁)/3)*[1,1,1]
```

因此 raw copy 同时省略零序投影和旋转范数效应；不能以“物理三线电流和为零”证明源码等价。

B 原型缓存第一个 root 的原 Clarke 中间量 alpha/beta，同时仍按原表达式计算并检查 Park dq。第二步以 `rho=ct1*ct1+st1*st1` 乘缓存 alpha/beta，之后用原逆 Clarke 表达式构造 old。它保留 T_f C_f 的系数与 rho 效应，但将 `R₁(round(R₁ᵀ v))` 换成 `round(round(ρ)*v)`；乘法/抵消/舍入顺序改变，仍不是逐位等价优化。

对实际 A/B delta 的源码检查未发现本次作用域内的未初始化或 alias 阻断项：A 在第二 root 写 next 前将3个元素复制到独立 old_local；B 的缓存只在 root0 成功后赋值，每条可达 STEP1 路径均已赋值，rho 在原 cap guard 后 lazy 初始化；N1 的 result==0 不读取新局部量。N1、FULL、原 freeDQ、第二节点 inverse 和 root 的源字句保留。

若上述未改源表达式在实际编译中仍同序，则 np1、候选第一步 np、第二 root 的输入/输出、idq2、gi、blocked 均应逐位不变；old 替代只直接影响：

```
Δneutral₂ = 1/2 * Σ_ON δold_i
Δnp₂ ≈ (h/C_half)*Δneutral₂        // 实际仍有更新舍入
```

它可进一步改变 np2²/gu、排序/交集/pcOff/selected、最终 midpoint/finite 状态及公共失败输出。`hw==0` 时 old 完全不参与 neutral，故在该局部方案中不应产生公开结果差异。

**依赖分析更正（不修改预先准则）：** 预先 ACCEPTANCE_SCOPE 曾把 active 一并列为隔离不变量，这点过强。`PC_run_fast` 的 active 实际读取 `blocked_candidate[pcOff]`，pcOff 可由 gu 排序改变，所以 active 也可能间接改变。原预先文件不改；不能把此数学更正用作事后接受离散变化的理由。父任务已报告 A/B 严格 FAIL，硬件分组中 selected 差异为122/121，active 此次未变，足以拒绝默认安装；本审阅未独立重跑这些测试。

## 4. 大方案：合并变角节点的线性递推（本轮只推导）

若将 root abc 记为 x_k，实数代数可写：

```
q_next = M_(k+1) * P_k * x_k + h*M_(k+1)*f_dq
A_k = T R_(k+1) R_kᵀ C
b_k = h T R_(k+1) f_dq
```

应由实际存储的节点 c/s 预计算：

```
a = c_next*c_cur + s_next*s_cur
b = s_next*c_cur - c_next*s_cur
alpha_free = a*alpha - b*beta + h*(c_next*f_d - s_next*f_q)
beta_free  = b*alpha + a*beta + h*(s_next*f_d + c_next*f_q)
q_next = T*[alpha_free,beta_free]
```

不能直接用新的 sin/cos(omega*h) 替换 a/b，也不能在多个不同 ending node 共用一个 abc forcing。old 的 neutral 还必须保留当前节点投影效应，末端 dq 仍须按原 P_end 生成当前代价。

此合并分配了乘加、改变中间 dq 舍入与溢出域，可能改变过零符号、root 分段/端点、np、current/midpoint 排序。它不是对所有有限输入保状态等价的代数“优化”。八候选第一步本已共享 seed，因此不能按每候选删去两个完整变换估计收益；实际可省部分主要在候选第二子步内部。未实施或编译本大方案，也不建议在本次两个失败原型上继续混入。

## 5. 唯一追加 C：严格删除未使用 OFF old 分量

父任务在拒绝 A/B 后单独授权 C_exact_ON_old_N8；本节为候选实现前的精确依赖条件，不是实际候选 PASS。

CONTROL 中 old 的唯一读取是三个 `if(hw & phase_bit) neutral+=(old[i]+next[i])/2`。root 只接收 free_abc、next 等参数，不读 old；PF_ControlWork 的 old_local、free_local、next 是独立数组。old_local 无公开输出，下一个候选也不沿用前一个候选 old。于是 N8 STEP1 可只算真正会读取的相：

```
hw0: 不计算 a/b/old，随后无 old 读取
hw1: a=ct*dq0-st*dq1; old0=a           // 原表达式，无 b
其它含 B/C 的 hw:
    a=ct*dq0-st*dq1
    b=st*dq0+ct*dq1
    按 ON bit 仅写 old0=a、old1=-a/2+t*b、old2=-a/2-t*b
hw7: 原三相全保留
```

保持 phase0→1→2 的 neutral 累加，每个所用 old 分量保留原乘法、负号、除2、± 表达式，不能用 `old2=-old0-old1` 或 KCL 补集。N1/共享 seed/FULL/observer、freeDQ、root、root 次数/计时、cap/finite/末端错误检查和公开写入顺序不变。不增加新 guard/return，也不 alias next。

OFF old 值未写而保持过往 scratch 内容本身不构成未初始化公开读取；必须对实际候选确认没有其它新增读点。删除算术还可能改变浮点状态标志，但已审路径不读取这类状态，公开错误判定只读保留的值；实际目标审计仍应确认无新增环境依赖。当前 static 工作区非重入、只属 CPU1 ISR1 的原契约仍成立。

这是源码上的精确依赖消除，比把 M P 当恒等更保守；仍需实际 CGT 检查所保留 a/b/逆 Clarke 的 FP 分组。增加 mask branch、寄存器压力、spill、store 或函数 ABI 均可抵消收益，不能仅凭删表达式声称更快。

## 6. 判据与部署边界

保留既有 32EPS root 残差、严格1e-12阻断、0.02A预算、排序优先级、8状态/双子步和所有 L/R/C、保护/外设时序。禁止加 epsilon、吸零或改变阈值来消除原型差异。

验证应包括完整成功/失败公共字节与触碰顺序、N1合法字段 alias、FULL不变；逐候选记录 root2/idq2/gi/blocked、np2/gu 和所有离散决策。边界覆盖 ±0/subnormal、KCL残差接近32EPS、预测±1e-12、等事件/端点/零宽段、上下母线不平衡和 midpoint 极限、预算/排序 ties、角度轴点/wrap/ρ非1、极端有限值溢出。闭环观察过零、np平衡与选态，数值小不自动等于控制决策可接受。

A/B 不满足等价优化条件则保留为离线研究证据，生产继续10。C 若通过也仅形成待目标构建/资源审计/板上基准的候选，HOST速度不能说明 C28x 加速或实时资格。
