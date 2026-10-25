# 最终CCS增量构建、资源及实时性审计

日期2026-10-25。唯一目标为`D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target`，CCS项目名`vienna_pcmfpc_zcdc_F2837x`，分支new_mpc。

**本轮真实构建通过，但新算法写前时限未通过。** 原32轮二分和新增fast分段根路径都存在可证明的时限下界超出，不能把目标描述为可带功率运行。硬件放行、Shadow、记录默认均为0，ModeRequest=0、RootMethod=0；未连接、烧录、清Trip或运行DSP硬件。PWM/ADC触发与生效时刻没有调整。

## 构建证据

运行`build_incremental.ps1 -SkipImport -PhaseTimeoutSeconds 180`，使用CCS12.3、CGT25.11.1.LTS、现有独立workspace；只执行`-ccs.buildType incremental`，没有clean/rebuild，也没有删除文件。最终13:54:21启动、13:54:31链接完成，包装器读到真实原生退出码0；linkInfo记录`link_errors=0`，CCS汇总`Errors(0)`、`Warnings(4)`。日志另存`fast_final_ccs_incremental.command.txt/stdout.log/stderr.log`，不会因下次默认日志覆盖而丢失本轮证据。

受限环境第一次启动无日志进展，先核对其PID37180命令行为本任务独立workspace后，只终止该自行启动的headless进程；在提升执行环境重试成功。该受限尝试日志保留为`restricted_fast_attempt_*`，不是编译失败证据。包装器由持有进程句柄、双管道异步排空和WaitForExit取得真实ExitCode，已经验证exit0/exit7及真实CCS0；不以旧OUT存在判成功。

CCS四项警告为：SysConfig建议添加可选Device Support模块；fcsScale、fcsVMean、fcsVPeak未使用标记各1项。后三项只出现在最终Problems汇总，本轮实际cl2000编译段没有新增对应#179消息；当前声明在`vienna.h:496`且已受`!VIENNA_PCMFPC_ENABLE`限制，Problems仍报495。较可能是旧marker保留，未通过clean验证消除，不能武断说它们是新编译错误。stderr还有SLF4J无logging binding的启动器提示，与算法链接错误不同。没有抑制或删除这些证据。

最终MAP SHA256：`e1240cdc5a18ac67f91f1a0a4f925f24948def5c3eb3741e1e666c5ec2d291b2`。

最终OUT SHA256：`fb386048985a2865ebdd3258f7a348cf7d7f92b8f1c878bbda21b683fceb1b83`。

fast源码SHA256：`7ba85bdbbe12d0ab7023b1b499605f33fb9c2f289153ebef3e700b5d8a7c1c1e`，与独立host回放快照一致。所有构建日志、源码、MAP/XML/OUT/ASM的完整路径、时间、长度和SHA256见本目录`REPORT.json`。

## 最终RAM及Flash->RAM拷贝

单位均为16位C28x word，实际字节数为word数乘2。

| 区域 | 容量word | 已用word | 剩余word | 内容 |
|---|---:|---:|---:|---|
| RAMGS12GS15 | 16384 | 10025 (0x2729) | 6359 (0x18D7) | pcmfpc_code |
| RAMLS2LS3LS4LS5 | 8192 | 1987 | 6205 | ISR1/CLA等 |
| RAMGS0GS1 | 8192 | 2791 | 5401 | ramfuncs/ISR2等 |
| RAMGS3 | 4096 | 2896 (0xB50) | 1200 | .bss，包括static plans |
| RAMGS4GS5 | 8192 | 7168 (0x1C00) | 1024 | trace NOINIT |
| RAMGS6GS11 | 24576 | 24000 (0x5DC0) | 576 | wave NOINIT |
| RAMM1 | 1024 | 934 | 90 | .stack896 + .data38 |

`pcmfpc_code`从FLASHI `0xA8000`加载，到CPU1 RAM `0x18000`运行，共10025word/20050字节；`PCCodeLoadSize`和`f2837xd_flash_cpu1_lnk.cmd`一致。`Device_init()`在`_FLASH`路径的`device/device.c:58`调用`memcpy`完成实际拷贝，真实device.asm存在该调用，ISR启用前执行。五对象占用：fast3429、reference3002、runtime1825、observer1087、grid680word，加2word对齐空洞。未发现区域重叠或链接溢出。

实际运行地址：`PC_run_fast=0x186F4`、`PC_fast_predict_interval=0x18CD6`、参考`PC_run=0x1936F`、`VIENNA_PCMFPC_select=0x199AB`、`sample=0x19A06`、`VO_update_delta=0x1A07A`、`VO_reconstruct=0x1A22C`、`VG_run=0x1A4F1`，均处于所拷贝RAM段。runtime按rootMethod0调用参考、rootMethod1调用fast；observer的rootMethod1使用`PC_FAST_FULL_SUBSTEPS`，没有把不含极点轨迹的summary冒充执行区间积分输入。

fast静态角度计划仅由CPU1 ISR1顺序调用，非可重入，不能再从ISR2/CLA并发调用。它们占`.bss`，没有每次进入动态分配。此项目不以堆作控制数据来源；最终MAP未出现已分配`.sysmem`，链接命令的heap配置不代表可借用的栈容量。

## 栈与NOINIT记录

栈仍为896word/1792字节。按编译器最大帧记录，已知fast控制链`ISR1(66)->select(8)->dispatch(4)->PC_run_fast(88)->pf_interval(90)->pf_root(60)->pf_projection(6)`合计422word。影子post链434word，执行门极重构链428word。它们不是全程序栈上界：未完整计入被打断后台调用、硬件自动压栈/对齐、潜在嵌套及全部库路径。没有静态必然栈溢出证据，但需要水位/完整调用图证据，不能写成已验收。

最终Record增加output_source/core_status两个u16后，每条56word/112字节，128条为14336字节，50kHz覆盖2.56ms。wave每条12word/24字节，2000条48000字节，5拍平均后10kHz覆盖0.2s/50Hz约10周波；均值会改变谐波幅值、抗混叠有限，不能当作原始50kHz电流。NOINIT内容用本次初始化后的count限定有效区间，旧RAM不能解释为新样本。记录开关默认关闭，打开后的ISR最差时长必须另测；wave所处银行只余1152字节。

fast每次定义全部基本输出、gi/gu/gz/排序/10项zcdc_diag；成功时区间summary有效，详细substep不写，`root_iterations=0xFFFF`逐步标记不可用、`PC_fast_output_substeps_available=0`，runtime还有OutputDetailValid/OutputSource，不能导出旧substep当作当前预测。公共fast interval的FULL模式在成功时完整写所有字段，供ESO重构。

## 运行库和Flash热点

真实fast调用图没有memset/memcpy/expf/logf等Flash库调用；坐标变换、投影、求根、排名、角成本及保护检查均在新RAM段。已消除原1996字节全量输出清零、重复92word区间清零，快路径只初始化实际基本输出。原`memset`仍链接在Flash `0x838FD`，因为rootMethod0参考路径被明确保留；不能因MAP有memset便误报fast仍调用它，也不能因fast没有它而说参考已实时可用。

`VO_configure()->expf`为启动配置，`Device_init()->memcpy`为启动拷贝。MAP/linkInfo未见float64算术/转换库，只有float32的`__c28xabi_divf`；三角函数使用目标TMU指令。ASM由TI头生成但被丢弃的long-double/64位整数helper声明不是实际链接float64路径。宿主precise/libm与目标relaxed/TMU仍可能产生不同末位数，host零差异不能代替目标回放。

## 可证明的时限结果

200MHz下，名义写前窗口8.14us=1628cycle，实际还要扣入口及40TBCLK/0.4us守护。完整控制周期20us=4000cycle。下表只列已证明的最小串行发射工作量，不是平均时间或WCET。

| 路径 | 仅统计的工作 | 保守下界 | 结论 |
|---|---|---:|---|
| 原32二分PC_run | 18root×35投影，每相仅6条ALU；998word全清零；9×92word区间清零 | 15162cycle/75.81us | 写前及整周期均确定不满足 |
| fast分段PC_run_fast | 18子步中36次dq->abc及36次abc->dq，只计各变换体 | 2088cycle/10.44us | 写前确定不满足；整周期未证明通过或失败 |

原参考详细证明及优化前真实OUT反汇编保留于`../resource_timing_audit.md`、`../resource_timing_audit_pre_fast.json`、`../ccs_linked_disassembly.txt`。

fast证明来自实际CGT ASM和`../ccs_linked_disassembly_fast.txt`：`pf_abc_to_dq@0x1818C`有31个顺序指令组、`pf_dq_to_abc@0x181F4`有27个，已排除`||`并行行的第二条；二者均无条件分支，正常成功路径每次全执行。`pf_interval()`每个子步各调用2次，共18子步，所以`36*(31+27)=2088`。尚未计求根、调用者LCR、初末额外变换、清基本输出、排名/末级、PLL/ESO、ISR进出及存取等待。该下界已足以否定1628cycle，不需要捏造一个更乐观的WCET。

## 后续工程工作量，不是本轮时限承诺

可以在保持当前外设时序下继续研究：

1. 局部强制内联坐标变换。当前abc体有4条寄存器保存恢复+1条返回，dq体有6条保存恢复+1条返回，36次各类可少432个体内指令组；72条调用者LCR也可能省去。合计504组只表示可移除的最少发射工作（2.52us尺度），真实寄存器压力/溢出/代码布局要重新编译审计，不能直接当作实际节时。
2. 8候选的第一子步初值、free_dq和角度相同，old/freeabc可共享。理论少14次dq->abc，当前体相当于378组/1.89us的最少工作。若同时按上项内联，重合ABI部分不能重复计，额外仅按280组/1.40us。只删已识别ABI并共享这14次后，已统计变换体仍有1376组/6.88us，名义余量仅252cycle/1.26us，尚没有支付18次求根及其他任务；不能据此宣布时限可达。
3. 运行时summary若不使用pole积分，可独立设计明确的积分不可用标记，省去每子步一次pole->dq及其算术。该改动必须与FULL observer区间分离，并验证summary接口、错误输出、所有成本及近似平局；本轮未实现，不能把其收益写入当前OUT。
4. 低层特化分段根、常数/固定矩阵、编译器寄存器调度仍需完整候选回放、目标float32/TMU复核及新的ASM。不能减少8候选或删除末级后继续声称与当前模式7相同。

改为20kHz或把ISR提早只能作为另行设计方案：它会改变采样有效性、可用ADC结果、延迟模型/门极生效边界及PLL/ESO/外环系数，需要重新审计与验证。本轮不执行这些调整，也不以改时序掩盖计算量。

真正D阶段仍需用户在无主功率、保持关断条件下测DSP纯数值路径、完整ISR、最坏过零/阻断/排序、记录开关及目标TMU数值；现有单次numeric benchmark只是一条测量入口，不表示任何硬件计时已经发生。只有写前窗口和完整ISR均有证据后，才进入用户控制的后续带功率流程。

## 宿主证据及硬件边界

独立回放31750例（31739有效+11非法）相对原float32分段根，选择/排序/激活/mask/status、gi/gu/gz/dq/np/积分及10项diag均0差异；46675次FULL区间逐字段0差异。73项独立失效边界检查通过。R或L=FLT_MAX的特例，参考可能PC_OK而margin非finite；fast新增派生量finite守护，返回PC_ERR_NUMERIC/安全gate0，已单列为有意加强，不声称任意有限浮点域完全等价。详见`../fast_replay/REPORT.md`与`../FAST_SAFETY_VALIDATION.md`。

同一扩展数据上，原float32分段根相对原float32二分根本身有2198次selected差异；这不是fast新增差异，原论文对齐的500trajectory+500synthetic在该比较中为0差异。必须保留这一数值边界，不以host等价暗示分段根与32二分在全域相同。

用户确认并授权的目标配置为F28379D、100V线RMS/50Hz、170Vdc/50ohm、L3mH、每半440uF、7A瞬时CMPSS、5.5A独立参考峰限、204V滤波OV。配置授权及离线测试不是热、电感饱和、保护延迟或实板波形验证。当前HardwareRelease仍为0；本报告不放行带功率运行。
