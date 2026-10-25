# TI runtime 宿主调用链验证

日期：2026-10-25。MSVC 19.44，`/O2 /fp:precise`，最终扩展构建并执行完成，122 项检查通过。

编译入口为目标目录 `tests/core_build_runtime.cmd`。它把真实的 `vienna_pcmfpc_runtime.c` 原样编译，链接真实 `vienna_pcmfpc_zcdc.c`、`vienna_pcmfpc_fast.c`、`vienna_grid_sync.c`、`vienna_pcmfpc_observer.c`。仅通过强制包含 `tests/core_runtime_stub.h` 替换 TI 头文件、计时器读数、各相 Trip 标志读取、强制 Trip 调用及控制环复位的硬件依赖。保护和量纲宏读取目标工程真实 `vienna_settings.h`，没有为通过测试另设保护参数。

验证范围：

- 默认 hardware release/shadow 关闭；release、PLL 锁定、输入有效、模式范围和即时母线过压启动门槛。
- 模拟 6000 拍三相 50 Hz 输入，真实 PLL 能在停机及 trip 状态下锁定；真实 ESO 返回约定正确，首拍 Fhat 等于电网 dq 电压除以 L，且已复制到预测核心输入。
- 普通 `reset_control` 保留 ZERO 前实际门极标签；完整 `init` 清除实际和 pending 状态。
- 缺少完整历史的第一拍初始化 ESO，不把假设的零电压积分当成上一完整执行区间；下一拍真实重构及更新成功。
- `submitted` 只记录 pending，下一次假定已跨 ZERO 的 sample 才推进为 actual，预测输入同步使用 actual。
- 实际 `select` 调用核心返回有效状态；Terminal OFF 的开关、计时统计字段和冻结 dq/abc 参考契约。
- 波形/环形记录使用本拍冻结参考；记录满 128 条后停止并计溢出，5 拍平均使用冻结参考。
- 运行中切模式或根求解方法触发三相 trip；停机可以接受配置切换；撤销 release 阻止 select。
- 人工注入超过一周期的 C body 计数，确认三相 trip、周期故障位及门极复位。
- reference32 与 fast 的真实 dispatch，source=1 控制输出来源及完整/摘要子步标志；fast 的 FULL_SUBSTEPS 观测器重构在下一拍继续有效。
- 纯数值 benchmark 请求 1/2 成功、清请求且仅执行一次；fixture 不写 ADC、实际核心输入、PLL、ESO、实际门极、pending 或采样拍数。
- benchmark 非法请求 3/65535，以及 release、任一闭环、actual、pending、任一相没有 OST 或仅有其它 trip 位时逐项拒绝。拒绝不增加数值执行次数，不暴露建议门极，不改变 live 状态。
- source=0/3、core 失败、selected ID 越界时，记录不索引候选数组或暴露陈旧预测/代价。每 sample 清输出来源与详细诊断有效标志。
- 组合输入故障准确标识电流/网压/上下母线通道；PLL 锁定后 measured DQ 与输入变换一致；外环上下限饱和标志与限幅正确。

由这些检查发现并已由 runtime 所有者修复：VO 两个函数的成功值约定、首拍/缺历史处理、记录参考与本拍决策不一致、重复初始化留下旧 pending 门极。测试文件没有修改 runtime 源码。

运行命令（工作目录为目标 `tests`）：

```text
cmd /c core_build_runtime.cmd
```

结果：

```text
runtime_host_checks=122 real_PLL_ESO_core_with_stub_timer_and_trip=PASS
```

证据副本：`runtime_host_results.txt`；源码和完整本地构建结果保存在目标 `tests/core_runtime_*`。

benchmark 超周期边界也已检查：人为令 benchmark 计数超过 20 us，数值结果仍可以成功，但既有 full-body guard 随后触发 PERIOD、三相 trip 与 ESO/history 失效。它没有把 fixture 注入历史，但不能承诺超周期故障后历史不被复位。该行为保留原安全检查，没有扣除 benchmark 耗时或绕过 guard。

边界：该测试没有编译 `vienna.h` 内联控制 ISR，也没有仿真 ADC、AQ、PWM ZERO、CMPSS、Trip Zone 寄存器或中断嵌套。ZERO 由下一拍调用的约定模拟，Trip 由计数 stub 模拟，计时器是人为设定值。它只能证明宿主条件下 supervisor/数学模块接头行为；不能证明目标 8.14 us 写入期限、20 us ISR 期限、硬件保护延迟、实机波形或电气闭环性能。32 轮参考路径与 fast 路径的目标实时可用性须按实际 TI listing/map 及硬件测量单独判定。单个固定 benchmark fixture 不是 WCET。
