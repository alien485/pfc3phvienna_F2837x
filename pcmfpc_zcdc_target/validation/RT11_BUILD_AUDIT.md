# 第11轮实际TI二进制只读审计

实际增量构建通过：TI CGT25.11.1.LTS，native exit0，0error、0warning；链接时间2026-10-27 20:48:10。本审计只读取既有OUT/MAP/ASM/源快照并生成证据，没有构建、修改生产源文件、操作硬件或Git。

- OUT SHA256：`f8128de38d9653df32c002aff259a4e036dd9549a9e1e115563b7ac2492b147b`。
- fast.c SHA256：`83ce61c2d0656b86cf9d6809288696c9e09b948694a098003d7d9fadc235d2e8`。
- fast.h SHA256：`f56af0541cc59d079a570dd87b5d4dfda9c74068db5f3bc08dc3b543d9b1fd88`。
- 32份构建固定快照的SHA均匹配；20份受保护构建输入与build10逐文件匹配。
- 实际PC_run_fast在word0x192cf写revision11到word0x7a3，编译初始化也为11。

|实际资源（C28x 16-bit word）|build11|相对build10|
|---|---:|---:|
|RAM执行代码 / 容量|15443 / 16384|+176|
|RAM代码空余|941|-176|
|RAMGS3的.bss / 容量|3242 / 4096|0|
|RAMGS3空余|854|0|
|plain / fine最大帧（含返回头）|88 / 88|+2 / +2|
|PC_run_fast最大帧（含返回头）|72|0|
|pf_lambda_root / single_plan / dense_root最大帧|20 / 24 / 30|0 / 0 / 0|
|栈分配|896|0|

数值以本次实际MAP和编译列表为准；此前原型估计15444words与实际值差1word，不能作为最终容量数。

实际调用闭包包含23个函数、54处调用，所有已绑定callee均位于RAM执行范围。唯一间接计时回调已核实际初始化绑定`pc_profile_clock`，RAM地址0x1ad4a，其实际函数只读Timer0 TIM（0xc00）后返回。计数模数2000001来自现有绑定，不修改Timer配置。新`pf_dq_to_abc_on`以及既有batch binder和兼容wrapper没有链接体，也没有新增LCR或Flash fallback。普通plain模型没有profile引用。成功请求的11/47次计时读取与18根计数由保持的profile代码和正式HOST测试支撑，不能当作目标板计时结论。

19个既有模型/根/排序/profile/clock函数的编译指令流在仅移除注释和统一局部标签后与build10一致，详见`assembly_comparison.json`。新masked inverse在plain word0x18fa0–0x18fe2与fine word0x18b06–0x18b48的实际FPU指令保留`ct*d-st*q`、`st*d+ct*q`以及`-a/2 ± sqrt(3)/2*b`的乘法和加减依赖，没有融合MAC或新的ABI调用。源码仅在N8第二子步使用它，按hw屏蔽不消费的old相值；中点积分仍按phase0→1→2累加。逐行ASM来源和实际指令片段见`FP_dependency_audit.json`。这是有限的依赖审阅，不能代替整个浮点输入域的目标板等价证明。

实际`.bss:pf_control_context`继续位于RAMGS3输出`.bss`中的word0xf526，占20words，既有linker未改变。OFD导出的全部137个`.bss`符号项（**包括零尺寸section标签，并非137个分配对象**）与build10地址和尺寸逐项一致，无新增项；不能把这个口径直接与只计C对象的旧报告数量比较。详见`BSS_layout_comparison.json`。

已知调用链的编译帧和：普通single-plan278、full-plan276、dense264，shadow290，benchmark plain/fine302/302，FAST FULL重构466，编译参考重构406words，均低于896words分配。这些仅为列出的调用链之和，没有证明被中断后台帧、硬件自动保存、异常或嵌套，也不是运行时栈水位证明。

正式HOST证据使用`round11/host/pass2/REPORT.json`；正式十轨迹证据使用`round11/formal_closed_loop/pass2/REPORT.json`；最终源审阅为`round11/audit/FINAL_SOURCE_REVIEW.json`。本次C精确依赖消除的严格输出与闭环比较通过；此前A/B坐标近似实验的FAIL报告保留，未安装A/B。batch的2次模型函数入口是第10轮已存在的结构，本轮不把它重新计为收益。

尚无version11目标板耗时。额外mask分支、帧和搬运可能抵消省去的浮点操作；不据静态代码数宣称加速、WCET或实机放行。当前50kHz周期4000CPU cycles与名义写入窗口1628cycles没有改变，保护、外设与硬件释放条件仍由既有运行程序控制。
