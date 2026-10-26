# 第三轮静态工作区宿主验证与独立代码复核

2026-10-25。当前fast SHA256：`b8665494d2fd304f3b644c451dbf0f479b0380913f42350ab3a798260ada00a8`。
root已实际完成本轮测试；本报告由verify_optimized_control独立只读核对当前源码、已生成证据和指纹，不把读报告称为重新执行测试。开放式回放与闭环报告中的已编译fast源码指纹均与当前一致。

| 证据 | 实际结果 |
|---|---|
| 31750同输入控制回放 | 选择、排序、集合、连续量全部0差 |
| 44f0ec5旧fast逐行控制结果 | 31750行全部相同；真实PC-OFF5→最终2事件保留 |
| FULL/SUMMARY/CONTROL直接区间 | 各46675次，命名字段和积分有效性契约通过 |
| 独立失效安全 | 85项PASS |
| 真实runtime数学调用链+硬件stub | 127项PASS |
| PLL/显式DeltaU ESO/解析积分 | 通过；16个完整非零执行历史对照保持 |
| 实际旧fast/新fast物理闭环 | 10对20runs，全部指标一致；130000行新CSV与旧CSV逐字节一致 |
| 默认root32模型 | 13000行原字段/原指标一致，两列既有额外诊断单列披露 |

## 静态工作区、生命周期和别名审查

本轮新增`PF_RootWork`、`PF_ControlWork`、`PF_SelectWork`是互不重叠的独立静态对象。root的投影工作数组/断点数组与CONTROL的next/free/current数组分离，root调用不会覆盖control的step/r、neutral或输入q。select的dq/edq/两套排序也不与root/control重叠。

CONTROL每次先复制dq0、初始化np/dc/h/c、blocked和无效积分占位；每子步重置neutral/blocked，并在调用root前绑定old/free指针。指针只指向静态control数组或静态candidate seed，不保存局部对象地址；结束后只拷贝数值给输出，不导出这些指针。下一次调用重新绑定，故不存在跨调用悬空指针。

root每次初始化lo/hi/端点/容差及count/found，断点写入后才读取；mu/width/iterations/residual的每条成功路径有定义，失败时上层立即返回，未消费半成品。FULL/SUMMARY使用独立局部区间状态，只顺序借用root scratch；observer仍明确请求FULL，未用CONTROL的零积分占位。

真实runtime使用独立的PC_Input和PC_Output，不与这些file-static工作区重叠。未证明任意外部输入/输出地址重叠的调用安全；该用法不属于本项目实际接口契约。

快API此前因静态角度计划已经不可重入，当前延续CPU1 ISR1唯一顺序所有权。查找真实调用：ISR1内sample→VO_reconstruct、select和post/benchmark顺序执行；ISR2仪表任务、CLA、后台没有新增fast调用。不得从第二中断或CLA并发调用。这里没有用锁或关中断伪装成通用可重入库。

## 浮点和算法顺序

根的端点仍从0按phase0→1→2累加，qscale、稳定断点序、插值、公共中点方程、neutral相序、dq更新和严格排序/末级规则保持。CONTROL窄kernel仅剥离pole积分/完整轨迹写入，没有减少子步或候选。宿主普通域全部精确0差，强平局/ULP集仍保留已有piecewise对bisection2198选择差异，并非本轮新增。

局部浮点量移到静态存储可能影响目标编译器寄存器分配和relaxed重排；host precise/libm回放不构成TI TMU位级证明。静态区放置/完整ISR时限、全程序栈和水位仍须按真实目标证据验证，不能据本报告放行主功率。

在已文档化单ISR、独立输入输出条件下，未发现新增确定的生命周期、别名或根数学顺序错误。未修改DSP源码或tests/plant，也未进行频率调整仿真。命令、计数及14项当前源码指纹见HOST_VALIDATION.json；完整回放/闭环证据在同级fast_replay与closed_loop。
