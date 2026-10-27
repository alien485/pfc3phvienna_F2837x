# Round 11 最终生产候选源码审计

审阅日期：2026-10-27。仅新增本 md/json，未修改生产、旧证据、A/B失败报告，也未构建或操作硬件。

生产 fast.c：`83ce61c2d0656b86cf9d6809288696c9e09b948694a098003d7d9fadc235d2e8`；fast.h：`f56af0541cc59d079a570dd87b5d4dfda9c74068db5f3bc08dc3b543d9b1fd88`，与 `LIVE_CANDIDATE.json` 完全一致。

实际 live11 对已审 C trial（`fce69594928ce6dae75b4e9ddd7853c6b72e302cd3cc9bde8ff9746cb5d93ac8`）仅有两处 `PC_fast_kernel_revision=10U` → `11U`；替回后完整源码文本相同。头文件删除注释/空白后的 token 序列与 trial 相同，仅新增第11轮说明及更新 marker 注释。因此 `C_SOURCE_REVIEW` 的具体源码结论完整适用。

`pf_dq_to_abc_on` 仅用于 `result && STEP==1U`：hw0 无 old 读取；hw1 只计算原 a 并写 old0；其余按原 a/b、`-a/2±PC_SQRT3_HALF*b` 只写 ON 相；hw7全保留。CONTROL 的 old 唯一读点723/725/727行各受同一 ON bit 保护，所有读取前已由本次调用赋值，neutral仍按phase0→1→2累加。不使用KCL补集、正交或ρ=1恒等假设。

old_local/free_local/next是独立数组，root不接收或读取old；没有next alias。公开写入、cap/root/finite/final-midpoint检查顺序和控制函数返回点均未改；私有void helper的return继续原free/root路径。N1、shared seed、FULL/observer原样。OFF old scratch可保留旧值，但未被该CONTROL路径读取或公开；FULL的old trace来自独立未改路径。

边界：删除未用算术可能改变FP状态标志，已审程序不读取该标志；不承诺私有scratch或FP标志的外部白箱字节相同。CPU1 ISR1静态工作区非重入契约不变。实际编译可能重新安排保留表达式，仍须目标汇编/回归审计。

结论：对上述固定live11源码，ON依赖消除、赋值支配、alias及公开失败触序源审PASS。旧16helpers精确相同由正式runner负责，19旧ASM对比由core负责，本报告不抢先宣称其结果。源码PASS不等于目标逐位等价、RAM/栈合格、提速、WCET或实机放行。A/B严格失败结论不改。
