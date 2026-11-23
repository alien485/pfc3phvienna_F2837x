# Runtime2 CCS更新与无主功率验证

历史版本：最新已更新为Runtime3，先阅读`CCS_RUNTIME3_GUIDE.md`；本文件的69项、非法请求6及d321c1aa产物只适用于Runtime2。

2026-10-28。这份代码已由本机TI C2000编译器构建成功，可用于CPU1加载和无主功率验证。
**100 V线RMS、50 ohm、170 V的带功率闭环仍未通过，不能直接按该工况启机。**

## 本次真正进入MCU的改动

`vienna_pcmfpc_runtime.c::VIENNA_PCMFPC_terminal_guard`在末级角度选择后检查：

```text
dotSelected = idRef*id2[selected] + iqRef*iq2[selected]
dotPCoff    = idRef*id2[pcOff]    + iqRef*iq2[pcOff]
dotSelected < dotPCoff 时，退回同状态的 pcOff 候选
```

原交集最多两项，包含共同pcOff；因此不需要重算预测、排序或atan2。
投影相等时保留原角度优选，无新权重、容差或保护门限。
只同步选中ID/硬件状态与zcdc_diag[7..9]，保留原gi/gu/gz、0.02 A预算、共同触发和预测结果。
这是明确的末级工程修正；不保证实物有功功率一定增加，也不阻止电流预算本身选择OFF。

`pc_run_selected`对PCMFPC的参考32次二分与快速求根两条路径都应用该修正，覆盖正常控制、影子计算和数值基准。
原`PC_run`、`PC_run_fast`及MATLAB参考未修改；`PC_fast_kernel_revision`仍为10。
旧加权FCS模式0不通过这个PCMFPC末级，本次不改变其算法。

母线/Fhat动态、7 A与50 V候选筛选仍是tests/output中的离线原型，没有复制进固件。
不移植已知未通过的完整原型，避免增加多次FULL预测与未测计算负担。

新增观察项：

| 变量 | 新版含义 |
|---|---|
| VIENNA_pcmRuntimeRevision | 2，区分这次真实运行适配层更新 |
| VIENNA_pcmTerminalGuard.enabled | 1，观察值；写0不会关闭编译进的修正 |
| VIENNA_pcmTerminalGuard.applied | 最近一次计算是否因投影下降而退回pcOff |
| VIENNA_pcmTerminalGuard.block_count | 累计退回次数，含控制/影子/基准；不能直接当作实机开关次数 |

共同触发active=1且applied=1时，末级已触发但最终保留pcOff，zcdc_diag[8]=0。
每个采样开始清除applied；数值基准完成后的值可随下次采样清零，累计count便于检查。

## 已完成的验证与产物

- 421项HOST运行适配层检查通过，保留原358项，新增63项投影/异常/两种真实dispatcher检查。
- 本机TI CGT25.11.1.LTS增量编译/链接成功，本次0错误、0警告；没有运行Clean/Rebuild。
- 本次未重新生成SysConfig。旧Runtime1构建的Clock Tree建议warning仍保留在历史日志，不混算为本次warning。
- RAM算法区15691/16384个C28字，余693；BSS3306/4096字；栈分配896字，未测实机栈峰值。
- 2 kHz时标、ADC/PWM/CMPSS/TZ与全部保护参数保持，默认HardwareRelease=0，各环不自动启动。
- main分支和父级Kit.json用户改动保留，未提交或推送Git。

唯一工程目录：

```text
D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_new_mpc/pcmfpc_zcdc_target
```

CCS项目名：`vienna_pcmfpc_zcdc_F2837x`。新版产物：

```text
FLASH/vienna_pcmfpc_zcdc_F2837x.out
SHA256 d321c1aac8af29f38fe28693dc621248e86d2c61159b27c1d561a96ab3330723
```

原`32406e84...`是Runtime1旧产物，不能用它验证本次修改。
完整本机构建审计见`validation/control_rate_2khz_build_audit.json`；旧审计已逐文件备份到output/ccs_projection_guard/before。

## 在CCS中具体怎么做

1. 使用上述子工程，保持new_mpc工作目录；已有工程直接Refresh后Build Project，选择FLASH配置，不运行Clean/Rebuild。
2. 主功率保持断开。进入CPU1调试，在`Run > Load > Load Program`选择上述子工程FLASH里的新版OUT；只加载符号不会更新DSP代码。
3. 停在main后点击Resume，让初始化、RAM代码复制和约12.5 s零偏校准完成；确认VIENNA_pcmTick持续增长。
4. 通过Scripting Console运行本目录`setupdebugenv_pcmfpc_zcdc.js`，或导入`CCS_Expressions_PCMFPC_ZCDC.txt`。两份观察表均为69项。
5. 确认下表识别值，且HardwareRelease=0、三环关闭、三相OST保持。观察表只读取，不会自动启动或清Trip。

| 识别项 | 预期值 |
|---|---:|
| VIENNA_pcmRuntimeRevision | 2 |
| VIENNA_pcmTerminalGuard.enabled | 1 |
| PC_fast_kernel_revision | 10 |
| VIENNA_pcmTiming.revision | 1 |
| VIENNA_pcmTiming.control_hz | 2000 |
| VIENNA_pcmTiming.sample_us | 约500 |
| VIENNA_pcmTiming.first_duration_us | 约250 |

6. 如需测新版耗时，保持上述停止条件，分别单次写`VIENNA_pcmBenchRequest=2`、等待归零，再单次写5。正常BenchStatus=1，BenchCount各增加1。请求范围仍为1..5，6仍非法。
7. 记录两次BenchCycles及当前BodyCyclesMax、Fault、fcsDeadlineMissCount即可。原Runtime1的27718/29912 cycles不能直接当作本次新布局的测时结果。

请求2是快速核加末级修正；5是隔离PLL+两段FULL重构+已初始化ESO+快速核+末级修正。
PC_fast_profile只覆盖原快速核内部，不包含新增后处理；BenchCycles/AlgorithmCycles包含后处理。
基准在post执行，仍不等于完整写前路径或整ISR/WCET。
无主功率数值输入可能不会触发投影回退，count保持0不表示新版未加载，应优先看RuntimeRevision。

本轮没有通过工具连接、下载、烧录、清Trip或写板卡。加载后的实机验证由用户执行。

## 为什么仍不允许直接带载

已定位的全OFF现象不是ID编码错误：例如旧记录160.750 ms，ID3与ID1的误差范数差仅约0.0105 A，
都在原0.02 A预算内，但OFF角度更好，原末级因此选择OFF。投影修正能阻止这类退化。
其他时刻OFF已是预算中的唯一项，单加末级修正无法改变它。

追加的两组“动态模型+投影约束+7 A/50 V节点筛选”HOST试验仍失败：

- 2 kHz在204.752 ms因ADC半母线差超过50 V锁存停机，真实电流峰约6.8199 A。
- 2.5 kHz在177.9975 ms触发原7 A事件，真实电流约±7.004 A；前次受检节点尚低于7 A，说明节点检查/未标定误差余量仍不足。

这些是较大离线原型的结果，不能当作本次Runtime2已移植这些动态/筛选的证据。
原vienna.h还保留GUI滤波半母线差>50 V与每半415 V的软件保护；旧HOST模型未完整模拟它们，
此前133.99/1.75 V是离线模型失败状态，不代表实机会允许走到该点。
后续需要解决候选供能、中点可行性与长区间误差，再通过实机写前时限和分阶段闭环测试。
