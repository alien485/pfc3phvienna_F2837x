# 第十轮实际TI产物审计

实际OUT/MAP/编译器ASM/反汇编与ELF元数据核查通过。TI CCS生成的gmake all增量编译链接，CGT25.11.1.LTS，native exit0，0错误/0警告；未Clean/Rebuild或启动调试器。

链接时间：>> Linked Tue Oct 27 16:49:51 2026。
OUT SHA256：`4b847bd12c26178680d63c14992afd6d3a282d80a1a56ecbd91c0562216db13a`。
32份快照哈希全部匹配，20份构建中受保护源/配置与第九轮相同；另有22目标文件/82 main文件完整隔离检查。

## 实际代码与数据位置

快路径/分析API闭包共23函数、54个静态调用点，绑定目标均在RAM。实际PC_run_fast在0x1921e写入marker10至0x7a3。pf_candidate_batch及旧pf_control_interval wrapper均已内联，没有调用Flash fallback。

新增pf_control_context为20个C28x字，实际位于0xf526，输入子节.bss:pf_control_context合并到RAMGS3输出.bss，既有链接脚本未改。
代码15267/16384字，剩1117，比第九轮增加168；RAMGS3为3242/4096字，剩854，比第九轮增加20。其他跟踪/波形区容量保持。

真实ELF的.bss对象统计为旧111/新112：旧101个地址/尺寸保持、10个对象地址变化（包括任务指针/部分测量历史/虚拟定时器），新增context；所有旧对象尺寸保持。旧快内核工作区地址保持，不能据此声称全部既有变量地址不变。完整对象差异见BSS_layout_comparison.json。初始化/调用均使用当前链接符号，观察表继续按当前OUT加载；未改数据银行或外设映射。

## 调用与数值范围

19个被检查的既有根/seed/FULL/排序/计划/profile辅助函数规范化汇编与第九轮相同。batch模型体和PC_run_fast属于本轮改动，不纳入这19项的‘相同’声称；其模型表达式、失败顺序及别名行为由源码和正式HOST回归核查。

普通CONTROL核心没有逐根profile引用；coarse/fine成功契约仍11/47次读钟和18根，HOST全语料回放通过。Timer0 callback实际仅读0xc00并返回，初始化绑定RAM地址0x1ac9a和模数2000001，没有新增外设写入。

batch模式将每次成功PC_run_fast的模型函数入口由9次（延迟1+候选8）降为2次（延迟1+批量1），候选仍按顺序完成全部16子步，加延迟2子步共18根。这是代码组织计数，不能直接换成节省的CPU cycles。

## 栈与限制

含返回地址的frame：PC_run_fast72（前86）；普通/细模型核86/86（前62/64）；generic root20、single-plan24保持。新普通组合帧增加10字，不能只按caller帧减少宣称栈变小。
已核链：普通single-plan276、shadow288、bench普通/细300、FULL重构466、编译参考重构406；栈分配896字。这里列特定实际函数链之和，不是整个程序最大栈或水位证明；后台被打断帧、硬件中断帧、嵌套和其他分支仍未覆盖。

当前50kHz/20us、配置200MHz、4000cycle周期和1628cycle名义提交窗口保持；guard及提交开销未扣除。第八轮19212和第九轮19242只是历史固定样例。第十轮尚无板上耗时，不声称提速、WCET或实时合格；HardwareRelease保持0。
