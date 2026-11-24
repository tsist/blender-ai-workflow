# 官方来源与按需检索规则

## 官方入口

直连下面这些官方地址检索和核查身份，资产归属、固定版本与许可都以所属 Hugging Face 数据集页面及包内文件为准。

| 用途 | 地址 | 使用方式 |
|---|---|---|
| SimReady Central 资产浏览器 | https://huggingface.co/spaces/nvidia/simready-central | 在线搜索、预览、筛选具体对象 |
| Central 数据卡与贡献说明 | https://huggingface.co/datasets/nvidia/simready-central-library | 核对联合目录模式、贡献者所有权与使用范围 |
| NVIDIA 核心资产数据集 | https://huggingface.co/datasets/nvidia/simready-assets | 查找 NVIDIA 自有资产及其当前许可 |
| 官方发布说明 | https://huggingface.co/blog/nvidia/simready-central-assets-robotics-ai-factories | 了解资产用途、Profile 与 OEM 覆盖范围 |
| 目录索引与审核仓库 | https://github.com/NVIDIA-Omniverse/simready-central | 追踪数据集注册项、固定 commit、验证与提交规则 |
| SimReady Foundation | https://github.com/NVIDIA/simready-foundation | 核对 Profile、规格和验证含义 |
| Blender USD 手册 | https://docs.blender.org/manual/en/latest/files/import_export/usd.html | 本地导入前核对原生 USD 支持特性与转换说明 |
| SimReady Blender Add-on | https://github.com/NVIDIA/simready-blender-add-on | 需要创作或导出 SimReady 规范资产时核对官方插件说明 |

## 按需访问规矩

按下面六步控制拉取范围，省去整库同步的带宽与清理成本：

1. 先在线检索并翻看预览与元数据，锁定当前任务需要的具体对象。
2. 一次任务保留一个主对象；结构方案有分歧时，最多补两个对照对象。
3. 在线预览已看清目标局部且只需选型结论时，直接整理在线参考卡；确需本地几何证据时，再拉取选中对象的完整资产包。
4. 拉取完整包时保留全部相对路径与组成文件（USD/USDA/USDC、贴图、MDL、元数据、许可与验证清单），让外部引用和材质完整可查。
5. 以目录注册的固定 commit 或版本作为身份依据，并在参考卡里如实记下实际拉取时的版本标识。
6. 研究对象、局部目标或使用范围变动时，重新做一次选型与许可核对。

## 许可与验证核查

- Central 是联合目录，各贡献者自行托管数据集并定义许可。选中资产后，逐个读取所属数据集卡和包内许可文件。
- 把 Central 平台的检索条款、工具仓的开源协议与具体资产包的许可分开核查。使用 NVIDIA 核心 `simready-assets` 时，现场核对页面标注的当前许可条款。
- 遵循 CC-BY 等署名许可时，对外分享或衍生交付按条款保留署名、来源链接与许可说明，并标明修改内容；商标与官方背书按独立权益规则处理。
- 将 SimReady Profile 和验证状态当作仿真合规线索，拓扑布线质量、机械运动成立度、制造尺寸与 Blender 导入表现均通过实测单独核定。

## 检索词写法

用「设备类型 + 局部 + 结构或运动特征」组织查询词，再点开预览确认目标局部清晰可见。预览里看不清研究部位时，直接换下一个候选继续筛。

| 研究目标 | 起始查询表达 |
|---|---|
| 机械臂肩部/肘部 | `industrial robot arm articulated joint housing` |
| 夹爪驱动与导向 | `parallel gripper articulated jaws mechanism` |
| 机架与设备支承 | `server rack frame mounting support` |
| 仓储设备分件 | `warehouse equipment assembly conveyor` |
| 封盖与检修结构 | `equipment enclosure panel cover service access` |

## 选型记录字段

每轮选型在参考卡里记齐下面六项，方便后续追溯与复查：

- 研究问题、主对象与对照对象及选用理由。
- 资产名、所属数据集 URL、资产路径或包 URL、所有者。
- 当前许可、目标 Profile、固定 commit 或版本。
- 在线预览或元数据已证实的观察结论。
- 未选对象及淘汰原因。
- 本地拉取记录（按需）：完整包路径、依赖清单、包内哈希与实际检查范围。

本地导入 Blender 作为独立复核步骤，将 `UsdPreviewSurface`、MDL 材质、关节层级、碰撞体与物理属性分开检查并逐项记录实测状态。
