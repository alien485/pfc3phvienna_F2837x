# main 与 new_mpc 的固定工作目录

2026-10-26恢复记录。继续使用既有new_mpc，不创建或重命名fcs_mpc分支。

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

PCMFPC新观察表共65项，首项PC_fast_kernel_revision应为5（初始化后）。
该值仅识别恢复的第五轮软件，不代表已经打开闭环或通过实时/保护验收。

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

PCMFPC仍只允许无交流主功率的固定数值计时。第四轮用户测得23425周期，约117.125us（200MHz条件），
仍超当前4000周期预算；第五轮尚无板上计时。恢复和编译成功不等于PCMFPC已能带功率闭环。
HardwareRelease继续为0，PWM/ADC/CMPSS/TZ和保护阈值均按最终备份保留。

本次恢复前，网页建议中的一次提交清理了81项构建产物；它没有从new_mpc提交中删除控制源码。
恢复验证中另观察到CCS即使收到incremental选项也会自动clean，已保留日志并加入双重阻止：
.cproject禁用clean，makefile.init拒绝清理及RM/RMDIR调用。后续不沿用Clean/Rebuild的操作建议。

## 后续提交

在GitHub Desktop选择new_mpc工作目录，审查恢复的源码、观察脚本、构建配置和文档，再提交到new_mpc。
main保留原用途，不把实验内核合并到main。通常生成的FLASH、宿主构建目录和Python缓存不应进入提交。
以后让Codex继续开发时，明确使用表中new_mpc目录里的pcmfpc_zcdc_target。
