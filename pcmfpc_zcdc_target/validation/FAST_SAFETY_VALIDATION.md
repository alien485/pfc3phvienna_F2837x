# fast 核心独立失效边界审查

日期：2026-10-25。`tests/core_build_fast_safety.cmd` 使用 MSVC 19.44、`/O2 /fp:precise` 构建独立测试，最终 73 项检查通过。

覆盖 nominal 摘要有效标志/旧子步 sentinel、NaN/±Inf 电流/相角/参考/L、非法门极、错误 root 方法、空指针、非法 detail、零 duration，以及 FLT_MAX 的 R/L/omega/deltaI/duration、FLT_MIN 的 C。异常返回检查硬件状态 0、安全 ID、错误码与摘要失效标志。没有硬件调用。

发现并修复：初版 fast 与保留参考 core 在 R 或 L=FLT_MAX 时都可返回 PC_OK 而 voltage_margin_V=NaN。该参数远超实际物理域；runtime L/R 为固定正常常数。fast 所有者加入 amp、udq 与 margin 的派生 finite 检查后，重跑这两个输入均返回 PC_ERR_NUMERIC 和硬件状态 0；参考源码不变。因此 fast 比参考在这些极端输入上增加拒绝，不主张整个 float32 有限域都严格等价。

最终结果：

```text
fast_safety_checks=73 PASS; nonfinite_public_success_edges=0
```

完整输出见 `fast_safety_results.txt`；测试源码为 `tests/core_fast_safety.c`。正常物理域随机/边界等价、1017 行 MATLAB 逐候选/逐子步对照和目标耗时由各自独立报告覆盖。这里的少量极值注入不能证明全部浮点输入域安全，也不构成闭环或 WCET 验证。
