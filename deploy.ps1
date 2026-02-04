# 快速部署脚本

# 设置Node.js路径
$env:PATH = "D:\download\node-v24.11.1-win-x64;$env:PATH"

Write-Host "=== GitHub Pages 部署脚本 ===" -ForegroundColor Green
Write-Host ""

# 检查是否已经初始化Git
if (-not (Test-Path ".git")) {
    Write-Host "初始化 Git 仓库..." -ForegroundColor Yellow
    git init
    git add .
    git commit -m "Initial commit: LLM Slides"
    Write-Host "Git 仓库初始化完成" -ForegroundColor Green
    Write-Host ""
    Write-Host "请按以下步骤继续:" -ForegroundColor Cyan
    Write-Host "1. 在 GitHub 创建新仓库 (例如: llm-slides)" -ForegroundColor White
    Write-Host "2. 运行以下命令连接远程仓库:" -ForegroundColor White
    Write-Host "   git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git" -ForegroundColor Yellow
    Write-Host "   git branch -M main" -ForegroundColor Yellow
    Write-Host "   git push -u origin main" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "3. 在 GitHub 仓库设置中:" -ForegroundColor White
    Write-Host "   Settings -> Pages -> Source 选择 'GitHub Actions'" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "之后每次更新只需运行此脚本即可自动部署!" -ForegroundColor Green
} else {
    # 检查是否有未提交的更改
    $status = git status --porcelain
    if ($status) {
        Write-Host "检测到文件更改,准备提交..." -ForegroundColor Yellow
        git add .
        
        # 获取提交消息
        $message = Read-Host "请输入提交消息 (直接回车使用默认消息)"
        if ([string]::IsNullOrWhiteSpace($message)) {
            $message = "Update slides - $(Get-Date -Format 'yyyy-MM-dd HH:mm')"
        }
        
        git commit -m $message
        Write-Host "更改已提交" -ForegroundColor Green
    } else {
        Write-Host "没有检测到新的更改" -ForegroundColor Yellow
    }
    
    Write-Host "推送到 GitHub..." -ForegroundColor Yellow
    git push
    
    Write-Host ""
    Write-Host "=== 部署完成! ===" -ForegroundColor Green
    Write-Host "GitHub Actions 将自动构建并部署您的网站" -ForegroundColor Cyan
    Write-Host "请访问 GitHub 仓库的 Actions 标签查看部署进度" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "部署完成后,您的网站将在:" -ForegroundColor White
    Write-Host "https://YOUR_USERNAME.github.io/YOUR_REPO/" -ForegroundColor Yellow
}
