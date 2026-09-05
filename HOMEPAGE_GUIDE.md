# 主页维护

## Demo 水印

当前正式展示的 9 个 demo 已在视频每一帧嵌入 `Hao Zhang | HaoZhangRobotics.github.io`，封面也从加水印视频提取。以后新增本人的 demo 同样处理。水印为画面底部居中白字、半透明黑底，保留音轨。

本机处理前的视频备份在 `local/watermark-originals/`，不生成网页、不提交。源素材目录未修改。处理脚本与检查记录在 `local/watermark_demos.py`、`local/watermark-work/report.json`。已撤下或归属未确认的旧素材未加个人水印。

Git 历史未改写，旧提交仍可能含无水印版本；更换当前视频不能收回已下载的副本。

主页沿用 Jekyll / AcademicPages。首页现在集中展示个人介绍、News 和 Publications，论文按时间倒序自动读取。

## 中文编辑入口

日常直接修改根目录的 **`中文编辑.md`**，包含侧栏信息、个人简介、研究兴趣和 News，也可以用中文提出论文、项目、简历等修改。然后告诉 Codex：“按中文稿同步英文主页，检查后推送。”

中文保存后不会自行翻译或推送；Codex 执行同步后，英文网站才会更新。中文稿不会生成网页，但会保存在 GitHub 仓库，公开仓库中仍可被查看。`AGENTS.md` 记录了后续同步流程。

## 内容放在哪里

本科工程项目和详细科研经历的中文入口是 **`项目与科研经历中文稿.md`**。按其中字段填写后，由 Codex 同步到 Projects、CV 或首页；没有论文的工程实践也可以独立展示。

| 内容 | 位置 |
| --- | --- |
| 个人介绍、首页 News | `_pages/about.md` |
| 头像、邮箱、学术链接 | `_config.yml` |
| 每篇论文的标题、摘要、链接及详细介绍 | `_publications/`，每篇一个 Markdown 文件 |
| 展示图片、视频 | `images/publications/项目名/` |
| PDF、简历 | `files/` |
| 当前中文 CV（2025 年 7 月版） | `files/cv/Hao-Zhang-CV-zh-2025-07.pdf` |
| 原始 Overleaf 主文件 | `_cv_source/Hao-Zhang-CV-zh-2025-07.tex`，尚缺 `resume.cls` 等完整模板依赖 |
| 首页论文展示模板 | `_includes/publication-showcase.html` |
| 首页论文展示样式 | `_sass/_publication-showcase.scss` |
| 顶部导航 | `_data/navigation.yml` |

## 给论文添加展示素材

在现有论文 Markdown 文件开头两行 `---` 之间添加需要的字段，示例如下。只填写真实存在的素材和链接，未提供的字段直接省略。

```yaml
preview_video: "/images/publications/TNSRE/Personalized.mp4"
# 只有图片时使用 preview_image；同时设置时优先展示视频。
preview_image: "/images/publications/ICARM/ICARM2023.jpg"
# 如有独立项目主页或代码仓库，可添加：
# projecturl: "https://your-project.github.io/"
# codeurl: "https://github.com/your-account/your-project"
```

首页会自动展示标题、期刊或会议、年份、摘要、图片或视频及相关链接。视频由访客点击播放，不自动下载整段视频。

## 仓库怎么分

个人主页、论文说明、小图片和适量压缩视频可以放在同一个主页仓库，不需要数据库。每个研究项目的代码可以放到独立仓库，再用 `codeurl` 链接。独立项目网站是可选的，也可以直接使用现有论文详情页。大型视频、数据集、模型权重适合放到专门的托管服务，再从主页引用。

## 本地实时预览

双击项目里的 `preview.cmd`，等窗口显示服务启动后，打开 http://127.0.0.1:4000/ 。保持启动窗口打开，保存 Markdown、样式或图片后，Jekyll 会重新生成网页，浏览器自动刷新。按 Ctrl+C 停止。

修改 `_config.yml` 后需要重启预览。端口被占用时先关闭之前的预览进程，不要重复启动。

本机 Ruby 位于 `local/rubyinstaller-3.3.12-1-x64/`，依赖位于 `local/gems/`，不会提交到 GitHub。换电脑后需要重新准备 Ruby 和安装 Gemfile 依赖；启动脚本使用上述本地路径。

`_config.local.yml` 只覆盖本地网址，确保导航仍在本地打开。线上配置统一使用 `HaoZhangRobotics`，网址为 https://HaoZhangRobotics.github.io 。本地预览不需要提交或推送 GitHub。

执行 `powershell -ExecutionPolicy Bypass -File .\preview.ps1 -Build` 可检查生产配置下的网站构建，结果写入 `local/build-check/`，不会覆盖正在运行的本地预览。
