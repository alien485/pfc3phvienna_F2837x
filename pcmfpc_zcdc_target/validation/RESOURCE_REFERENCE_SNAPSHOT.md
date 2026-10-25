# PCMFPC-ZCDC target resource and timing audit

**最终快照更新（13:54:31）：** 原参考32轮二分保留；rootMethod1已接独立`PC_run_fast`。真实增量构建退出0、Errors0；fast已消除全量memset并共享角度，但其18子步内72次坐标变换单独已有至少2088cycle=10.44us，确定超过8.14us写前窗口。**两条新控制路径均不得作为已通过实时时限的带功率控制。** 最终资源、警告、日志哈希及后续可移除工作量见`build_validation/REPORT.md`和`REPORT.json`。以下13:37:52表格及原参考证明保留作优化前对照，不应误作最终布局。

审计对象：`D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target`。只读检查源码、CGT25.11.1实际生成的ASM、MAP、linkInfo及OUT反汇编；未连接DSP，未量测WCET，未修改控制源码或ADC/PWM/保护设置。

## 结论及证据边界

RAM布局及Flash到RAM拷贝已形成真实链接结果，没有发现链接段重叠或float64运行库。**当前正常32轮二分路径确定不满足名义8.14us/1628cycle写前窗口，且下界已超过20us完整周期。** 另外，每次`PC_run`全量输出清零本身的真实循环下界约14.97us，即便改用分段求根仍需先解决清零成本。此处给的是保守执行工作量下界，不能当成实际执行时间或WCET；没有DSP实测通过证据。

快照来自`FLASH/vienna_pcmfpc_zcdc_F2837x.map`头部`Linked Sun Oct 25 13:37:52 2026`、同刻linkInfo及OUT。MAP SHA256=`DD4E6E59E9D9A1BA45D300CB5B330A894057FE26E6792022E609B4B2FD615AF0`，linkInfo SHA256=`DE046155C96DDC7F75A3343F17194B6C8745C875879C0AFCC175563ECC52E4B6`。linkInfo记录`link_errors=0x0`；构建日志的成功不能证明控制时限满足。后续再次构建应按JSON中的哈希判断是否为同一快照。

所有MAP地址、长度均为**16位C28x word**，换算字节须乘2。不能把目标`sizeof`当成宿主8位char布局。

## 实际段布局

| 段/区域 | 运行地址/容量(word) | 已用(word) | 剩余(word) | 解释 |
|---|---:|---:|---:|---|
| RAMGS12GS15 | 0x18000 / 0x4000 | 0x176D=5997 | 0x2893=10387 | 新`pcmfpc_code`，11994字节 |
| RAMLS2LS3LS4LS5 | 0x9000 / 0x2000 | 0x7C3=1987 | 0x183D=6205 | ISR1/CLA等已有代码 |
| RAMGS0GS1 | 0xC000 / 0x2000 | 0xAE7=2791 | 0x1519=5401 | `.TI.ramfunc`及ISR2等 |
| RAMGS3 | 0xF000 / 0x1000 | 0xABE=2750 | 0x542=1346 | `.bss`，含全局PC输入输出/状态 |
| RAMGS4GS5 | 0x10000 / 0x2000 | 0x1B00=6912 | 0x500=1280 | `pcmfpc_trace`，13824字节 |
| RAMGS6GS11 | 0x12000 / 0x6000 | 0x5DC0=24000 | 0x240=576 | `pcmfpc_wave`，48000字节，余量1152字节 |
| RAMM1 | 0x400 / 0x400 | 0x39A=922 | 0x66=102 | stack896word + data26word |
| RAMLS0LS1 | 0x8000 / 0x1000 | 0x1CC=460 | 0xE34=3636 | controlVariables |

`f2837xd_flash_cpu1_lnk.cmd:63`将`pcmfpc_code`明确设置`LOAD=FLASHI`、`RUN=RAMGS12GS15`，符号`PCCodeLoadStart=0xA8000`、`PCCodeRunStart=0x18000`、`PCCodeLoadSize=0x176D`与MAP一致。`device/device.c`的`Device_init():58`在`_FLASH`路径下执行该段`memcpy`，位于ISR启用之前；实际`device.asm`也存在此调用。code内四个对象贡献：core0xBBA、runtime0x500、observer0x40B、grid0x2A8 word。没有依赖“调用者在RAM所以子函数也在RAM”的假设。

## 栈及记录容量

`.stack=0x380=896word=1792字节`，不是896字节。编译器`DW_AT_TI_max_frame_size`显示（含编译器记账的返回槽）：ISR1=66、select=8、PC_run=84、predict_interval=58、pc_root=64、projection=10 word。已知核心调用链合计390word；post影子计算链合计400word。重构链ISR1->sample->VO_reconstruct->predict->root->projection合计376word。帧大小来自真实ASM，并非只统计C局部变量。

上述数值**不是全程序栈上界**：还未完整叠加被打断的后台调用、硬件自动中断压栈/对齐、嵌套中断及所有库路径。静态容量未显示明显必然溢出，但不能宣称栈已验收；需实板水位或完整调用图/中断嵌套审计。全量PC_Output为998word，放全局`.bss`，并不占据每层998word栈；`VO_reconstruct`的局部PC_Interval已体现在其146word最大帧内。

`VIENNA_pcmRecords[128]`每条54word=108字节，对应6912word；按50kHz最多覆盖2.56ms，适合观察过零局部决策，不能单独计算10周波THD。`VIENNA_pcmWave[2000]`每条12word=24字节，5拍平均后以10kHz记录，覆盖0.2s，即50Hz约10周波。5点均值会改变谐波幅值且抗混叠有限，导出分析须记录这一采样链，不把它称未经滤波的原始50kHz电流。NOINIT段以初始化后的count为有效边界，旧RAM内容不代表本次采样。RecordArm/WaveArm默认关闭；启用记录增加ISR执行时间，须分别测量。

## 实时调用位置与浮点库

| 函数 | MAP实际运行地址 | 说明 |
|---|---:|---|
| PC_run / PC_predict_interval | 0x1860A / 0x18332 | 新RAM段 |
| PC_abc_to_dq / PC_dq_to_abc | 0x18067 / 0x180AC | TMU/FPU32内联指令，无三角Flash库调用 |
| VIENNA_PCMFPC_sample / select / post | 0x18C73 / 0x18C29 / 0x18DD8 | 新RAM段 |
| VG_run | 0x19535 | 新RAM段 |
| VO_update_delta / VO_reconstruct | 0x190F2 / 0x192A4 | 新RAM段 |
| PC_default_config / VIENNA_PCMFPC_init | 0x835E4 / 0x83384 | Flash初始化路径 |
| memset | 0x838E1 | **PC_run每拍实际调用的Flash热点** |
| expf / logf / __c28xabi_divf / memcpy | FlashB | 链接库存在不等于都在实时路径执行 |

实际新文件LCR调用图中只有`VO_configure()`调用`expf()`，它从`VIENNA_PCMFPC_init()`运行，属于启动配置。`logf`/`__c28xabi_divf`没有被这些新实时函数直接调用；float除法和三角运算主要编译为FPU/TMU指令。`memcpy`在Device_init拷贝路径。`PC_run()->memset`则确实位于实时循环，不能只看core函数已在RAM就遗漏它。

MAP/linkInfo没有float64/double算术库或double转换符号，只有float32运行库的`__c28xabi_divf`。ASM前部由TI头文件生成的未保留`__isfinitel`等helper含`__c28xabi_cmpull`声明，但最终MAP/linkInfo无对应链接符号；不能将这一64位整数比较声明误报为实时double计算。此结论仅对应当前链接快照。

## 可证明的工作量下界

CPU=200MHz，每cycle=5ns。名义写前窗口8.14us=1628cycle，实际还要扣入口和40TBCLK=0.4us写入守护；完整周期20us=4000cycle。因此1628已经是偏宽松的比较基准。

1. `vienna_pcmfpc_zcdc.c::PC_run():301,312`：1个首区间+8候选区间，每区间`PC_predict_interval():220`固定2子步，共18次`pc_root`。正常成功路径采用`PC_ROOT_BISECTION32`，每次2端点+32中点+1最终projection，共630次；仅中点576次。提前错误退出不代表正常控制实时通过。
2. `FLASH/vienna_pcmfpc_zcdc.asm:2681`附近的`pc_projection`三相循环，真实OUT地址0x180F1..0x18115，每相至少执行6条未作`||`并行的CPU_ALU指令：`MOVB AH,#1`、`LSL AH,T`、`AND AH,AL`、`MOV AH,T`、`ADDB AH,#1`、`MOV T,AH`。只按每条最少1次指令发射周期，忽略FPU、分支、存取等待、函数进出，得到中点部分至少`576*3*6=10368cycle=51.84us`，全部projection至少`630*3*6=11340cycle=56.70us`。这已经证明不能满足1628或4000cycle。
3. `PC_run():289`全量清零，实际ASM`:5581`传`ACC=998`，调用Flash的`memset@0x838E1`。`ccs_linked_disassembly.txt:18436`显示每word真实执行`SUBB ACC,#1 / MOV *XAR6++,AR5 / SB -2,NEQ`，998轮至少2994cycle=14.97us；即便不计Flash等待，也独立超过写前窗口。不能用宿主高速memset推测DSP成本。
4. `PC_predict_interval():212`的清零被内联成`RPT #91 || MOV *XAR4++,#0`（ASM`:3980`），每次92word。9次区间至少828word写入/约828cycle；它重复清零刚被全量PC_Output清过的内嵌区间。
5. 只合计上述互不重叠的projection最保守6ALU下界、全量清零、区间清零，已有`11340+2994+828=15162cycle=75.81us`。这仍未计三角变换、模型浮点、排序/候选选择、PLL/ESO、保护及ISR开销。
6. 闭环历史有效时，`VIENNA_PCMFPC_sample()->VO_reconstruct()`还会按已施加门极重构两个区间，各2子步，再加4次root。未把这一额外成本混进PC_run下界；其只会增加实际总时长。旧FCS模式也会先运行PLL；若打开ShadowEnable，post同样执行完整PC_run，不能把影子路径视为无实时代价。

这是一条静态不满足证明，不是WCET报告；没有给出实际最大cycle、平均cycle或中断抖动数值。`VIENNA_pcmAlgorithmCycles/WriteCycles/BodyCycles`只能在真DSP运行后提供证据，GPIO/向量入口出口及写入生效还需示波/逻辑分析仪核对。软件计错后Trip不会追溯阻止已经错过的首次ZERO。

## 不改变外设时序的改进顺序

1. 把全量诊断输出清零移出实时核心：逐项明确成功/失败输出有效性，初始化必要的累加字段（switch_count/current_count等），隔离诊断数组或仅在记录开启时生成。不能直接删除memset导致未赋值字段残留；失败安全ID及status、影子记录读取也必须回放。
2. 用已有分段线性根作为单独候选，并检验最多6断点/7区间、全OFF平台根、端点、float32平局/残差与基准32二分的一致性。保持32二分作离线oracle；切换求根须停机，不改变ZERO/ADC触发来掩盖计算量。仅更换根仍不能绕过第1项的确定瓶颈。
3. 缓存已知角度及公共变换：首段与候选段的theta节点对8候选共享，可复用sin/cos、固定h/L与h/C；候选自己的中点更新量/端点电流不得错误共享。用完整候选排序和selected_id回放，明确浮点运算顺序变化引发的近似平局。
4. 分离控制必要字段与完整两子步轨迹，复用候选公共预测起点；Observer已施加门极重构保留其独立正确语义，不能用未来候选或电流差分自证。
5. 每步真实增量构建后重新核对ASM/MAP与调用图，再在默认关断下由用户规划DSP计时；至少分别量测记录关/开、终端未激活/激活、阻断、过零、数值边界、失锁/故障和最差排序路径。未获得写前及整ISR时限证据前不能把模式1/2或影子计算用于带功率运行。

## 当前硬件配置事实

后续用户明确授权的目标值为100V线RMS、50Hz、170Vdc、50ohm、L=3mH、C_half=440uF、7A瞬时CMPSS、5.5A独立参考峰限、204V滤波OV；200V/50ohm不放行。以上配置已由集成者设置，不是本审计修改。其器件热/电感饱和/保护延迟与实板极性尚没有本代理测量证据；配置授权和构建成功均不能替代硬件验证。
