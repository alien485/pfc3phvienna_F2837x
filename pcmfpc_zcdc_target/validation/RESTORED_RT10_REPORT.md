# 当前恢复到第十轮

当前new_mpc/pcmfpc_zcdc_target的fast.c/.h已精确恢复为已验证第十轮，marker10。只恢复这两个控制文件，没有回退分支、重置Git或处理其他用户文件；第十一轮源码备份、原型、数值通过/坐标失败及三次实测记录全部保留。

## 比较依据

第十一轮固定请求2连续三次均19168cycle（Count1/2/3、Status1、ID3/HW2）；对现有第十轮单次18924多244cycle，配置200MHz时多1.220us/1.289%。这说明这三次固定样例重复地较慢，未显示提速；不是两个版本完整性能分布或WCET结论。不能把所有额外时间归因于某条branch/spill，尚未做因果隔离。

## 恢复与验证

恢复后source SHA为c924aa19f11699214ee06d1581f1044e240dd99821e90cf7d48ca1b7546b0557d，h28e0b215684ef7c65a53a1fc1c79391d1abf7609cebea0ab93fd6ce5fe245aad。19个HOST源和5个profile源全部与第十轮执行证据相同，因此复用其完整数值/边界/alias/闭环/profile验证，未重复相同模拟。
22受保护目标文件、main82文件、父Kit用户编辑及new_mpc分支保持；不修改PWM、ADC、CMPSS、Trip Zone、保护或时序参数。

已用既有CCS生成gmake all增量规则重新编译链接，0错误/0警告，2026-10-27 21:19:02。没有Clean/Rebuild、删除或启动调试器。生成OUT与原第十轮全文件逐字节相同，SHA256：
`4b847bd12c26178680d63c14992afd6d3a282d80a1a56ecbd91c0562216db13a`。

代码15267/16384字剩1117；BSS3242/4096剩854；普通/细核frame86/86、PC_run_fast72。原二进制的RAM/回调/栈范围审计据相同OUT绑定复用，不将旧审计说成新的实机验证。有限样例、FPU普遍等价、完整ISR、栈水位和WCET限制仍保留。

## 板卡仍须由用户重新加载

本地源码/OUT恢复不会自动更改板上仍在运行的第十一轮。
用户保持主功率断开、HardwareRelease=0、各环停止、三相OST，加载当前子工程CPU1的FLASH/vienna_pcmfpc_zcdc_F2837x.out并Resume初始化，确认PC_fast_kernel_revision=10。若再计时仍单次请求2并记录Count增1；本次恢复后尚未取得新的板上数据。

第十轮18924cycle约94.620us，仍不满足20us/4000cycle周期和1628cycle名义提交窗口，不能带功率运行或清Trip绕过守护。JS/TXT观察表66项保持。没有提交或推送。
