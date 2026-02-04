# 部署到 GitHub Pages 指南

## 前提条件

当前slides.md文件存在HTML结构错误,需要先修复才能成功构建和部署:

### 需要修复的错误:

1. **HTML标签未闭合** - 多处 `<div>` 标签缺少对应的 `</div>`
2. **图片文件缺失** - 以下图片引用但不存在:
   - `/figs/rl.png`
   - `/figs/PPOvsDPO.png` (可能文件名大小写问题)
   - `/figs/GRPO.png` 或 `/figs/grpo.png`
3. **LaTeX公式中的特殊字符** - 公式中的 `<` 符号在HTML中被误解析

## 部署步骤

### 1. 修复文件错误

先运行本地构建测试:

```powershell
$env:PATH = "D:\download\node-v24.11.1-win-x64;$env:PATH"
cd D:\teaching\llm_short_course
D:\download\node-v24.11.1-win-x64\npm.cmd run build
```

### 2. 初始化Git仓库(如果还没有)

```powershell
git init
git add .
git commit -m "Initial commit"
```

### 3. 创建GitHub仓库

1. 登录GitHub
2. 创建新仓库(例如: `llm-slides`)
3. **不要**初始化README、.gitignore或license

### 4. 连接远程仓库

```powershell
git remote add origin https://github.com/YOUR_USERNAME/llm-slides.git
git branch -M main
git push -u origin main
```

### 5. 配置GitHub Pages

1. 进入仓库的 **Settings** → **Pages**
2. 在 **Source** 下选择:
   - Source: `GitHub Actions`

### 6. 推送更改触发部署

当您推送代码到main分支时,GitHub Actions会自动构建和部署:

```powershell
git add .
git commit -m "Update slides"
git push
```

### 7. 访问您的网站

部署完成后,访问:
```
https://YOUR_USERNAME.github.io/llm-slides/
```

## 本地测试

在推送之前,建议本地测试:

```powershell
# 开发服务器
$env:PATH = "D:\download\node-v24.11.1-win-x64;$env:PATH"
D:\download\node-v24.11.1-win-x64\npm.cmd run dev

# 构建测试
D:\download\node-v24.11.1-win-x64\npm.cmd run build
```

## GitHub Actions工作流

已创建 `.github/workflows/deploy.yml` 文件,会在每次推送到main分支时自动:

1. 安装依赖
2. 构建Slidev项目
3. 部署到GitHub Pages

## 故障排除

### 构建失败

如果GitHub Actions构建失败:

1. 检查Actions标签页查看错误日志
2. 确保所有HTML标签正确闭合
3. 确保所有引用的图片文件存在
4. 本地运行 `npm run build` 测试

### 页面404

如果部署后显示404:

1. 检查Settings → Pages是否启用
2. 等待几分钟让部署生效
3. 确保Source设置为"GitHub Actions"

## 文件结构

```
llm_short_course/
├── .github/
│   └── workflows/
│       └── deploy.yml    # GitHub Actions配置
├── figs/                  # 图片资源
├── node_modules/          # 依赖(git忽略)
├── slides.md             # 主要演示文稿
├── package.json          # 项目配置
└── .gitignore           # Git忽略文件
```
