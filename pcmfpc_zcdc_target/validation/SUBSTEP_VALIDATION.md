# MATLAB/C 每子步独立对照

日期：2026-10-25。已真实运行 MATLAB R2023b 的 `prepare_substep_trace.m`，读取既有1017行输入，没有重新生成或改写原oracle输入/输出。使用已加入只读trace的MATLAB测试副本 `ti_mode7_reference.m`，原 `pcmfpc_zcdc/vienna_pcmfpc_zcdc_complete.m` 保持不变。

每行覆盖固定首段2个子步及8候选各2个子步，共18个子步；每子步输出19个字段。因此每个C变体对照18,306个子步、347,814个数值字段。字段按oldABC3、freeABC3、nextABC3、poleABC3、mu、np_before、theta_end、up_before、low_before、两个保留零值排列。

| C变体 | nextABC最大差/A | n最大差/V | 极点αβ最大差/V | 全零阻断外mu最大差/V | 非零错误码 |
|---|---:|---:|---:|---:|---:|
|double_bisection32|5.1514348e-14|6.0396133e-14|1.0160761e-12|5.6843419e-14|0|
|double_piecewise|9.3350931e-11|3.3857361e-12|2.5847967e-08|2.9696018e-08|0|
|float_bisection32|0.00024700402|1.6190442e-05|0.085331835|0.049362097|0|
|float_piecewise|0.00024658919|1.6190442e-05|0.085465819|0.049356425|0|
|float_bisection32_wrapped_angle_input|5.6364866e-06|1.4374125e-05|0.00092316884|0.00053755278|0|
|float_piecewise_wrapped_angle_input|5.0579691e-06|1.4374125e-05|0.00089233501|0.00048414702|0|

## 结果解释

- double+32轮二分逐子步电流最大差5.1514e-14 A，中点差6.0396e-14 V；极点αβ最大差1.0161e-12 V。这补齐了仅核对候选末态的验收缺口。
- float32有界角度输入、32轮二分的逐子步电流最大差5.6365e-6 A，中点差1.4374e-5 V；极点αβ最大差0.0009232 V。
- 有界角度变体在double输入边界先取模2π再转float32，对应实际PLL每次保存有界相角。相角对照采用包裹到±π的圆周误差，没有把约2π整数差当作失配。
- 全OFF零电流平台允许mu非唯一。分段解析根与有限32轮二分可在平台两端给出不同mu，单相极点和mu原始最大差接近170 V；三相电流相同，极点共模被Clarke消除。报告保留这些差异，不要求mu唯一，不把大共模差误称为巨大电流误差。
- 双精度子步报告读取CSV舍入后的同一输入，故数值误差可小于前一份与MATLAB全精度原数组末态结果的对照；不是修改原oracle或放宽比较。
- 原始未包裹累计相角转float32仍出现更大相位舍入误差。所有变体、按标签统计和各字段最差行/子步见JSON。
- 这些是离线同状态数值测试，不等于闭环、DSP运行时或实机验证。

## 证据与运行入口

- MATLAB：`tests/prepare_substep_trace.m`；真实日志 `matlab_substep_trace.log`。
- 原参考trace：`oracle_substeps.csv`、`matlab_substeps.mat`、`matlab_substeps_report.json`。
- C桥接：`tests/oracle_bridge.c` 中 `PC_trace_bridge`，没有复制控制器算法。
- 对照：`D:/python/python.exe -B tests/compare_substep_trace.py <output目录>`。
- 报告：`substep_comparison.json`；逐变体完整C trace压缩保存为 `c_substeps_*.npz`。
