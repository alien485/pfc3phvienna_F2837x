# 2kHz计时试验：无主功率分段计时

历史2 kHz记录。当前Runtime4/Kernel12/4 kHz步骤见`CCS_RUNTIME4_GUIDE.md`；细分root计时副本现放FLASH，请求4不能代表普通RAM控制耗时。

仅在主功率断开、HardwareRelease/clearTrip/三个closeLoop为0、三相OST、实际/待执行状态0时由用户操作。
本轮为2kHz直接FCS计时试验，内核仍为第十轮。重新加载当前子工程OUT并完成初始化后，
确认 `PC_fast_kernel_revision=10` 及 `VIENNA_pcmTiming` 的revision1/2000Hz/500us/250us。
旧第十轮18924cycle、第十一轮19168cycle是50kHz实验；本轮新预测时长需重新测量。
观察表67项，`PC_fast_profile`接口和11/47读钟契约保持，未修改Timer0配置。硬件放行保持0。
本轮实际TI构建完成，OUT SHA `32406e84...`，完整指纹及校准12.5秒等说明见 `CONTROL_RATE_2KHZ.md`。
C编译/链接0错误、0警告；SysConfig有1类Clock Tree建议warning（本次日志出现2次）。2kHz物理仿真6案均触发7A，资格仍为 `NOT_QUALIFIED`。
2kHz尚无板上新cycle，完整证据见 `validation/CONTROL_RATE_2KHZ_REPORT.md`。
先按BENCH_TIMING.md加载本工程CPU1的OUT并完成初始化。不要Clean/Rebuild。

## 请求顺序

1. 写一次VIENNA_pcmBenchRequest=2，保存BenchStatus/Cycles/Count/SelectedId/HWState/Fault。
   这是本轮500us/250us预测时标、未插入分析读钟的快速内核计时；仍仅计算交集角度。
   不能把新结果直接解释为旧18924cycle基础上的代码提速或退化。
2. 写一次VIENNA_pcmBenchRequest=3，完成后展开PC_fast_profile并保存所有字段。
   这是分段计时，不能把其BenchCycles当作未插入计时的优化结果。
3. 若需要拆分求根成本，再写一次VIENNA_pcmBenchRequest=4，保存新的结构体结果。
   每个非零请求会先使旧profile失效，因此应在下一次请求前保存本次数据。

每次等待Request回0、BenchCount增加1。条件拒绝时保持OFF，不清Trip或提高放行。
请求3/4仅分析一次PC_run_fast，进入函数时即消费请求，后续普通调用不读分析时钟。
第八轮的普通/coarse预测与fine预测由同一个模型宏生成，分别编译；普通预测不含逐根
计时判断。两者已经过同输入输出对照，但寄存器分配/栈操作可以不同。因此fine与coarse
的时间差也包含不同编译路径的影响，不能全部当作读钟开销或直接校正普通路径的根时间。
请求1保留参考32轮路径及全角度诊断；请求2/3/4均为fast及局部角度诊断。
请求5为独立的PLL+两段FULL重构+ESO+快速MPC数值流水线计时，不生成分段profile；6及以上非法。
所有请求共用放行/闭环/门极/三相OST守护，均不提交计算出的门极。
如先测了5再测3/4，先保存5的BenchCycles；profile只解释请求3/4。

## 字段解释

首先确认valid=1、completed=1、core_status=0、clock_fault=0；请求3的mode应1，请求4应2。
失败或时钟无效时，不将部分字段当成完整耗时分解。BenchStatus=1不代替profile.valid。

| 字段 | 范围 |
|---|---|
| setup_cycles | 输出初始化、输入检查、输入坐标变换与第一段角度计划 |
| delay_cycles | 已施加状态的双子步预测及第一预测结果保存 |
| plan_seed_cycles | 候选角度计划、参考角度、共享第一子步种子 |
| candidates_cycles | 八候选双子步预测、电流/中点成本及开关计数 |
| select_cycles | 两次排序、电流范数预算、交集与PC-OFF选择 |
| terminal_prepare_cycles | 过零激活条件、参考电流/电压及可行电压范围 |
| angles_cycles | 被要求的角度评价及末级选态 |
| output_cycles | 结果排序、诊断与状态输出，至最后一次读钟 |
| total_cycles | 上述八段之和，含分析代码对执行的扰动 |
| root_cycles | 仅mode2：嵌套求根区间累计，已包含在delay/candidates中 |
| root_calls | mode2正常完成为18；mode1不分析根，为0 |
| angle_calls | 实际角度代价函数评价次数，激活时通常1或2；不是atan2指令计数 |
| read_count | 成功mode1为11，mode2正常18根时为47 |
| clock_pair_overhead | 相邻两次读钟的实测差；没有自动从任何耗时中扣除 |

八段在成功、有效、总时间短于计数器周期时可相加得到total。
root_cycles不能再加到total上。分析器的校准发生在total开始前，函数末尾也有额外收尾，
因此BenchCycles不必等于total_cycles；它们都不是没有分析扰动的真实WCET。
不将“相邻读钟差”直接视为所有计时点开销的精确校正值。

读取既有Timer0，未改PRD、分频或仿真模式。原HAL设置PRD=2,000,000，profile的模数为
PRD+1=2,000,001；每个区间及全次分析必须短于一个周期，暂停和多次回绕会使结果不可靠。
原BenchCycles计时实现保持不变，其回绕公式与profile可能有1cycle差异。
若实际CPU为200MHz，则us=cycles/200；时钟尚未独立核验时优先保留原始计数。

BenchCyclesMax可能混合请求1..5，不能用于不同模式间公平比较。
Fault32可与数值成功和有效profile同时出现：本轮500us主体守护在benchmark后继续执行。
不清该故障来争取通过，不开启主功率。算法写前及完整ISR资格仍未通过。

## 反馈模板

```text
PC_fast_kernel_revision =
VIENNA_pcmTiming（展开）=
本次请求号 =
BenchStatus / BenchCycles / BenchCount =
BenchSelectedId / BenchHWState / Fault =
PC_fast_profile（展开全部字段）=
本次OUT SHA / 实际CPU时钟依据 / 是否暂停CPU =
```

分段结果将决定下一轮优先优化候选预测、根、变换或选态，不能根据宿主运行时间推算DSP占比。
