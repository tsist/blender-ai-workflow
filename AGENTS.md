<agent_contract file="AGENTS.md" scope="project" version="4.0-portable" project="Blender AI Workflow" format="xml-first">

  <north_star>
    <rule id="work-first" priority="critical">本项目以作品为先：做出用户真正拿去用的角色、资产、镜头与成片。插件、CLI、技能和知识库都在反复出现的制作需求中建设，用来实打实省工夫、提质量；开源发布只是顺带产物。</rule>
    <rule id="value-function" priority="critical">一切取舍按「用户看得到的效果提升 ÷ 投入」拍板。动手前先问三句：这件事影响交付的主效果吗？做到哪一步就够用？有没有更省力的成熟做法？对主效果影响很小的小毛病记入后续清单直接跨过去，把精力留给主画面。</rule>
    <rule id="first-principles">从真实用途倒推标准：问清谁来用、放在哪个环境用、从哪个视角或动作判断好坏，据此定下够用标准和验收方式，亲眼看最终画面、动作与拖入效果拍板。</rule>
    <rule id="learn-from-the-best" priority="critical">优秀教程、原作者工程与成熟成品是最好的老师。遇到陌生领域或拿不准质量边界时，先找高质量做法照着复现一遍，再对照差距微调。</rule>
    <rule>本文件补充用户全局约定，服从更高优先级指令与当次明确授权；默认使用简体中文沟通（或遵循项目语言设置）。</rule>
  </north_star>

  <decision_framework>
    <adoption_ladder priority="critical">
      <step order="1">直接可用（自研优先）：① 优先调用本项目已安装验收的自研插件同核接口与公共 CLI（如绑定、体素蒙皮、布光、合成、镜头、三渲二、动画、物理工作台）；② 仅在自研插件未覆盖的常规操作，或已核实自研插件源码/目录确无对应模块并说明差距后，才使用 Blender 原生功能与内置扩展。</step>
      <step order="2">免费开源的成熟插件与官方扩展（如 Rigify、LoopTools、Bool Tool、MACHIN3tools 等免费开源版本；方案选用免费开源工具，隔离付费商业插件）。</step>
      <step order="3">优质教程与成熟成品里的标准制作工序，手工或配最小脚本照做。</step>
      <step order="4">可借鉴的活跃开源实现（参考思路或合规引入依赖）。</step>
      <step order="5">新建自研插件、新 CLI 命令族或大型功能。</step>
      <rule>从第 1 级往下选，上一级能达到够用标准就当场采用。凡自研插件已覆盖的专项能力（例如 `rigging_workflow` 的模块化人形/四足骨架封装与 26 邻接体素蒙皮），严禁绕开自研核心直接改用裸 Blender 原生算子（如手写裸 Rigify + `ARMATURE_AUTO` 热力蒙皮）草率替代；核实能力边界前须同时查全 `discover` 相关版本与源码目录。把已经被作品验证有效、还要在多件作品里反复跑的工序才封装进插件与 CLI。</rule>
    </adoption_ladder>
    <rule id="build-value-gate" priority="critical">准备进入第 5 级（新建插件、新命令族或大功能）前，先向用户讲清：前四级差在哪里、预期能帮哪些作品省多少时间或解决什么质量卡点、大概要投入多少开发与维护成本；用户批准后再动工。已有自研工具的小修补和已约定迭代直接推进。</rule>
    <rule id="scope-change-cost">需求范围扩大时，先简短说明对当前交付时间和复杂度的影响，并给出更轻量的备选做法，按用户拍板的范围推进。</rule>
    <rule>开工前先写明交付物、主效果、够用标准与审看节点。尺寸、单位、轴向、帧率、引擎和对象名能从现有文件、镜头表或偏好里读到的就自己读取，只追问会改变路线又无处可查的关键输入；常规默认项交代清楚假设后直接推进。</rule>
  </decision_framework>

  <learning_by_reference>
    <rule id="replicate-first" priority="critical">学习四步走：①先查本地教程库、项目知识库与已有经验；②挑 1–3 个高质量教程或可拆解的成熟成品，摸清标准工序；③在本项目里照做复现；④放在同机位同条件下跟参考对照，针对差距做调整。</rule>
    <rule id="bounded-research">为当前交付做的研究控制在一轮之内：一轮结束就拿出一份复现小样、对照图或清晰的路线选择往下推进。</rule>
    <rule id="autonomous-domain-learning">在等待长作业、已交付收尾或等用户回复的空闲间隙，可以自主拓展领域学习并整理进本地教程库或项目 Wiki，保持当前生产交付节奏不受拖累。</rule>
    <rule>对标时直接看真实的骨骼关节、网格布线、节点连线和动作变形，跨风格或跨体型时取其原理灵活适配。</rule>
  </learning_by_reference>

  <progress_and_stop_loss>
    <rule id="visible-progress" priority="critical">进展按用户肉眼可见的效果改善计算：一轮 = 一次实质修改 + 同机位、同姿态、同灯光下的前后对照观察。换一套真正不同的做法才算换路线。</rule>
    <rule id="stop-loss" priority="critical">同一个子问题连续 2 轮看不出改善，立即改走成熟路线：退回采用阶梯更高层级，或严格按优秀教程的标准工序重做。累计 3 轮仍看不出改善，当场停下该子问题，带上前后对照图、试过的路线和原因分析向用户汇报，给出「接受现状 / 换方案 / 降级跳过」三个选项等用户拍板。</rule>
    <rule id="clean-halt">触发 3 轮止损停步后，保持现场完好等待用户拍板或新线索，把精力转去推进其他独立环节。</rule>
    <rule>遇到报错先分清是输入文件、上下文模式、外部依赖、软件版本、硬件资源还是代码实现问题，用最小样例快速定位；同一工具报错出现第二次时先查帮助文档和已有经验。</rule>
    <rule>约定的主效果与必要验收跑通即可交付；没做的部分坦诚列清，锦上添花的小改进放进后续建议。</rule>
  </progress_and_stop_loss>

  <verification_tiers>
    <quality_levels default_delivery="L2">
      <level id="L0" name="草稿探索">在工作副本上快改快看、直接播放，专注验证大形与核心想法。</level>
      <level id="L1" name="镜头自用">固定机位或单次镜头配角，G1 工程门禁全过、总分 ≥65，由制作代理跑探针自检即可推进。</level>
      <level id="L2" name="Blender 商业标准级">正式交付与入库的默认放行线（对齐 StemCell / Superhive / BlenderKit / 3D Commerce）：G1 与 G2 红线全过、总分 ≥80 且各梯度得分率 ≥70%，送审与交付前由未参与制作的独立只读子代理盲审签认。</level>
      <level id="L3" name="旗舰主角级">特写主角或高精机构（对齐 CheckMate Pro / OpenSubdiv / SimReady）：红线全过、总分 ≥90 且 G2/G3/G4 得分率 ≥85%，独立只读子代理盲审签认。</level>
    </quality_levels>
    <priority_gradient>审核与返修按从高到低的五级梯度卡关，前一级未过当场打回：G1 工程生死门（15 分：冷重开、零丢贴图与本机绝对路径、零负缩放、数据贴图 Non-Color、切刀关渲染可见）→ G2 拓扑四边面与大纲卫生（25 分：1米单位、正面朝 -Y、落地原点与缩放应用、单一根集合、清零 Cube.001 默认名与垃圾数据块、四边面控制笼与极点规范）→ G3 大形比例与参考还原（25 分）→ G4 光影法线与运动变形（20 分）→ G5 UV 纹素、PBR 校准与双引擎品相（15 分；仅交白模时按前四项 85 分折算百分制）。每次正式任务收尾落盘一份 quality-scorecard.json。</priority_gradient>
    <review_gates>每类作品默认安排两次用户审看：可复用资产看「白模」与「最终材质」；角色看「未蒙皮骨架」与「动作预览」；单镜头看「实体分镜预演」与「最终帧」；多镜成片看「粗剪」与「精剪」。其余工序自检通过后直接交下游，委托另有约定时按约定执行。</review_gates>
    <rule>艺术表现看实际渲染图、播放视频与用户反馈；汇报用一两句话各自交代清质量等级得分、已验证项与待验证项。</rule>
  </verification_tiers>

  <safety_baseline>
    <rule priority="critical">原文件与资产库母本保持只读，一切编辑在独立工作副本或用户明确指定的当前场景上进行；做大改动前先存一份可随时退回的检查点。</rule>
    <rule priority="critical">切换工程、重置场景或重启 Blender 前先保护好窗口里未保存的工作；连接异常时先查端口与会话归属，保持用户正在使用的进程完好。</rule>
    <rule>同一份工程、缓存或发布目录同一时刻只由一个入口写入；接手前若发现文件已被外部改动，立即重新读取最新状态与指纹。</rule>
    <rule>修改前先查目标对象及共用数据块（Mesh、Material、Action、NodeGroup）的引用数；需要单改一件时先独立复制数据块，保护旁路拓扑、UV、权重、形态键与动画完好。</rule>
    <rule priority="critical">覆盖既有目标、删除文件、发布入库、外发上传或调用收费生成接口前先取得明确授权；已在授权范围内的目标直接推进，收费任务提交超时后先查账本与回执状态再决定下一步。</rule>
    <rule>保持沙箱隔离、校验门禁与全局配置原样运行；需要下载安装新依赖或新扩展时先说明用途并取得批准。</rule>
  </safety_baseline>

  <tools_and_skills>
    <path role="project">${BLENDER_PROJECT_ROOT:-.}</path>
    <path role="asset_library">${BLENDER_ASSET_LIBRARY:-./assets}</path>
    <path role="skills_source">./.agents/skills</path>
    <path role="audit">work/audit/&lt;batch&gt;/</path>
    <path role="tutorials">tutorial-library/</path>
    <baseline host="Windows Blender 5.3.0" entry="./blenderctl.ps1" note="通过 ./blenderctl.ps1 或 python tools/blenderctl/cli.py 实时查询当前环境已安装的专项动作与插件版本" />

    <live_window_policy>处理当前打开的 Blender 窗口时，优先走各自研插件的 live / session 入口读取手调状态并生成带指纹的工作副本；若宿主配置了实时视口 MCP，仅用于视口观察与短小试验；一切正式修改与最终交付都经由 blenderctl 存盘并另起进程冷重开验收。</live_window_policy>

    <routing_table note="所有技能在 ./.agents/skills/ 中统一维护，可通过 scripts/sync_skills.ps1 同步至宿主代理的技能目录">
      <column name="Blender 内（公共 CLI 与部门专项）">
        <route target="blender-work-methodology" repo="tsist/blender-ai-workflow" when="接到跨环节委托（资产、角色动画、镜头、多镜成片、返修）需要排工序与审看点时" deliverable="部门工序单、交接清单与审看安排" handoff_to="对应部门的专项技能" />
        <route target="blender-cli" repo="tsist/blenderctl" when="任何需要读写已保存 .blend、查可用命令目录、跑后台作业、接现场窗口或做发布事务时" deliverable="工作副本、作业回执、体检报告与发布事务记录" handoff_to="当前工序或下游部门" />
        <route target="blender-hard-surface-modeling" repo="tsist/blender-hard-surface-workflow" when="制作与精修可编辑硬表面控制笼、卡线、倒角与布尔曲面时" deliverable="稀疏四边面控制笼与修改器栈白模" handoff_to="建模审核或 UV 与材质部门" />
        <route target="blender-modeling-workflow" repo="tsist/blender-modeling-workflow" when="把外部生成的三维候选导入 Blender、对比筛选并按部件采用或重建时" deliverable="原生 .blend 候选与部件沿用/重建清单" handoff_to="硬表面建模、UV 与材质或绑定部门" />
        <route target="blender-geometry-nodes" repo="tsist/blender-geometry-nodes-workflow" when="结构需要反复改数量、沿路径排布、表面散布或受管时序模拟缓存时" deliverable="暴露清晰参数与材质槽的几何节点主件及派生副本/缓存" handoff_to="UV 与材质、镜头灯光或渲染部门" />
        <route target="blender-modeling-review" repo="tsist/blender-modeling-review" when="白模里程碑、多候选比选或正式交付前需要独立审看造型与工程规范时" deliverable="五级商业梯度评分单（quality-scorecard.json）、问题截图与返修清单" handoff_to="用户审看或退回建模部门精修" />
        <route target="blender-uv" repo="tsist/blender-uv-workflow" when="为定稿白模规划接缝、低拉伸展开、分配像素密度、生成光照图 UV2 或迁移 UV 时" deliverable="带验证报告的渲染 UV 层与辅助 UV 层" handoff_to="材质制作环节" />
        <route target="blender-material-authoring" repo="tsist/blender-material-workflow" when="在中性灯光下制作分层材质节点、高低模投射烘焙与导出可移植贴图时" deliverable="可编辑节点主工程、导出贴图包与干净工程贴图重建对照" handoff_to="用户最终材质审看、资产入库或镜头灯光部门" />
        <route target="blender-rigging" repo="tsist/blender-rigging-workflow" when="角色、四足生物或复杂机构需要生成骨架、体素蒙皮、部件转权、选骨局修、面部表情或次级弹性骨时（人形 C94 走 candidate-entry；独立人形/四足优先走自研 rigging_workflow v003 的 modular_rig + modular_workflow 体素蒙皮，禁用原生 ARMATURE_AUTO 替代）" deliverable="未蒙皮待审骨架，以及蒙皮完成的可操作角色工程与控制板" handoff_to="用户骨架审看或动画与模拟部门" />
        <route target="blender-animation-workflow" repo="tsist/blender-animation-curves-workflow" when="制作关键帧表演、脚底支撑、双人及灯光同步事件、音乐节拍卡点或片段复用时" deliverable="可编辑 Action、事件时间表与动作预览视频" handoff_to="用户动作审看、物理模拟或镜头与剪辑部门" />
        <route target="blender-physics-workflow" repo="tsist/blender-physics-workflow" when="计算刚体散落、粒子、布料绳索等服从主表演节奏的物理动态与 OpenVDB 体积时" deliverable="物理设置副本、烘焙好的磁盘缓存目录与短预览" handoff_to="镜头灯光或渲染与风格化部门" />
        <route target="blender-camera-workflow" repo="tsist/blender-camera-workflow" when="建立与调整全片镜头表、架设机位焦段、比较构图候选或现场播放实体分镜预演时" deliverable="镜头表主档、相机工程副本与实体分镜预演" handoff_to="用户预演审看、灯光、动画或剪辑部门" />
        <route target="blender-lighting" repo="tsist/blender-lighting-workflow" when="在保留中性材质基线之外搭建场景主灯组、单镜补光或批量套用灯光模板时" deliverable="成片灯光工程副本、灯组快照与基线对照图" handoff_to="渲染与风格化部门" />
        <route target="blender-toon-workflow" repo="tsist/blender-toon-workflow" when="制作三渲二面部 SDF 影形、法向修正、色阶高光与二维视口/后台描边线稿时" deliverable="可调三渲二着色与独立线稿通道、连续帧预览" handoff_to="合成或批渲染部门" />
        <route target="blender-render-batch" repo="tsist/blender-render-batch" when="按镜头表提交多镜头动画批次、管理失败帧续跑并生成逐镜 H.264 审片时" deliverable="分层渲染序列、逐镜审片视频与批次状态回执" handoff_to="合成或剪辑部门" />
        <route target="blender-compositing" repo="tsist/blender-compositing-workflow" when="利用多层通道做色调统一、辉光景深、线色叠合或现场深度补光修正时" deliverable="可编辑合成工程副本与按镜头命名的成片媒体" handoff_to="用户最终帧审看或剪辑部门" />
        <route target="blender-video-editing" repo="tsist/blender-video-editing-workflow" when="在 VSE 拼装分镜粗剪、按镜头编号原位换入正式渲染片、配齐音轨字幕并导出成片时" deliverable="可编辑 VSE 工程、外部媒体清单与粗剪/精剪成片" handoff_to="用户粗剪/精剪审看或最终交付" />
        <route target="blender-asset-manager" repo="tsist/blenderctl" when="用户认可资产后执行规范命名、Catalog 归类、打包发布进正式库与新工程拖入验收时" deliverable="正式资产库条目、版本化文件与新工程拖入验证样例" handoff_to="最终交付或下游场景取用" />
      </column>

      <column name="生成与素材（外部三维生成与二维图像）">
        <route target="tripo-studio-opencli" repo="tsist/tripo-studio-opencli" when="复杂有机体、雕塑主体或角色原型适合先在 Tripo Studio 网页端生成并导出 FBX/GLB 候选时" deliverable="本地导出的三维候选文件、项目变体回执与账本记录" handoff_to="blender-modeling-workflow（建模部门）" />
        <route target="blender-modeling-reference" repo="tsist/blender-modeling-reference" when="开工前需要生成主效果图、正交三视图、尺寸标注图或图生 3D 输入备图时" deliverable="最长边 2048 像素以内的合规参考图包与尺寸清单" handoff_to="前期参考与建模部门" />
        <route target="代理原生生图工具" when="前期出概念参考图，或材质阶段制作空间图案纹理与复杂磨损遮罩时" deliverable="本地核对过像素尺寸与字节数的 PNG/JPEG 图像素材" handoff_to="前期参考或 UV 与材质部门" />
        <route target="可控节点生图流（按需）" when="常规生图之外确需多控制网、特定节点流或批量生成连续风格贴图素材时" deliverable="可复现工作流 JSON 与合规分辨率贴图/参考图" handoff_to="前期参考或 UV 与材质部门" />
      </column>

      <column name="研究与知识（教程库、结构参考与长期记忆）">
        <route target="本地教程库与项目 Wiki" when="遇到陌生工艺、修改器耦合疑难或需对标原作者标准做法时先查此处" deliverable="1–3 个可直接照做复现的成熟工序与参数基准" handoff_to="当前制作部门" />
        <route target="blender-tutorial-scout" repo="tsist/blender-tutorial-scout" when="本地教程库缺少某细分主题的高质量中文教程，需在公开教程站点定向补搜分级时" deliverable="分级核验过的教程线索与资源索引" handoff_to="前期参考或自主领域学习" />
        <route target="simready-hard-surface-research" repo="tsist/simready-hard-surface-research" when="制作机械臂、夹爪、阀门或仓储设备，需要参考工业级分件结构与硬表面布线时" deliverable="可追溯结构参考卡、关节拆解与建模约束" handoff_to="前期参考与建模部门" />
        <route target="宿主记忆与任务状态工具（可选）" when="跨会话复杂任务需要跟踪进度，或读取/沉淀用户稳定偏好与关键工程决断时" deliverable="结构化任务状态记录与简短长期记忆条目" handoff_to="主线程全局协调" />
      </column>
    </routing_table>
  </tools_and_skills>

  <knowledge_and_delivery>
    <rule>跨会话长任务开工先同步最新任务状态，现场实盘文件与最新 CLI 契约优先于历史记录；已吃透的成熟技能直接上手干活。</rule>
    <rule>实践中验证过的新工艺写进项目知识库，教程精读放进本地教程库（写清来源、版本与验证范围），用户稳定偏好与架构决定沉淀为简短长期结论。</rule>
    <rule>审计目录只留做决定和恢复真正用得上的关键对照图、请求回执与回滚点，保持轻便干净。</rule>
    <rule>交付时给齐可用工程文件、简明改动说明、已验结果与待验项，视觉作品附上实际渲染预览或前后对照图。</rule>
    <rule priority="critical">修改本 AGENTS.md 必须先向用户展示具体提案并取得明确许可；获批后先备份原文件，再写入、做 XML 解析验证并展示关键差异。</rule>
  </knowledge_and_delivery>

</agent_contract>
