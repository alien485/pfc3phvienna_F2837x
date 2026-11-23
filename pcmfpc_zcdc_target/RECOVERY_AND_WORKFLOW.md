# main 与 new_mpc 的固定工作目录

当前new_mpc子工程交付为Runtime4/Kernel12/4 kHz，实际加载及计时按`CCS_RUNTIME4_GUIDE.md`；以下旧固件标识/观察数量只适用于记录当时。固定main/new_mpc工作目录安排保持。

2026-10-26恢复记录。继续使用既有new_mpc，不创建或重命名fcs_mpc分支。
2026-10-28当前为2kHz直接FCS计时试验：内核仍为第十轮，另以 `VIENNA_pcmTiming` 识别新时标。
当前配置与步骤以 `CONTROL_RATE_2KHZ.md`、`BENCH_TIMING.md` 及本轮构建报告为准；
`validation/RESTORED_RT10_REPORT.md` 是旧50kHz恢复证据，第十一轮也只保留为历史实验。
下文第五轮源指纹是恢复时的历史证据，保留供追溯。

## 两套工程的位置

| 用途 | 固定分支 | CCS项目名 | 导入目录 |
|---|---|---|---|
| 原FCS-MPC实验 | main | pfc3phvienna_F2837x | D:\GraduateStudentProject\Vienna_Rectifier\Vienna_Project\Vienna_MPC\pfc3phvienna_F2837x |
| PCMFPC开发与数值计时 | new_mpc | vienna_pcmfpc_zcdc_F2837x | D:\GraduateStudentProject\Vienna_Rectifier\Vienna_Project\Vienna_MPC\pfc3phvienna_new_mpc\pcmfpc_zcdc_target |

两个目录属于同一个Git仓库的两个worktree，各自固定在相应分支。main目录不再需要切到new_mpc，
new_mpc目录也不需要切到main。GitHub Desktop中使用Worktree下拉菜单选择工作目录；
不要为了选择算法在同一个目录里反复切分支。
官方说明：https://docs.github.com/en/enterprise-cloud@latest/desktop/making-changes-in-a-branch/managing-worktrees-in-github-desktop?platform=windows

## CCS怎样打开

main继续使用原来已经能编译的CCS工作区和原项目，原目录、源码与参数未改。
PCMFPC使用新工作区：D:\GraduateStudentProject\Vienna_Rectifier\CCS_Workspaces\new_mpc。

1. CCS中选择File → Switch Workspace → Other，打开上述new_mpc工作区。
2. 选择Project → Import CCS Projects，浏览到表中PCMFPC导入目录。
3. 应识别出vienna_pcmfpc_zcdc_F2837x；不勾选Copy projects into workspace。
4. 在工程Properties → Resource → Location确认路径指向pfc3phvienna_new_mpc下的子工程。
5. 使用Build Project增量编译。项目已经禁用Clean构建；makefile.init还会在任何清理命令执行前阻止它。
   如确实需要处理生成文件，按工作区规则由用户明确处理，不调用批量清理。
6. 以后运行main时切回原CCS工作区；运行PCMFPC数值计时时切到新工作区。

CCS12自带的EGit6.1自动关联linked worktree会报仓库映射错误，新GUI工作区已经预置关闭Git自动关联。
版本管理使用GitHub Desktop。自动构建另用ccs_headless_pfc3phvienna_new_mpc工作区，不与GUI共用锁。

## 编译和加载的是哪个程序

main产物：原目录FLASH\pfc3phvienna_F2837x.out。
PCMFPC产物：新子工程FLASH\vienna_pcmfpc_zcdc_F2837x.out。
在CPU1上通过Run → Load → Load Program明确选择相应文件；源码修改与编译不会自动更新正在运行的DSP程序。
两套程序的Expressions分别使用各自项目中的脚本，不把PCMFPC观察项当作main固件一定存在的符号。

PCMFPC观察表当前为67项。初始化后 `PC_fast_kernel_revision=10`，还须展开新增的
`VIENNA_pcmTiming`，确认revision1、2000Hz、约500us/250us、50000/25000ticks和100000cycles。
这些是编译配置标识，不能代替实际时钟/寄存器核对，也不代表闭环或实时/保护验收通过。

## 已恢复什么

new_mpc提交531702a保留完整子工程。恢复的第五轮fast.c/.h、观察JS/TXT与最终构建备份逐字节一致：

- fast.c：25d29682837e9c2379c7b3c9d3523f5f25f5db980499987423e3dab1915e9872。
- fast.h：fb1edfd454046ca0cef110d120ae88c92c7fd207320bc159beee748d8eebf945。

另选择性取回package_validation.py和validate_round5.py。
旧GitHub Desktop暂存包含fast.c的删除记录，原暂存仍保留作备份，不再整份恢复它。
Python缓存没有取回，现已忽略；FLASH和宿主生成文件仍被忽略。
Kit.json首次在新路径生成时，SFRA输出路径随工作目录改变，不是控制参数变化。

完整Git bundle、恢复前main的82文件指纹、原暂存ID、逐文件恢复记录及构建日志保存在：
D:\GraduateStudentProject\Vienna_Rectifier\output\ti_pcmfpc_zcdc_port\recovery_20261026。
没有回退或覆盖main的新提交，没有自动提交或推送恢复内容。

## 当前运行资格

PCMFPC仍只用于无交流主功率的数值计时。当前2kHz配置的完整周期为100000CPUcycles；
TI实际编译CMPB/CMPC=24815（补偿185ticks），按配置时钟，中断触发至下一ZERO为248.15us；
扣40TBCLK预留后247.75us/49550CPUcycles，另需考虑中断入口等开销；板上寄存器/时钟尚待实读。
本轮TI实际gmake增量构建退出0，C编译/链接0错误、0警告，SysConfig有1类Clock Tree建议warning（本次日志出现2次）；
当前OUT SHA为 `32406e84...`，完整指纹和报告见 `CONTROL_RATE_2KHZ.md`、`validation/CONTROL_RATE_2KHZ_REPORT.md`。
旧23425/18924/19168cycle均不是2kHz配置的新板上测量。完成构建不等于完整闭环能按时完成。
2kHz离线物理仿真的6案均触发保留的7A，当前只能无主功率计时，不能按原100V线RMS/50Ω带功率运行。
HardwareRelease继续为0；本轮只改变控制/PWM时基和派生时标，CMPSS/TZ、ADC采样窗及保护阈值不改。
25000事件的偏置校准约需12.5秒，应保持真实零电流并等 `VIENNA_pcmTick` 开始增长后再计时。

本次恢复前，网页建议中的一次提交清理了81项构建产物；它没有从new_mpc提交中删除控制源码。
恢复验证中另观察到CCS即使收到incremental选项也会自动clean，已保留日志并加入双重阻止：
.cproject禁用clean，makefile.init拒绝清理及RM/RMDIR调用。后续不沿用Clean/Rebuild的操作建议。

## 后续提交

在GitHub Desktop选择new_mpc工作目录，审查恢复的源码、观察脚本、构建配置和文档，再提交到new_mpc。
main保留原用途，不把实验内核合并到main。通常生成的FLASH、宿主构建目录和Python缓存不应进入提交。
以后让Codex继续开发时，明确使用表中new_mpc目录里的pcmfpc_zcdc_target。
