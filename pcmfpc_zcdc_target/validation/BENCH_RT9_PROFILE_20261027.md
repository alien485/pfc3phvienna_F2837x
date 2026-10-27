# 第九轮用户分段计时

用户文字确认请求3(mode1,valid1)：total19600，delay1539，candidates13179，select2136，root0。请求4(mode2,valid1)：total21070，delay1705，candidates14483，select2136，root8840。

粗计时候选阶段占67.24%；细计时根窗口8840、预测中的其余工作7348、其余阶段余数4882，分别约41.96%、34.87%、23.17%。后两项为差值推导，不是新增观测。根窗口已包含在delay/candidates内，禁止重复相加。
细比粗多1470，恰为delay多166+candidate多1304；两个核分别编译，差值包含插桩及寄存器分配影响，不是精确可扣除的读钟开销。用户未单独提供completed/core_status/clock_fault/18root/47read以及全部8桶，未据此补造字段。
数据仅属于第九轮，不是第十轮预测值。第十轮公共准备仍位于原delay/candidates桶，最终提速以相同请求2的整体计时为准。板卡主频/暂停/OUT指纹未独立确认；不代表WCET或功率资格。
