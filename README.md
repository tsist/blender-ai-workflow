# Blender AI Workflow Hub

**[简体中文说明](README.zh-CN.md)** · **[Portable AGENTS.md](AGENTS.md)** · **[Work Methodology Skill](skills/blender-work-methodology/SKILL.md)**

An end-to-end production contract, department methodology, commercial 5-gradient QA framework, and multi-repository ecosystem for building real Blender 5.3.0 assets, rigged characters, animation shots, and edited films with AI agents and humans working side by side.

## What Is Included Here

- **[AGENTS.md](AGENTS.md)**: Portable, machine-independent v4.0 XML agent contract defining the works-first value function, 5-step tool adoption ladder, 3-round stop-loss discipline, commercial L0–L3 delivery tiers (G1→G5 priority gradients), safety baseline, and full 3-column routing table.
- **[skills/blender-work-methodology](skills/blender-work-methodology/SKILL.md)**: 10 studio department cards, 4 end-to-end commission chains, human-readable skill authoring guide, and unified acceptance rubric.
- **[skills/blender-modeling-review](skills/blender-modeling-review/SKILL.md)**: 5-gradient commercial QA standard (aligned with StemCell / Superhive / BlenderKit / 3D Commerce / CheckMate Pro) with standalone headless Blender 5.3.0 probe & scorecard scripts (`commercial_qa_scorecard.py` + `mesh_qa.py`).
- **[skills/blender-asset-manager](skills/blender-asset-manager/SKILL.md)**: Naming, Catalog mapping, transactional publish, and drag-in verification.
- **[skills/simready-hard-surface-research](skills/simready-hard-surface-research/SKILL.md)**: Industrial OpenUSD hard-surface structure & joint decomposition research.
- **[skills/blender-tutorial-scout](skills/blender-tutorial-scout/SKILL.md)**: Sanitized public template for graded Blender tutorial scouting and indexing.
- **[scripts/sync_skills.ps1](scripts/sync_skills.ps1)**: Portable PowerShell mirror sync helper with SHA-256 verification.

## Complete Repository Ecosystem (21 Repositories)

| Category | Repository | Role | Companion Skill |
| --- | --- | --- | --- |
| **Hub & Methodology** | [tsist/blender-ai-workflow](https://github.com/tsist/blender-ai-workflow) | Portable `AGENTS.md`, methodology & core shared skills | `blender-work-methodology` |
| **Core CLI** | [tsist/blenderctl](https://github.com/tsist/blenderctl) | Protected headless Blender CLI, SHA-checked jobs & asset transactions | `blender-cli`, `blender-asset-manager` |
| **Commercial QA** | [tsist/blender-modeling-review](https://github.com/tsist/blender-modeling-review) | 5-gradient commercial QA rubric & headless scorecard probe | `blender-modeling-review` |
| **Pre-production** | [tsist/blender-modeling-reference](https://github.com/tsist/blender-modeling-reference) | Reference pack, hero render, orthographics & dimension sheet | `blender-modeling-reference` |
| **Research** | [tsist/simready-hard-surface-research](https://github.com/tsist/simready-hard-surface-research) | Industrial USD assembly, joints & bevel reference cards | `simready-hard-surface-research` |
| **Research** | [tsist/blender-tutorial-scout](https://github.com/tsist/blender-tutorial-scout) | Graded tutorial scouting & public index template | `blender-tutorial-scout` |
| **Modeling** | [tsist/blender-hard-surface-workflow](https://github.com/tsist/blender-hard-surface-workflow) | Hard Surface Workflow 0.3.6 (Face Flow + SubD cages) | `blender-hard-surface-modeling` |
| **Modeling** | [tsist/blender-modeling-workflow](https://github.com/tsist/blender-modeling-workflow) | External 3D candidate import, comparison & part routing | `blender-modeling-workflow` |
| **External 3D Gen** | [tsist/tripo-studio-opencli](https://github.com/tsist/tripo-studio-opencli) | Budget-gated Tripo Studio browser/Bridge workflow | `tripo-studio-opencli` |
| **Procedural** | [tsist/blender-geometry-nodes-workflow](https://github.com/tsist/blender-geometry-nodes-workflow) | Editable Geometry Nodes authoring & managed caches | `blender-geometry-nodes` |
| **UV** | [tsist/blender-uv-workflow](https://github.com/tsist/blender-uv-workflow) | Protected UV unwrap, texel density, transfer & UV2 | `blender-uv` |
| **Materials** | [tsist/blender-material-workflow](https://github.com/tsist/blender-material-workflow) | Material Workflow 0.9.2 (layered PBR + procedural + projection bake) | `blender-material-authoring` |
| **Rigging** | [tsist/blender-rigging-workflow](https://github.com/tsist/blender-rigging-workflow) | Rigging Workflow v003 CLI preview, voxel skinning & weights | `blender-rigging` |
| **Animation** | [tsist/blender-animation-curves-workflow](https://github.com/tsist/blender-animation-curves-workflow) | Animation Curves Workflow 0.4.4 (FK poses, cues, clip reuse) | `blender-animation-workflow` |
| **Physics** | [tsist/blender-physics-workflow](https://github.com/tsist/blender-physics-workflow) | Geometry Nodes physics workbench & disk cache verification | `blender-physics-workflow` |
| **Camera** | [tsist/blender-camera-workflow](https://github.com/tsist/blender-camera-workflow) | Shot table, camera staging, A/B framing & live animatic | `blender-camera-workflow` |
| **Lighting** | [tsist/blender-lighting-workflow](https://github.com/tsist/blender-lighting-workflow) | Managed light rigs, neutral baseline & cross-shot templates | `blender-lighting` |
| **Stylized / NPR** | [tsist/blender-toon-workflow](https://github.com/tsist/blender-toon-workflow) | Toon Workflow 0.52.1 (cel shading, SDF shadows, 2D lines) | `blender-toon-workflow` |
| **Render** | [tsist/blender-render-batch](https://github.com/tsist/blender-render-batch) | Ordered multi-shot batch rendering, H.264 dailies & Colab runner | `blender-render-batch` |
| **Compositing** | [tsist/blender-compositing-workflow](https://github.com/tsist/blender-compositing-workflow) | Multi-effect compositor stacks, line-color merge & depth relight | `blender-compositing` |
| **Video Editing** | [tsist/blender-video-editing-workflow](https://github.com/tsist/blender-video-editing-workflow) | Blender VSE rough cut, in-place shot swap & OTIO roundtrip | `blender-video-editing` |

## Quick Start

```powershell
# 1. Verify AGENTS.md XML, skill links, and hygiene
python -B scripts/verify_public_hygiene.py

# 2. Sync bundled skills into your agent skill directories (Windows PowerShell)
./scripts/sync_skills.ps1
```

## License

GPL-3.0-or-later. See [LICENSE](LICENSE).
