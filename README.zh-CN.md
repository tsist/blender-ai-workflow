# Blender AI 制作工作流总库

**[English README](README.md)** · **[便携版 AGENTS.md](AGENTS.md)** · **[总控方法论技能](skills/blender-work-methodology/SKILL.md)**

面向真实 Blender 5.3.0 作品交付的多部门协作契约、工程方法论、商用品质五级审核体系与全套 21 仓库导航总库。本仓库已彻底去除本机路径、个人账号标识、本地审计日志与私有书签，克隆后即可在任意工作站直接复用。

## 本仓库包含的核心资产

- **[AGENTS.md](AGENTS.md)**：去除了本机特定内容的便携版 v4.0 XML 代理契约（作品为先价值函数、五级采用阶梯、三轮止损机制、L0–L3 / G1→G5 五级商用品质梯度、安全基线与三栏完整路由表）。
- **[skills/blender-work-methodology](skills/blender-work-methodology/SKILL.md)**：10 张工作室部门卡、4 条委托全流程主链、人类可读技能写作规范与统一验收标准。
- **[skills/blender-modeling-review](skills/blender-modeling-review/SKILL.md)**：对齐 StemCell / Superhive / BlenderKit / 3D Commerce / CheckMate Pro 的五级商业建模 QA 规范，附带开箱即用的无头 Blender 5.3.0 探针与评分脚本（`commercial_qa_scorecard.py` + `mesh_qa.py`）。
- **[skills/blender-asset-manager](skills/blender-asset-manager/SKILL.md)**：资产命名、Catalog 映射、事务发布与新工程拖入核验。
- **[skills/simready-hard-surface-research](skills/simready-hard-surface-research/SKILL.md)**：工业级 OpenUSD 硬表面结构与运动副拆解参考研究。
- **[skills/blender-tutorial-scout](skills/blender-tutorial-scout/SKILL.md)**：脱敏公开模板版教程检索与可信度分级登记规范。
- **[scripts/sync_skills.ps1](scripts/sync_skills.ps1)**：便携式多目录技能镜像同步脚本（附 SHA-256 校验）。

## 快速验证与安装

```powershell
# 校验 AGENTS.md XML 合法性、技能链接与零隐私泄漏
python -B scripts/verify_public_hygiene.py

# 将本仓库的公共技能同步到本机 ~/.codex/skills 与 ~/.agents/skills
./scripts/sync_skills.ps1
```

完整 21 个插件、CLI 与专项技能仓库索引请见 [README.md](README.md#complete-repository-ecosystem-21-repositories)。
