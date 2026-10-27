# C_exact_ON_old_N8：实际候选源码审阅

仅审输出目录候选，未改生产或旧证据、未构建。候选 SHA256：`fce69594928ce6dae75b4e9ddd7853c6b72e302cd3cc9bde8ff9746cb5d93ac8`。

已穷尽核对源码 delta：只新增 `pf_dq_to_abc_on` 及 always-inline pragma，并将 N8 STEP1 的原 old inverse 调用改为该 helper；撤销这三项后文本与 frozen10 完全相同。所有结构体/静态数据、根函数、freeDQ、N1、共享 seed、FULL、保护/阈值、公开写序和返回点均未改。

`PF_CONTROL_STEP` 中 old 唯一读取在候选723/725/727行：各自仅当 `hw&1/2/4` 为真时读对应相。`pf_dq_to_abc_on` 先 hw0 返回、hw1 只算原 a，其余保留原 a/b，并仅写 ON 相的原逆 Clarke 表达式。因此每个可达 old 读取均已被同一次 helper 赋值；OFF scratch 残留值不被读。hw7 全保留。

root 的调用参数只有 free/next 和根工作区，没有 old；old_local、free_local、next 是不同数组。下一候选重新初始化 dq/np/caps 并重写所需 ON old。原 FULL 的 old trace 使用独立未改路径，不能误认为 CONTROL 导出未写 OFF 值。

helper 内 void return 只结束私有算术，不结束控制模型；随后原 free/root/finite 顺序保持。没有新 guard、公开写入或失败 return，故公开失败 touched-byte 顺序的源码契约不变。删除未用 FP 算术可改变未被本路径观察的 FP 标志；不承诺私有 scratch 白箱字节不变，也不扩大原非重入 CPU1 ISR1 契约。

实际 trial ASM 未发现 `LCR ... pf_dq_to_abc_on`，说明该试编译未新增 helper ABI 调用；这不是 linked OUT/RAM 证明。源码未发现依赖、初始化、alias 或公开失败写序阻断项。是否逐位相同仍以差分与实际 CGT 保留表达式分组为准，是否更快须目标 plain bench。新增分支、寄存器压力和 spill 可能抵消少算表达式，不能预告加速。
