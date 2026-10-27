# 第八轮：固定子步预测与普通/细计时分流

2026-10-27，目标仍为new_mpc独立工作目录的pcmfpc_zcdc_target，版本标记8。
第七轮基线源码530a0d97.../8548b529...，普通板上计时21138cycle；coarse21497、fine22817，
其中根窗口9005、预测根窗口外8921。这些历史测量不是版本8的实际耗时。
第八轮试验26日开始、27日恢复；恢复时live仍为完整版本7，22个受保护文件及main82个文件一致。
用户旧MAP只更新了Linked时间，原OUT仍928bb780...；单独保留时间差证据，未覆盖历史构建。

## 实现

只改变fast.c/.h中的CONTROL实现及版本标记。两个固定子步以常量0/1展开，减少动态索引；
用同一个模型宏生成pf_control_interval_plain与pf_control_interval_profiled。
普通/coarse预测没有逐根读钟分支，fine专用路径才测量18次根。
小型私有wrapper保留旧签名，内部叶函数删除无用cfg参数；公开接口、66项观察表及profile字段不变。
两个分支分别编译，数值语义相同不代表寄存器分配或耗时相同；不能把fine-coarse差全部当成读钟开销。

保留8候选、2子步、原浮点表达式及相序累加、坐标往返、分段根、残差/端点、范数预算、排序和
严格末级判据。没有引入近似三角、零点钳位、额外epsilon或更宽松误差标准。
15个根、FULL、变换、种子、排序及交集helper函数体与第七轮逐字相同。
适配层runtime、ESO、HAL、ADC/PWM、CMPSS/TZ、采样/加载时标、保护值及CCS配置未改。
保留既有工作区类型和reserved布局；仍只允许CPU1 ISR1独占调用，不增加重入/并行使用资格。

## 候选选择证据

初始单纯局部变量改写的几个版本增加栈读写，没有直接安装。最终只安装split_common_no_cfg。
基线raw字节指纹530a...，初始试验报告的99f555...是LF规范化内存字符串指纹，实际基线编译文件
raw字节已核对与版本7一致。拒绝的试验和原日志保留，未删除文件。

受约束成功路径proxy限定hw7、恰好两个子步/两个根、无分析、首步seed指定NULL或shared，
次步NULL；不计callee体、分支延迟、资源/存储停顿，部分成功检查放宽。
旧caller路径637/567主issue组，对选中候选为462/411；memory/stack MOV主组231/213到153/141。
SP/FP组由59/58增至91/86，因此不是所有访存都下降；该模型也不统计parallel副操作的全部bus流量。
它支持结构改善的判断，不能转成实际提速百分比、最坏时限或全硬件状态结论。
没有把旧整函数静态440条简单乘2当作动态基准。详见CORE_SELECTION及audit/SUCCESS_PATH_PROXY。

## 已执行验证

| 检查 | 结果 |
|---|---|
| diag1与实际第七轮同策略比较 | 31750完整PC_Output、140025区间逐字节0差 |
| diag0与实际第七轮同策略比较 | 同上，逐字节0差 |
| 跨角度诊断策略 | 31750例仅允许未交集gz及diag[4]变化，其余0差 |
| 旧7/新8私有CONTROL直接对照 | 24912例，shared/NULL各12456，状态及完整区间字节0差 |
| CONTROL异常与阻断 | 24614成功、298拒绝（中点150/数值148），含1492阻断成功，部分输出写入保持 |
| profile | 80项fake-clock通过，11/47次读钟、18根、单次消费、回绕、错误和输出不变 |
| 完整数据profile再回放 | 31750输入*diag0/1*coarse/fine及2个导出错误例，共127008次比较，完整输出/状态/标志0字节差 |
| 安全/runtime/非零ESO | 85/299/16项通过 |
| HOST闭环 | 10个CSV和10个指标JSON对第七轮逐字节相同 |

最终证据host/pass1，日期27日；18个执行源/测试指纹前后核对一致。
没有为未改交集helper重复第七轮10321920例穷举，原证明与结果继续保留。
旧piecewise的1887次选态差和严格等价FAIL仍保留；没有用对第七轮等价掩盖原差异。
HOST测试不是目标TI浮点的普遍逐位证明，也不是带主功率闭环试验。
追加profile_replay单独保存，没有改写pass1脚本/快照；两个有限输入中点错误例在第1根和第5根
退出，profile completed1/valid0及部分计数正确。其计时为fake downcounter，不是DSP周期数据。

## 实际TI构建与资源

同一CCS生成的FLASH/gmake all增量规则，先-n核查没有删除命令，再由TI CGT25.11.1编译链接；
nativeExit0、0error/0warning。清理保护保持启用；本轮没有重试前一轮失败的CCS应用启动器。
未修改优化等级、浮点/链接参数，未重新生成SysConfig或进行Clean/Rebuild。

- 链接时间：2026-10-27 08:48:32。
- fast.c SHA256：8072a0cbfb2aa810a19f971f504fa398ec4631590eb02793d2b00a26da46828d。
- fast.h SHA256：c898524ad850168d6c792e29b7666979ef7a4225c1874b251984b31b790c3c52。
- OUT SHA256：d01c3f7fa2e7a403c8ab5b4c9ef54319aeaa0f8823704c5cba39b886f97b28c2。

32个固定源/产物快照见build_pass8。代码14821/16384word，较第七轮增加1176；BSS3222/4096word不变。
普通/fine叶函数帧为62/64word（含返回），PCrun86（原88）；较大代码/栈是本轮明确代价。
完整实际RAM、调用闭包、FP、栈及计时隔离证据见build_pass8/AUDIT。
实际22函数/53调用及绑定回调闭包全部在RAM；原根/FULL/计划/计时helper汇编与7相同。
普通预测核零profile数据引用/计时guard，wrapper没有独立链接符号，fine才调用只读Timer0回调。
普通generic/dense控制链264/252word，普通/fine benchmark链288/290word，最大既有重构链506，分配896word；
具体逐链数值以AUDIT为准。这不是中断嵌套、后台占用或全程序栈水位的资格证明。
两步neutral均保留phase0到1到2依赖；并行MAC指令不被误当成fused FMA。+0省略等TI编译行为
不能推广为所有signed-zero/NaN/任意输入的逐位证明。

## 当前资格与用户下一步

用户后续反馈普通BenchStatus1/Cycles19212/Count1/ID3/HW2，按本轮加载8、确认marker再请求2流程关联。
新截图仅bench区，未独立展示marker/OUT/实际时钟。较第七轮21138少1926cycle/9.11155%，
配置200MHz下96.060us，少9.630us。单次且同条件假设，不是统计稳定提升或WCET。
该值仍是整周期4000cycle的4.803倍；未达到20us周期或8.14us写前窗口。
记录见bench_20261027_round8/REPORT；本次跟进只归档，没有再改控制源码、构建或访问硬件。
只能由用户在主功率断开、HardwareRelease/clearTrip/各closeLoop0、实际/待执行0及全OST下，
加载本子工程CPU1的OUT，初始化后确认PC_fast_kernel_revision=8，再写一次请求2。
先用未插入分析读钟的BenchCycles和版本7同条件21138比较；需要定位时再测请求3/4。
fine/coarse分别编译，不能把两者差直接当成普通路径的可精确扣除计时开销。
保持HardwareRelease0和原故障守护，不清Trip或改参数绕过超时。

没有写硬件、删除文件、Git提交或推送；main及父目录Kit.json用户改动保留。
