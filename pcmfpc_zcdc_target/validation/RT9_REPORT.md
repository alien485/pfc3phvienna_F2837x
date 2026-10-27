# 第九轮：单ON状态的NULL事件准备精简

已安装到new_mpc唯一子工程，PC_fast_kernel_revision=9。TI CCS生成规则增量编译链接通过，0错误/0警告；没有Clean/Rebuild或操作硬件。

## 改动与选择

只修改vienna_pcmfpc_fast.c/.h。新增pf_lambda_single_plan，仅在pf_lambda_root没有shared计划且hw=1/2/4时，准备两相OFF的base、活动标记和稳定排序事件。原始三相scale/有限域检查、严格事件边界均保留。ON base不写，但原根的ON项必定读q；OFF字段每次重建，不将partial计划用于其他hw或shared。

pf_lambda_root除这一个NULL builder分支外全文相同。原求根循环、相序求和、闭区间顺序、残差、端点回退、共享计划、CONTROL宏、FULL/ESO、8候选/双子步/排序/预算/末级严格判据保持。新helper明确放pcmfpc_code，并核查实际OUT的RAM调用链。

较大的专用single-ON solver原型已拒绝：静态fixture指令proxy收益很小而增加代码/栈，不能当成实际提速。本轮未采用它，也不沿用它的proxy数字。

## 验证

- 相同诊断策略各31750组PC_Output及140025区间，对冻结第八轮字节零差。
- 实际旧/新generic根325551组：状态及成功/失败电流字节零差，共享计划不变。含无效和不一致私有计划测试，不能把其极端输入当实验工况。
- 24912次直接CONTROL、80项fake-clock、安全85、runtime299、ESO16通过。
- 10条闭环CSV与10个指标JSON对第八轮字节相同；127008次plain/coarse/fine对照零差。
- 14个原数值/交集helper正文不变；generic根除已知NULL准备分支外严格逐字一致。

HOST结果只证明所测样本；不能替代TI浮点/TMU逐位普遍等价、目标WCET或完整ISR验证。旧piecewise与原参考的1887次选态差及严格等价FAIL继续保留，未放宽判据掩盖。

## 构建与边界

TI CGT25.11.1.LTS，既有CCS生成的gmake all增量规则；本轮未重试此前失败的CCS启动器。
链接时间2026-10-27 14:28:26，OUT SHA256：
`9a4daa12eb422d6c1efb78d8ed3fefc79a4c76013bacf13526bff6935839578b`。

pcmfpc_code为15099/16384字，剩1285，比第八轮增加278字；BSS3222/4096字，剩874且未新增全局工作区。
generic根含返回帧20字不变，新计划helper24字；普通/fine/PC_run帧均不变。实际栈路径和RAM回调详见RT9_BUILD_AUDIT.md，不能作为目标栈高水位证明。

22个外设/保护/时序/运行适配等受保护文件、main的82个tracked文件及父Kit既有用户修改指纹保持。未修改PWM、ADC、CMPSS、Trip Zone或任何保护阈值，未删除、提交或推送。

## 下一次计时

第九轮尚无板上耗时，不保证本轮提速。第八轮普通19212cycle（配置200MHz时96.060us）作为同条件基线；仍超过4000cycle周期及1628cycle名义写前窗口。当前HardwareRelease继续0。

由用户按BENCH_TIMING.md，在主功率断开、所有环停止、三相OST和门极状态0时，加载本子工程CPU1的OUT。初始化后确认PC_fast_kernel_revision=9，再向VIENNA_pcmBenchRequest写一次2，等Request回0且Count增加1，保存Status/Cycles/Count/SelectedId/HWState/Fault。不清Trip、不改放行；观察表66项及JS/TXT均不变。

如需要新的阶段分解，先保存请求2结果，再依次单次请求3、4；不得将含计时插桩结果当普通耗时，root_cycles也不得重复累加。
