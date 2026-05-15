# 樱花资源站

一个面向中文用户的二次元风格资源站导航页，收录论文文献、装机系统、驱动工具、开发软件、免费小说、视觉小说、图片素材、PPT 模板、影视番剧、漫画轻小说、AI 工具、学习资料和实用工具等入口。

线上地址：

```text
https://atimekeeper.github.io/aresources/
```

## 功能

- 分类筛选和关键词搜索
- 推荐资源区
- 每个站点配备远程 favicon 图标
- 所有站点点击前弹出简短说明，再确认进入
- 第三方、系统镜像、驱动、成人/争议内容等站点带风险提示
- Live2D 桌宠和固定文字提示
- 纯静态页面，适合 GitHub Pages 免费部署

## 分类

当前主要分类包括：

- 论文搜索
- 文献资料
- 正版下载
- 装机工具
- 系统镜像
- 驱动工具
- 开发软件
- 免费小说
- Galgame / 视觉小说
- 图片素材
- PPT 模板
- 影视番剧
- 漫画轻小说
- AI 工具
- 学习资料
- 实用工具

## 维护方式

站点数据在 `index.html` 的 `sites` 数组中维护。新增站点时复制一条现有数据并修改字段：

```js
{
  name: "网站名称",
  category: "分类名称",
  description: "卡片简介",
  icon: "短文字",
  logo: favicon("example.com"),
  url: "https://example.com/",
  tags: ["中文", "标签"],
  audience: "适合用户",
  risk: "风险或使用提示",
  official: "官方 / 第三方",
  region: "中国 / 全球",
  language: "中文 / 中文友好 / 英文",
  guide: "点击前显示的简短说明",
  confirmBeforeOpen: true,
  featured: false
}
```

`category` 必须存在于 `categories` 数组中。图标默认使用远程 favicon，不保存到仓库；如果远程图标加载失败，页面会显示 `icon` 字段作为 fallback。

## 更新部署

本项目使用 GitHub Pages 和 GitHub Actions 自动部署。修改后执行：

```powershell
git add index.html README.md DEPLOY.md
git commit -m "Update resource directory"
git push
```

推送后等待 GitHub Actions 部署完成，线上页面会自动更新。

## 风险提示

本站是导航页，只整理入口和简短说明，不托管第三方内容。访问第三方网站、下载系统镜像、驱动、装机工具、素材或游戏资源时，请自行确认来源、授权、广告、捆绑安装、年龄分级和文件哈希。重要电脑建议优先使用软件、硬件厂商或平台官方入口。

