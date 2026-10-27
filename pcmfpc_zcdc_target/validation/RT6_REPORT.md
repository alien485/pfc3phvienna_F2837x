# 第六轮：两相/三相ON状态专用求根

2026-10-26，工作目录为pfc3phvienna_new_mpc中的pcmfpc_zcdc_target。
本轮针对CONTROL预测中的hw=3/5/6/7减少求根准备与搜索；其余0/1/2/4保留第五轮generic根。
没有删减八个候选、双子步、双排序、0.02A范数预算、自适应交集或严格末级。
main原工作目录及当前父目录用户未提交的Kit.json改动均保留。

## 实现

新增pf_lambda_dense_root()与内联pf_dense_sum()。三相ON没有OFF事件，直接在整个括号内解N=3。
两相ON仅有一个OFF相，括号内最多一个严格内部事件，按原左到右闭区间规则检查最多两段。

```text
c=h/L, cu=c*Uup, cl=c*Ulow, lambda=c*mu in [-cl,cu]
ON:  i=q+lambda
OFF: i=max(q+lambda-cu,0)+min(q+lambda+cl,0)
H(lambda)=B+N*lambda=0
3ON: N=3
2ON: N=2或3；事件为cu-q（正支进入）或-cl-q（负支退出）
```

B依旧按phase0→1→2相加，端点回退、有限性和原32*EPS残差检查保持。
候选第一子步使用原shared seed的cu/cl/tolerance/base，NULL路径只准备必要标量；
不构造无关相断点，也不排序它们。复用原scratch，不新增BSS，不移动既有DP布局。
FULL/SUMMARY、ESO重构、参考PC_run及原pf_root均保持不变。
版本观察项PC_fast_kernel_revision由5更新为6，观察表仍为65项。

修改的算法文件为vienna_pcmfpc_fast.c/.h；新增tests/validate_round6.py和dense_root_probe.c。
19个保护文件（含runtime、HAL、ADC/PWM相关头、时标、链接和清理保护）前后SHA不变。
没有连接、烧录、写目标变量、清Trip、清理文件或提交/推送。

## 验证

| 检查 | 结果 |
|---|---|
| 对冻结第五轮实际实现的完整PC_Output | 31750组，原始字节0差 |
| FULL/SUMMARY/CONTROL完整区间 | 140025次，原始字节0差 |
| 状态、可用标志和版本6入口回写 | 0错 |
| 新dense根对generic根 | 191620组，NULL/shared的状态、电流字节、有限性和残差均通过 |
| 无根及极端错误 | 两边75949组完全同判 |
| 独立double模型/原求根模型 | 原48000区间、80000根标准保持 |
| 安全/runtime/非零ESO历史 | 原85/127/16项通过 |
| 实际fast闭环 | 10个轨迹CSV及10个指标JSON与第五轮逐字节相同 |

另有独立Fraction精确代数检查24128例全部一致，其中15962例无根同判。
专用根白箱最大KCL残差1.43051147e-6A，没有新增数值epsilon。
相对更早float-piecewise的1887个选态差及严格等价FAIL仍保留；本轮没有消除或掩盖这些既有差异。
HOST等价只覆盖已执行样本与编译环境，不能推定全部TI浮点/任意输入均逐位一致或实机合格。

最终HOST证据为host/pass2；pass1旧报告标签误用ROUND4已保留，数值未改。
pass2报告及runner中遗留的“storage rewrite”仅作叙述修正；原执行runner快照/SHA保留，
修正前后SHA见report_correction.json，没有重跑或改写数值结果。
closed_loop_round5_comparison单独保存最终10对逐字节比较。旧driver对44f0ec5的预期FAIL也保留。

最终交付检查识别到用户原有父目录Kit.json的SFRA路径本地化改动。verify_delivery仅允许
该字段替换为当前工作目录的SFRAData/SFRAData.csv，逐字节核对其余内容（只忽略换行），
单独记录历史/当前SHA，不覆盖用户文件，也不放宽任何控制源或参数的历史比较。

## 实际TI构建

真实CCS增量构建：2026-10-26 17:09:40链接，nativeExit0，Errors0/Warnings0，link_errors0。
没有Clean-only或DEL清理命令；main与保护文件指纹单独核查。

- fast.c SHA256：574549145827de39fcb70cc9c545154de0da66b6f009cd45f188f39b16e36620。
- fast.h SHA256：412bd5cddb5d522ccb54e5968571768b719b85b74fef446ae0a1c1c3d9c7e65e。
- OUT SHA256：e39871137761f725db15b5becd716c6f8d95408a418daf72a864b514babf3ed6。

实际OUT中fast全部可达callee在RAM；dense无LCR，sum/projection确实内联。
hw7实际按q0→加q1→加q2，两个ON分支同样保持相序；除3使用同一float常量乘。
generic plan/root、FULL原root/interval的规范化ASM与第五轮逐指令相同。
PCrun/CONTROL/dense帧为88/36/30word；RAM代码13097/16384word，BSS3180/4096word。
已知FAST控制链最大仍240word，dense分支228word；这不是全程序栈水位证明。
FAST FULL重构链466word，既有参考重构分支506word，分配896word；仍需栈水位验证。
完整实际OUT/RAM/指令和栈边界见build_pass6/AUDIT。

混合路径弱下界为18*196+8*75+8*79+2*75=4910cycle（配置200MHz为24.55us）；
初始状态也有两相以上ON时4918cycle。未计plan/seed、排名、PLL/ESO/ISR及停顿等。
4910已大于当前50kHz的4000cycle/20us预算和1628cycle名义写前窗口，当前配置仍不合格。
静态body指令组或下界不是平均时间、WCET或实际提速率。
新分派本身有额外开销，shared情况下dense帧也比generic更大，不能只凭省去plan便宣称更快。

## 板上下一步

初次构建时用户附图为第四轮23425cycle；后续用户提供两张新图，文字确认版本6。
本次BenchStatus1、CoreStatus0、BenchCycles/Max21217、Count1、ID3/HW2、Fault32，
实际/待执行仍0，BodyMax22706。按配置200MHz，内核106.085us、主体最大113.53us。
较第四轮少2208cycle/9.4258%，比较须同fixture/时钟/无暂停，且第五轮没有单独板上计时。
21217仍是4000cycle周期的5.30425倍；未通过1628cycle到ZERO名义窗口，更不代表完整ISR通过。
版本由用户文字确认，截图未展示OUT指纹/HardwareRelease/OST或暂停史。原图及边界单独记录于
bench_20261026_round6/REPORT。CoreStatus0与Fault32可同时出现，表示数值完成与超时守护并存。

硬件放行继续为0，写前和整ISR资格仍未通过。没有修改采样、PWM、CMPSS、TZ或保护值来争取时间。
