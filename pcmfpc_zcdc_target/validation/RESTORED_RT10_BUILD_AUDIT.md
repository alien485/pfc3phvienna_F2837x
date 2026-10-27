# 恢复第10版后的实际TI构建审计

**PASS：新构建OUT与已审计、已执行的build_pass10逐字节完全一致。** SHA256为`4b847bd12c26178680d63c14992afd6d3a282d80a1a56ecbd91c0562216db13a`。因此复用原10版二进制审计与已执行测试证据，无需重复算法仿真。本次审计未编译、清理、操作硬件或修改生产/测试/旧证据。

实际增量构建native exit0、0error、0warning，链接于2026-10-27 21:19:02。fast.c/h分别恢复为`924aa19f11699214ee06d1581f1044e240dd99821e90cf7d48ca1b7546b0557d`和`28e0b215684ef7c65a53a1fc1c79391d1abf7609cebea0ab93fd6ce5fe245aad`，与原10版字节相同。

- 32份构建固定快照的SHA全部匹配；22份受保护工程文件、main的82份文件和外层Kit.json均保持原哈希。
- 6份完整ASM去除注释后内容相同，原始文本中的创建时间和编译临时路径注释有差异；75个函数摘要、MAP内存/关键符号相同；整份实际反汇编仅输入文件名头不同。
- 实际marker恢复为10；原10版的23函数/54调用RAM闭包和Timer0只读计时回调绑定随完全相同OUT恢复，11/47计时读取与18根计数契约不变。
- RAM代码15267/16384words，剩1117；BSS3242words、RAMGS3剩854。整个OUT相同也保证全部BSS地址/尺寸相同；context继续在RAMGS3的word0xf526，占20words。
- plain/fine帧86/86，PC_run_fast72，generic根20、single-plan24、dense根30words（均含返回头）；栈分配896words。已知链结论沿用原10版，不是运行栈水位或完整嵌套证明。

原10审计由SHA `51ef126e5733a80a6c06aa9a914e6ef6e3eb08c0df5f939edab5004c5aeaeb3c`绑定，路径`build_pass10/AUDIT.json`；本次补充`BSS_LAYOUT_IDENTITY.json`明确区分整OUT同一性证明与新的OFD遍历。未将复用证据描述成新的实机测试。

恢复原因是用户反馈第11版3次均19168cycles，而第10版此前单样本18924cycles。本次未重新测板；这些样本不能构成WCET或实机功率放行。保护与外设参数保持不变，第11版实验和旧证据继续保留。
