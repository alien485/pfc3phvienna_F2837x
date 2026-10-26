# 第四轮目标产物独立审计

2026-10-26。审计对象是09:26:31链接的pass4快照；只读取既有工程与产物，
在本快照目录写入审计证据。没有构建、连接调试器、加载/烧录、写目标变量或删除文件。

结论：目标代码确实采用新的lambda活动集根、三相展开及h/C缓存；链接与RAM资源检查通过。
但保守指令工作量下界仍为4860cycle，按配置200MHz为24.30us，已超过20us周期及
8.14us名义写前窗口。不能由编译成功或根的代数简化放行主功率。

## 产物关联

- OUT SHA256：`52971695495f326d60d936a80f57aee79c52750c4e84dae0016b364f3a780b2b`。
- MAP SHA256：`5222c7d46836f54a98f85e1c36194b0f627057c5cfe8b70bd247bc964a02ebaf`。
- fast.c SHA256：`36412b8fa7c0c6f8051c330ce828d2db92ac4ca4b69c5c260afe533c2f723ac5`。
- fast.h SHA256：`fb89d49dda76d92a0eea50d94685fc9729fc73a746173d91e74f6c0061d5b213`。

source_hashes.json的31份文件逐个重新计算通过；当前工程fast.c和FLASH/OUT与快照一致。
与pass3共同固定的源码/配置字段相比，仅fast.c/h改变。XML的link_errors=0，日志为
Errors0/Warnings1；剩余SysConfig建议与本轮算术无关。主代理已记录原生构建退出0，
本审计没有再次执行构建。

用户已反馈的27485cycle只属于此前OUT `8c8251...`，没有本轮OUT `529716...` 的实测耗时。
下面静态数量也不能代替这份新固件的硬件计时。

## RAM和实际调用

已由当前OUT生成linked_disassembly.txt，实际调用保存在actual_calls.json。
不能把编译器ASM中未保留的fallback实体误认为正在从Flash调用。

正常快控制实际链为PC_run_fast@0x1882E → pf_control_interval@0x184CB →
pf_lambda_root@0x18312 → pf_lambda_plan@0x181F1，最后一步仅未共享计划时执行。
pf_seed@0x18730、pf_plan@0x1818A、pf_rank@0x187B9、配置及输出初始化也位于RAM。
这些实际快路径callee全部在pcmfpc_code运行区，没有Flash库LCR。
FULL/SUMMARY仍走pf_interval@0x192DC → 原pf_root@0x18F5F；observer没有改用CONTROL占位积分。
runtime的select、sample、post与PLL/ESO入口也在RAM。参考root0路径及初始化函数的Flash库
调用保留原设计，不能与root1的正常快链混为一谈。

pcmfpc_code加载FLASHI0xA8000，运行RAM0x18000，长度0x30F3；MAP的LoadStart/
RunStart/LoadSize与device.c:58的memcpy约定一致。

| 区域（C28x word） | 使用/容量 | 剩余 |
|---|---:|---:|
| pcmfpc_code，RAMGS12..15 | 12531/16384 | 3853 |
| .bss，RAMGS3 | 3180/4096 | 916 |
| trace，RAMGS4..5 | 7168/8192 | 1024 |
| wave，RAMGS6..11 | 24000/24576 | 576 |
| RAMM1（含896word栈及40word .data） | 936/1024 | 88 |

MAP未发现容量溢出或这些配置区域重叠。RAMM1剩余88不是实测栈余量，栈后紧邻.data，
仍须做目标栈水位检查。

## 实际指令与栈

pf_lambda_root、pf_lambda_plan、pf_control_interval均没有DIVF32/EINVF32。
root的除以2变为乘0.5，除以3在ASM4528/4530装入binary32 `0x3EAAAAAB`，
4531行执行MPYF32；这不是精确实数1/3，仍可能改变近平局结果。
变量L和C除法集中在pf_plan（ASM3100/3125）。控制更新在ASM5668/5669读取计划offset4
并相乘，确实使用缓存h/C。源448/450/452的三相neutral/blocked分支已分别展开为
独立TBIT，未保留按相循环。FULL的电压根和pole积分仍保留其原变量除法。

编译器DWARF最大帧包含返回地址，与FR SIZE标题区分如下：PC_run_fast88、control36、
lambda_root20、lambda_plan22、seed14、plan12、原pf_root36、FULL interval114word。
正常快控制已知链帧和为ISR1(66)+select(8)+PC_run_fast(88)+control(36)+lambda_root(20)
+lambda_plan(22)=240word；shadow为252、单次bench为258word。
FULL重构链仍为66+44+164+42+114+36=466word。
这些是已知调用链帧和，排除被中断后台、硬件自动帧、嵌套、完整异常/库路径，不是全程序
栈上界或实测水位。静态workspace仍只允许CPU1 ISR1顺序调用。

## 独立时限下界

现有root_prefix_bound.py已运行，另一份独立unit-edge BFS重新构造CFG并复核相同结果。
全部内部控制转移标签已解析；每个串行发射组只计最少1cycle，`||`并行合为一组，
放松条件谓词一致性与循环次数。LCR本身仅记1组，被调用函数体另计或完全省略。

1. CONTROL单子步：ASM5184（$C$L73首指令）到5715（回边分支前）最少191组。
   包含一次LCR lambda_root，却不含它的任何内部指令；允许每次取共享seed捷径。
2. lambda成功根：首实际指令4300到4809的唯一成功AL=0赋值前最少79组。
   包括低端点容差fallback的成功路径。可选lambda_plan只按LCR一组，完全省略其函数体。
3. PC_run_fast成功必须完成一次首区间与八个候选区间，每区间两子步，合计18次根。
   两段代码不重叠，因此至少18*(191+79)=4860cycle，按配置200MHz为24.30us。

这已超过4000cycle/20us整周期和1628cycle/8.14us名义写前窗口；实际还需扣40TBCLK
守护与提交开销。尚未计入区间入口出口、输入/计划/seed、成本排序及末级、PLL/ESO、
ADC/保护/AQ写入、记录及硬件ISR入口出口。

完整证据为control_substep_bound.json、lambda_success_bound.json、independent_cfg_check.json
和combined_lower_bound.json。下界不是实测耗时、均值、WCET或提速比例；旧6408与新4860
对应不同的放松路径，不能相减或相除来宣称真实加速。实际CPU频率仍待独立确认。

硬件放行保持0。本审计确认代码生成和静态不满足时限，浮点选择差异及仿真性能结论由
独立主机验证报告给出，不把严格等价失败隐藏成通过。
