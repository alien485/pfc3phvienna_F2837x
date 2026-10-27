# 第六轮密态根独立只读审阅

第一版源码审阅通过，未发现阻止宿主测试的实质数学或状态生命周期问题。

两相ON时，唯一OFF相在lambda∈[-cl,cu]内至多有一个严格内部事件，因此最多两段；固定集合的N只能是2或3。三相ON无相关事件，直接使用N3根。每段B从0按phase0、1、2相序求和，除2/3、闭区间接受、左右端点fallback和最终投影均保持原表达式。

已特别检查q=0、q=±(cu+cl)、微小q使事件舍入端点、scaled cu/cl=0、span或scale非有限、shared计划及NULL路径。初始OFF active没有简化成仅按符号判定；没有新增cu/cl正值限制或epsilon。NULL仅填必要scalar但不读取旧count/base；后续generic NULL完整重建，不留下跨调用污染。

原pf_root、pf_interval、pf_lambda_root、pf_lambda_plan、pf_seed和pf_lambda_projection函数体与本轮修改前逐字相同。FULL/SUMMARY与observer路径未被本次专用根替换。

独立exact Fraction程序dense_exact_rational.py比较24128个根（含15962个无根输入），完整投影分段模型与两段/无事件专用模型全部相同。覆盖平衡和不平衡q、等/不等/零scaled caps及端点邻域。这只证明实数代数，不代表C浮点、TI relaxed/TMU、时限或实机保护通过。

本报告针对SOURCE_REVIEW.json中的源码哈希；编译试验如继续调整实现需复核。HOST逐字节回归、目标加法分组/栈/数据页及板上同样例计时仍是后续验证项。未修改工程源文件、外设或硬件状态，未删除文件。
