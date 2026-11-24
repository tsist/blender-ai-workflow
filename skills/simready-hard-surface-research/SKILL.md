---
name: simready-hard-surface-research
description: 按需从 NVIDIA SimReady Central 挑选单个对口工业资产，分析 OpenUSD 分件层级、运动副枢轴与硬表面布线倒角，输出可追溯参考卡和 Blender 重建约束。制作机械臂、夹爪、机架、阀门或仓储设备需要真实结构拆解与硬表面布线参考时使用。
metadata:
  version: "1.0.0"
---

# SimReady 硬表面与机械结构研究

本技能属于 [前期参考部门](../blender-work-methodology/references/departments/reference.md)，负责按需从 NVIDIA SimReady Central 挑选对口工业机械资产，拆解 OpenUSD 分件层级、运动副枢轴和硬表面布线倒角，为建模与绑定部门提供可追溯参考卡和 Blender 重建约束。

## 怎么做

### 第一步：把研究问题写死

动身检索前，先把要查的机械局部、运动方式和下游用途落成一句话。目标框住了，选型才快，后面才少跑偏。

从当前委托里提取四项信息：研究重点（硬表面布线、机械结构，或两者兼顾）、目标局部（如机械臂肩部、平行夹爪驱动壳、机架耳座、检修封盖）、下游用途（外观参考、布线方案、装配拆件、白模重建或机构绑定前置），以及已知尺寸、行程和许可要求。把问题写成能核对的话，例如：「查清工业平行夹爪的壳体分件、导轨支承、滑块枢轴与开合间隙，整理出 Blender 白模重建约束。」

### 第二步：在线按需挑出单个对口对象

打开 [官方来源与按需检索规则](references/source-catalog.md) 里的官方入口，按「设备类型 + 局部 + 结构或运动特征」检索。直连官方目录，资产身份和许可才有据可查。

先看在线预览、元数据、许可和 Profile，锁定一个最贴题的主对象；遇到结构分歧时，最多补两个对照对象。每次只拉取当前任务需要的对象，把精力留给眼前这件活。

逐个核对具体数据集卡和包内许可，顺手记下未选对象与原因。在线预览已经看清目标分件且当前只需选型时，直接进入参考卡整理；需要实测网格、倒角和 OpenUSD 节点时，再按固定 commit 或版本拉取选中对象的完整资产包（含全部 USD 组成文件、贴图、MDL、元数据与许可），在独立工作副本里查看，源包保持原样留作对照。

### 第三步：按双轨拆解分件、枢轴与布线

按任务重点翻阅 [拓扑与机械结构分析细则](references/analysis-rubric.md)，先标明当前证据层级（目录、预览、场景结构、几何或重建验证），再落笔写观察。证据走到哪一层，结论就写到哪一层，下游照着建才踏实。

- **拆机械结构与运动副**：先读 OpenUSD 装配层级和功能分区，标出外壳、主承力件、支承、连接、驱动、导向、防护、检修口与管线。对每个活动部位记齐固定端、运动端、枢轴点、轴向、父级关系、行程限位、安装法兰和运动包络。把物理和关节元数据拿来和实体几何互相印证，按实测把搭接归类为一体连续、独立件接触、允许嵌入或视觉穿插，外壳遮挡住的内部轴承、电机与紧固件如实标为未知。
- **拆硬表面拓扑与倒角**：先区分眼前看到的是原始控制网格、求值网格、渲染网格、碰撞体还是实例。再逐项看清大形轮廓与截面、边流走向、孔与凸台周边环线、支承环与倒角宽度分段、极点位置、平面封盖、法线平滑策略以及对称实例关系。把「源模型现状」和「Blender 重建拓扑提案」分栏写清；遇到三角化或仿真优化网格时，提取大形与分件比例，把适合四边面控制笼的布线写进重建提案。

### 第四步：输出可追溯参考卡与重建约束

为每个入选对象整理一份参考卡（模板见 [拓扑与机械结构分析细则](references/analysis-rubric.md)），写清六块内容：

1. **研究问题与选用理由**：说明它解决当前哪一处结构或布线问题。
2. **来源身份**：资产名、官方数据集与资产 URL、所有者、具体许可、Profile、固定 commit 或版本；本地拆解的另记工作副本路径与包内哈希。
3. **直接观察**：分拓扑和结构逐条列事实，每条附上对应的预览视角、USD 节点路径或几何层级。
4. **证据推断与未知项**：写明基于可见几何的推断和依据，把遮挡或缺失的内部机构标成未知。
5. **Blender 重建约束**：给出主轮廓与总尺寸、分件清单、安装接口、枢轴与轴线、支承接触关系、全行程间隙、倒角与卡线思路，以及建议建模部门优先验证的高风险局部小样。
6. **待适配项与未验项**：列出仿真简化碰撞体、材质转换差异、缺失内部结构与尺度限制，提醒下游分别复核。

### 第五步：按需做本地导入复核

需要把选中的资产包导进 Blender 实测轴心、网格或间隙时，先运行 `& './blenderctl.ps1' discover --product research` 核对研究路由，再通过 [blender-cli](https://github.com/tsist/blenderctl/blob/main/skills/blender-cli/SKILL.md) 建立独立批次工作副本。

导入后把几何网格、材质节点（`UsdPreviewSurface` / MDL）、关节层级与物理属性分开复核，实测结果回填进参考卡再往下交。

## 交给下游

- **交付物**：可追溯参考卡（含来源身份与许可）、部件拆分与枢轴关系清单、Blender 重建约束与优先小样建议；做过本地复核的附上关键视角标注图与工作副本路径。
- **建模部门验收与承接**：交给 [blender-hard-surface-modeling](https://github.com/tsist/blender-hard-surface-workflow/blob/main/skills/blender-hard-surface-modeling/SKILL.md) 搭建四边面控制笼、倒角卡线与分件白模，优先按约束做出高风险搭接小样核对轮廓与间隙。
- **绑定与参考协同**：涉及活动机构时，把枢轴点、轴向、父级与行程限位同步交给 [blender-rigging](https://github.com/tsist/blender-rigging-workflow/blob/main/skills/blender-rigging/SKILL.md) 摆骨架；需要补全正交三视图时联动 [blender-modeling-reference](https://github.com/tsist/blender-modeling-reference/blob/main/SKILL.md)；白模成型后送 [blender-modeling-review](../blender-modeling-review/SKILL.md) 独立审看。
- **沉淀与卫生**：形成跨资产通用的机械结构规律后，更新项目共享 Wiki；模型文件与审计图留在工作区或审计目录，本技能目录保持轻量。

## 例子：研究工业平行夹爪的分件与枢轴并交给建模部门

接到委托：「为工业装配镜头制作一只气动平行夹爪，需要摸清主体分件、导轨滑块运动副与硬表面倒角方案，交建模部门做白模。」

1. **定问题**：写成可核对的研究句——「查清工业平行夹爪的本体壳、上盖、滑轨槽、左右指座及顶部安装法兰的分件与运动副关系，给出 Blender 控制笼与行程间隙约束。」
2. **在线挑对象**：打开 SimReady Central 浏览器，检索 `parallel gripper articulated jaws mechanism`。浏览预览与元数据后，选定一只预览清晰露出本体壳、双指滑块和顶部 4 孔法兰的官方夹爪作主对象，另选一只导轨外露的夹爪作对照。逐个记下所属数据集 URL、所有者、具体许可、Profile 与固定 commit，并记下 2 个外壳全遮挡候选的淘汰原因。
3. **按需取包与双轨拆解**：本次需要实测滑块间隙与圆角过渡，只拉取主对象的完整资产包到独立工作副本（保留 USD 组成文件、贴图与许可）。展开 OpenUSD 层级后，先把渲染网格与简化碰撞体分开，确认 `base_housing` 为固定端、`jaw_left` 与 `jaw_right` 为沿局部 X 轴对向平移的滑块运动副，实测闭合与张开极限行程下的壳体余量。接着检查渲染网格，确认源网属于仿真三角网，把大形比例、分件缝、螺孔相位记入「源模型现状」，把本体控制笼、导轨槽护边环与统一 3 段主倒角写进「Blender 重建拓扑提案」，外壳遮挡的内部气缸与活塞标为未知。
4. **交付下游**：输出《工业平行夹爪结构与布线参考卡》，列齐 6 个分件清单、法兰基准面、双滑块轴向行程和 1.5 mm 壳体退让间隙，建议建模部门先做「导轨槽与滑块搭接」局部小样。参考卡与 3 张局部标注图一起交给 [blender-hard-surface-modeling](https://github.com/tsist/blender-hard-surface-workflow/blob/main/skills/blender-hard-surface-modeling/SKILL.md) 启动白模制作，滑块枢轴与限位参数同步交给 [blender-rigging](https://github.com/tsist/blender-rigging-workflow/blob/main/skills/blender-rigging/SKILL.md) 备建机构控制。

## 参考

- [官方来源与按需检索规则](references/source-catalog.md)
- [拓扑与机械结构分析细则](references/analysis-rubric.md)
- [官方入口与项目参考索引](references/sources.md)

维护：唯一维护源是 `./.agents/skills/simready-hard-surface-research/`，改完按项目同步方式更新各镜像。
