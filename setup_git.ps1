# setup_git.ps1

Write-Host "Initializing Git Repository..." -ForegroundColor Cyan
git init

Write-Host "Adding files..." -ForegroundColor Cyan
git add .

Write-Host "Committing files..." -ForegroundColor Cyan
git commit -m "Initial commit: Portfolio website setup"

Write-Host "--------------------------------------------------------" -ForegroundColor Green
Write-Host "Repository initialized locally." -ForegroundColor Green
Write-Host "To push to GitHub:"
Write-Host "1. Create a new repository on GitHub (e.g., 'portfolio')."
Write-Host "2. Run: git remote add origin https://github.com/YOUR_USERNAME/portfolio.git"
Write-Host "3. Run: git branch -M main"
Write-Host "4. Run: git push -u origin main"
Write-Host "--------------------------------------------------------" -ForegroundColor Green
