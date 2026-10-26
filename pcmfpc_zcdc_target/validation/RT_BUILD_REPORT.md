# 第三轮真实CCS构建、资源及独立时限审计

2026-10-25；当前唯一项目仍为new_mpc中的pcmfpc_zcdc_target。本报告只对应20:42:56链接的
第三轮OUT/MAP/XML/ASM，不把17:25、17:31或13:54快照当成当前产物。

**本轮代码通过真实编译、链接和宿主验证，但仍确定不满足现有50kHz执行时限。**
正常快核心的保守指令工作量下界为6408cycle/32.04us，超过1628cycle/8.14us写前窗口及
4000cycle/20us完整周期。该数是最低工作量证明，不是实测平均时间或WCET。
HardwareRelease继续为0；没有远程连接、烧录、上电、清Trip、Clean/Rebuild或删除文件。

## 构建与源码快照

主代理执行build_incremental.ps1 -SkipImport，使用CCS12.3、CGT25.11.1和既有独立workspace，
原生退出0。独立核查日志Errors0/Warnings4、linkInfo link_errors=0，产物时间20:42:56。
四项Problems仍为SysConfig可选Device Support建议及三个原fcs变量unused marker，没有新的
代码生成或链接错误。新wrapper的F28379D数据库引用预检查通过，没有打开debug session。

OUT SHA256：`8c8251baff6b1e1938c3e6c8d531643ffd261c1e05e3c729bcfb7e42527bddd5`。

MAP SHA256：`e3c67617cb0fae0d4c8a76d068894911c86db369fc0ecfae1b7a0b852c8fc010`。

fast.c SHA256：`b8665494d2fd304f3b644c451dbf0f479b0380913f42350ab3a798260ada00a8`。
15份明确命名源/配置副本逐个复核与source_hashes.json一致；源文件及编译器产物都在本目录。
完整构建命令、stdout/stderr、实际OUT反汇编也已逐文件归档。

## 有效优化和资源变化

本轮引入PF_RootWork/PF_ControlWork/PF_SelectWork静态有界workspace；撤销root与interval的大规模
内联，控制使用独立pf_control_interval，FULL observer保持完整pf_interval。首子步共享缓存、
CONTROL_ONLY省pole积分及其显式不可用标志继续保留。新快路径和纯参考PC_run均保留。

| 项目（C28x word） | 第二轮 | 第三轮 |
|---|---:|---:|
| pcmfpc_code / 16384 | 14154 | 11947 |
| 剩余代码RAM | 2230 | 4437 |
| .bss / 4096 | 2960 | 3110 |
| PC_run_fast最大帧 | 264 | 88 |
| 控制interval最大帧 | 内联在大帧中 | 50 |
| root最大帧 | 内联在大帧中 | 36 |

静态workspace增加数据用量，换回代码和栈余量。第三轮已不再存在第二轮每候选114次
MOVL XAR0,#offset的大FP访问形态；不能继续沿用第二轮22.88us区域证明推断本轮性能。
但减少frame并没有让完整18子步及求根工作自动适合8.14us窗口。

其他区域：RAMM1占936/1024，其中stack仍896word；trace7168/8192；wave24000/24576。
未发现链接区域重叠或容量溢出。pcmfpc_code从FLASHI0xA8000加载到RAM0x18000，长度11947word；
LoadStart/RunStart/LoadSize与Device_init的实际拷贝约定一致。

## 实际执行位置和库调用

OUT反汇编确认：pf_root@0x181E7、pf_control_interval@0x1855C、pf_seed@0x18790、
pf_rank@0x188ED、PC_run_fast@0x18962、PC_fast_predict_interval@0x19362，均位于新RAM代码段。
runtime select/sample/post和PLL/ESO实际函数同样在该RAM段。cfg/output_init/plan也在RAM。
完整实际调用列表见realtime_calls.json；不能因源ASM仍列未保留helper实体就误报实时调用。

快路径未见memset、memcpy、expf、logf等Flash库LCR；VO_configure调用expf是初始化。
pc_elapsed有未调用的Flash fallback实体，但实时runtime已没有LCR pc_elapsed；finite/PLL
小helper也无LCR。原参考路径的memset仍按设计保留在Flash，不应混入rootMethod1快路径。
MAP未发现float64算术/转换库，只有float32 __c28xabi_divf等现有库；TMU/relaxed与宿主
precise/libm仍有末位差异可能，宿主零差分不等于目标数值逐位等价。

## 独立、可复核的时限下界

CPU名义200MHz，1cycle=5ns。为保守起见，每个顺序指令发射组仅计最少1cycle；
`||`并行指令合并为一组，所有条件谓词一致性和可变循环次数都放松，以获得比真实合法
执行更小的路径成本。所有分支标签正确解析，未知控制转移会触发assert，不能默默当fallthrough。

1. 控制子步：pf_control_interval从ASM5361行（$C$L82入口）到5885行（回边分支前）
   最短174组。此成本包含一次LCR pf_root，只按1组计费，不含被调用root内部任何指令。
   它甚至允许每个子步都取seed捷径、三相neutral循环提前结束，属于有意放松的下界。
2. 成功root：pf_root从入口3962行到4968行的成功AL=0赋值前，最短182组。
   root无需LCR其它函数；所有成功返回必须经过该点，错误提前返回不能形成正常控制结果。
3. 成功PC_run_fast固定首区间1个、候选区间8个，每区间2子步，因此控制子步及root各18次。
   调用者区域与root区域互不重叠，合计至少`18*(174+182)=6408cycle=32.04us`。

两条完整最短路径分别保存在control_substep_bound.json、root_success_bound.json，
combined_lower_bound.json记录合计与预算；源ASM与linked_disassembly.txt保存机器码对应。
尚未统计首/候选区间入口出口、PC_run输入/seed/成本/排序/末级，以及PLL/ESO、ADC读取、
保护、AQ写入、记录和ISR入口出口。因而该下界已足够否定本轮两个预算，不需要伪造实测WCET。

第三轮6408cycle与第二轮4576cycle计算的是不同放松子集，不能相减来判断实际变快/变慢。
本轮可证明frame/代码容量改善；仍不能宣称整个运行时间改善了某个百分比。

## 栈和接口边界

已知正常快控制链帧和：ISR1(66)->select(8)->PC_run_fast(88)->control(50)->root(36)
=248word。FULL重构链ISR1(66)->sample(44)->VO_reconstruct(164)->fast_predict(42)
->pf_interval(114)->root(36)=466word。shadow约260word、单次bench约266word。
这些不是全程序栈上界，仍排除被打断后台、硬件自动帧、潜在嵌套和全部异常/库路径；
没有DSP水位证据。静态workspace只允许CPU1 ISR1顺序调用，不能从CLA/ISR2并发重入。

PC_run_fast的未来候选pole积分仍不可用，占位零不表示物理积分为零；Observer只能使用
FULL_SUBSTEPS。已有独立有效标志、记录来源和宿主验证，不能导出旧RAM当当前完整轨迹。

本轮宿主证据位于../round3/HOST_VALIDATION.md：31750控制回放、三种detail各46675区间、
85安全/127runtime、PLL/ESO及实际fast闭环回归均通过。它们验证数学/状态契约，不验证
真实CPU时限、ADC偏斜、器件或保护动作。当前不能进入主功率闭环阶段。
