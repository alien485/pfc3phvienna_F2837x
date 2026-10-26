# F28379D PCMFPC-ZCDC 模式7移植目标

唯一 CCS 项目名：`vienna_pcmfpc_zcdc_F2837x`。工作分支：`new_mpc`。
本目录是独立目标；父目录原 FCS 工程保留对照，父 `.cproject` 仅增加本目录排除项。
本次移植没有写原MATLAB/SLX。参考此前另有诊断赋值兼容更新，已独立核对1353组
六输出全同，当前与历史指纹分开记录于`validation/REFERENCE_COMPATIBILITY.md`。
父FCS基线为`1c93fcd`，用户首版移植提交为`44f0ec5`；完整历史指纹在根项目
`output/ti_pcmfpc_zcdc_port/baseline_manifest.json`。

**默认 `VIENNA_pcmHardwareRelease=0`，任何模式都不能由 clearTrip 启机。**
默认模式0为原 FCS 内核；模式1/2分别为模式7末级OFF/ON。共同使用新PLL、
同一SI外环和5.5A峰值参考，故模式0并非父目录固件的逐位等价运行。
32轮参考求根和快速分段根均保留，默认32轮。当前实时优化见`RT_OPTIMIZATION.md`；
第四轮CONTROL已采用lambda活动集根，FULL/ESO保留原根；存在浮点选态差异，
不能作为原验证版的逐位替代。当前保守下界4860cycle/24.30us仍超过20us周期，
不能放行新闭环。数学、差异及构建证据见`validation/RT4_REPORT.md`。

## 文件与实际调用链

- `vienna_pcmfpc_zcdc.h/.c`：SI纯C核心，独立双排序、0.02A范数预算、
  自适应交集、共享触发与严格相角末级。MATLAB ID和HAL位序显式转换。
- `vienna_pcmfpc_fast.h/.c`：显式root_method=1路径，分段求根、公共角度节点、
  逐项初始化必要输出；CONTROL窄内核和分离静态工作区减少大帧寻址。
  候选子步与pole积分不可用标志明确，ESO的FULL路径保留；仅由CPU1 ISR1顺序调用。
- `vienna_grid_sync.h/.c`：有界采样时刻角的归一化SRF PLL；并非仿真PLL原样复制。
- `vienna_pcmfpc_observer.h/.c`：显式上一完整区间DeltaU ESO；
  **当前输入来源为模型重构，不是实测极点积分**。
- `vienna_pcmfpc_runtime.h/.c`：TI采样、启停、门极历史、公共外环、诊断和采集适配。
- `vienna.h`：`ISR1 -> VIENNA_pfcControlCode -> ADC -> sample -> clearTrip守护 ->
  make_refs -> 原FCS或PCMFPC_select -> 原deadline检查 -> AQ影子提交 ->
  submitted -> 公共外环 -> post`。
- `main.syscfg`、`vienna_user_settings.h`：170V/50ohm参数规划；ADC/PWM时序未改。
- `build_incremental.ps1`：独立工作区导入及增量构建；不clean、不烧录、不连接硬件。
- `setupdebugenv_pcmfpc_zcdc.js`、`CCS_Expressions_PCMFPC_ZCDC.txt`：仅添加观察项。
- `tests/`：核心边界/精度、MATLAB oracle、PLL/ESO、独立小步物理闭环验证。

## 编译与导入

CCS12选择本目录 `.project`，项目名必须为 `vienna_pcmfpc_zcdc_F2837x`。
实际 `.out` 位于本目录 `FLASH/vienna_pcmfpc_zcdc_F2837x.out`，不要混淆父目录旧固件。
目标配置选择 `targetConfigs/TMS320F28379D.ccxml`；旧配置副本以 `.reference` 结尾。
当前时钟按20MHz controlCARD；芯片已由用户确认F28379D，板上晶振与时钟仍需核对。

```powershell
& '.\build_incremental.ps1'            # 首次导入+增量构建
& '.\build_incremental.ps1' -SkipImport # 已导入后增量构建
```

脚本默认本机CCS、CGT25.11.1、SDK26.01及SysConfig1.21路径，精确命令和日志在
项目根 `output/ti_pcmfpc_zcdc_port/`。不使用Rebuild/Clean，以遵守禁止批量删除规则。
新代码由 `pcmfpc_code` 段从FLASHI复制至RAMGS12..15；事件和波形缓冲独立分区。
`PC_Output`、ESO重构输出为静态对象，不能改成ISR栈大对象。

## 配置与验证边界

用户已确认 F28379D、3mH/相、440uF/半母线、50ohm、没有额外极点传感器。
目标100V线RMS、50Hz、170V总母线，实际负载578W。
拟议7A瞬时保护、5.5A参考峰限、204V滤波软件过压见 `PARAMETERS.md`。
这组数值不是已测保护整定或器件安全性证明，放行锁默认保持0。

已独立比较MATLAB、C double和float32。float32平坦阻断/合成边界仍有选择差异，
不能声称全部门极等价；PLL必须保持角度有界。分段根是显式待验优化。
参考20us控制时标不会因算法参数Ts改变而自动改变PWM；本次保持50kHz和原deadline。

证据入口：`tests/core_VALIDATION.md`、`tests/observer_validation.md`、
根项目 `output/ti_pcmfpc_zcdc_port/c_matlab_comparison.json`、
`hardware_sim/REPORT.md`、CCS日志及资源/时限审计。
独立硬件参数仿真不是完整开关器件/磁性/热模型，不等于实机闭环成功。
50ohm名义仿真中ON相对OFF的跟踪与低次THD略恶化，此结果保留，不承诺末级必然改善。

分级台架流程和采集解释见 `PORT_GUIDE.md`，采样/执行关系见 `TIMING.md`。
本轮完成状态、不利结果及下一步见 `DELIVERY.md`；概要证据在 `validation/`。
用户提交44f0ec5之后的三轮实现、实际fast闭环回归及最新构建见`RT_OPTIMIZATION.md`。
