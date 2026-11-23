# Runtime3：单状态FCS与观察器积分预计算

历史版本：当前是Runtime4/Kernel12/4 kHz，操作以`CCS_RUNTIME4_GUIDE.md`为准，本文件的Runtime3/2 kHz产物只供追溯。

2026-10-28。当前最新CCS固件是Runtime3，仍每周期直接输出一个开关组合。
**已构建、可加载做无主功率验证；100 V线RMS/50 ohm/170 V带载闭环尚未放行。**
Runtime2及旧OUT只作为历史，不要把它们当作本次新版本。

## 本次改了实际运行代码

`vienna_pcmfpc_runtime.c::pc_prefetch_observer`在门极提交后的post阶段，
使用当前已知ADC状态、Fhat和前后门极，预计算下一次测量间隔的MODEL电压积分。
`VIENNA_PCMFPC_sample`在下一拍校验tick、重构sequence、实际门极、mode和root后消费一次。
正常连续调度仍使用原两段FULL重构、原ESO和原快速MPC，不增加预测步数，不使用未来ADC。

预计算包装函数放FLASH，原模型运算仍在RAM。原reference32/fast两种路径均支持。
无expected缓存时保留原同步重构fallback，支持首次启机及孤立sample调用；
存在expected缓存却键值不符时立即故障，禁止用错积分。
Trip、无效ADC、reset及不满足post条件会丢弃缓存。post重构失败会比旧同步路径提前一拍报OBSERVER故障。
因此正常成功路径数值可等价，异常触发时序不是完全不变。

Runtime2的末级投影约束也保留：不允许末级为降低相角误差而降低相对共同PC-OFF的参考方向电流投影。
母线动态、Fhat增量、候选7 A/50 V筛选及新中点软恢复仍为离线原型，没有放入当前MCU。

## 新固件与验证

唯一工程：

```text
D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_new_mpc/pcmfpc_zcdc_target
```

项目名`vienna_pcmfpc_zcdc_F2837x`，CPU1、FLASH；产物：

```text
FLASH/vienna_pcmfpc_zcdc_F2837x.out
SHA256 5dc95b7f84394a2d6b3594a7a9121c75388b64d5ceebe02eb27c45aeeaad3f8e
```

- TI CGT25.11.1.LTS增量构建成功，本次0错误、0警告；未运行Clean/Rebuild或重生成SysConfig。
- 556项HOST检查通过。正常两帧完整调度的缓存ESO状态与独立同步重构逐字节相同。
- 请求5/6完整PC_Output逐字节一致；ADC、真实PLL/ESO、测量输入和门极历史均未被夹具注入。
- RAM算法区15841/16384个C28字，余543；BSS3370/4096字，余726；栈分配896字，实机栈峰值未测。
- 当前仍2 kHz，kernel10、Timing.revision1。PWM形式、ADC/CMPSS/TZ和保护参数未改。
- main与父级Kit.json用户改动保留。未通过工具操作板卡、提交或推送Git。

## CCS具体操作

1. 在上面的子工程Refresh并Build Project，选FLASH；不要导入外层历史工程或执行Clean/Rebuild。
2. 主功率断开，CPU1通过`Run > Load > Load Program`加载上述新版OUT，不能只Reload Symbols。
3. 停在main后Resume，等约12.5 s初始化/零偏校准并确认VIENNA_pcmTick增长。
4. 运行本目录`setupdebugenv_pcmfpc_zcdc.js`或导入`CCS_Expressions_PCMFPC_ZCDC.txt`，两表均为70项。
5. 检查识别值：

| 观察项 | 预期 |
|---|---:|
| VIENNA_pcmRuntimeRevision | 3 |
| PC_fast_kernel_revision | 10 |
| VIENNA_pcmTiming.revision | 1 |
| VIENNA_pcmTiming.control_hz | 2000 |
| VIENNA_pcmTiming.sample_us | 约500 |
| VIENNA_pcmTiming.first_duration_us | 约250 |
| VIENNA_pcmTerminalGuard.enabled | 1 |

6. 保持HardwareRelease=0、三环关闭、三相OST，不清Trip。分别单次写BenchRequest=5、等其归零后记录BenchCycles；再单次写6并记录BenchCycles。BenchStatus正常为1，BenchCount各加1。
7. 同时记录BodyCyclesMax、pcmFault、fcsDeadlineMissCount。只需这一组新版5/6数据，暂不重复旧请求2或三次重复试验。

请求5是原完整隔离数值pipeline，含PLL、两段重构、ESO、快速MPC与末级投影约束。
请求6使用相同夹具，先在计时外计算重构，再测PLL、ESO、MPC与末级约束。
两次结果相同已由HOST证明，因此可用于比较同步/预计算路径；不能把fake timer的HOST数值当实机时间。
请求6计时不含重构，但BodyCycles仍包含其准备；总运算量没有因缓存消失。
请求范围现在1..6，7及以上非法；观察脚本不会自动写请求、启动或清Trip。

`VIENNA_pcmObserverPrefetch`观察ready/status/sequence/hits/fallbacks/cycles/cycles_max。
status0初始，1已准备，2已消费，3同步fallback，4键值错误，5准备失败。
无主功率基准与live缓存隔离，所以hits=0、ready=0是正常状态，不代表代码没有更新。
观察结构不是控制命令；修改显示sequence不会替代内部缓存键校验。

5/6数值基准仍发生在post，不是完整写前路径/整ISR/WCET证据。
旧请求2/5输入不同，它们的耗时差不能当作重构函数耗时。
当前500 us周期与247.75 us写前预算保持；是否能提高单状态FCS频率，要由新版实测与对应工况离线验证共同决定。
不要现在自行把控制频率改成4 kHz或设置HardwareRelease=1。

## 带载问题仍在继续处理

当前固件的原预测模型+投影约束回放仍在161.4735 ms触发7 A，缓存重排不会改变这条数值决策轨迹。
源函数接入回放的203次末级检查均未回退，CSV/JSON与原轨迹逐字节一致。
这不是计时检查可以解决的物理控制问题，不能把本次OUT称为可直接带载的成品。

后续保持单状态FCS，不改成占空比/多矢量调制。离线已在研究中点恢复可行集合：
7 A/50 V仍为硬筛选，10 V/0.95是明确新增的正常中点恢复设计目标；
若恢复目标不可达，只在硬安全候选中选违约最小者，再保留原0.02 A电流预算与末级规则。
这些新设计参数不是保护阈值，且仍需完整工况、模型误差和实机时限验证，不能直接复制入实时路径。

完整本轮构建证据在项目根output/ti_pcmfpc_zcdc_port/ccs_observer_prefetch；
当前源绑定构建审计为validation/control_rate_2khz_build_audit.json。
