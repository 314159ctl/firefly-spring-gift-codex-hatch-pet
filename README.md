# 春日手信·流萤

一个基于《崩坏：星穹铁道》流萤春日皮肤制作的独立 Codex Hatch Pet。

这是独立宠物，不会替换原有的流萤宠物。图集使用 Codex Pet v2 规格，包含 9 种标准动作和 16 个凝视方向。

## 文件

```text
firefly-spring-gift-codex-hatch-pet/
├── pet/
│   ├── pet.json
│   └── spritesheet.webp
├── scripts/
│   └── install.ps1
└── README.md
```

## 安装（Windows）

在仓库根目录运行 PowerShell：

```powershell
Set-ExecutionPolicy -Scope Process Bypass
.\scripts\install.ps1
```

脚本会把宠物安装到：

```text
%USERPROFILE%\.codex\pets\firefly-spring-gift\
```

如果该独立宠物已经存在，脚本会先在 `%USERPROFILE%\.codex\backups\firefly-spring-gift\` 创建时间戳备份。安装后请完全退出并重新打开 Codex，再到 **Settings → Pets** 中选择“春日手信·流萤”。

## 规格

- 宠物 ID：`firefly-spring-gift`
- 显示名：`春日手信·流萤`
- 精灵版本：`2`
- 图集：`1536 × 2288` RGBA WebP
- 网格：8 列 × 11 行
- 单元格：`192 × 208`

## 说明

这是独立的非官方粉丝作品，与 HoYoverse、《崩坏：星穹铁道》及相关权利方不存在官方关联、授权或背书。角色名称、形象与相关知识产权归其合法权利人所有。
