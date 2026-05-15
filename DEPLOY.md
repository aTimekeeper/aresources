# 樱花资源站部署与维护说明

## 线上地址

当前项目部署在 GitHub Pages：

```text
https://atimekeeper.github.io/aresources/
```

仓库地址：

```text
https://github.com/aTimekeeper/aresources
```

## 更新网站内容

修改 `index.html` 后，在项目目录执行：

```powershell
git status --short
git add index.html DEPLOY.md
git commit -m "Update resource directory"
git push
```

推送后 GitHub Actions 会自动重新部署。通常等待几十秒到几分钟即可刷新线上页面。

## 新增一个网站

在 `index.html` 的 `sites` 数组中复制一条数据，修改这些字段：

- `name`：网站名称
- `category`：分类名称，必须存在于 `categories` 数组
- `description`：卡片简介
- `icon`：图标加载失败时显示的短文字
- `logo`：远程图标地址，推荐 `favicon("example.com")`
- `url`：网站链接
- `tags`：搜索和展示用标签
- `audience`：适合用户
- `risk`：风险或使用提示
- `official`：官方、第三方、社区等
- `region`：中国、全球、日本等
- `language`：中文、中文友好、英文、多语言
- `guide`：点击前弹窗说明，保持简短
- `confirmBeforeOpen`：当前统一设为 `true`

## 图标策略

默认使用远程图标，不把图标下载进仓库：

```js
logo: favicon("code.visualstudio.com")
```

如果图标加载失败，页面会自动显示 `icon` 文字 fallback。

## GitHub Pages 设置

仓库中已包含 `.github/workflows/pages.yml`。GitHub Pages 的 Source 应设置为：

```text
GitHub Actions
```

如果线上页面没有更新：

1. 打开仓库的 `Actions` 页面。
2. 查看 `Deploy static site to GitHub Pages` 是否成功。
3. 如果失败，进入 `Settings -> Pages` 确认 Source 是 `GitHub Actions`。

