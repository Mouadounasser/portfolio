# start_server.ps1
Write-Host "Starting local portfolio server..." -ForegroundColor Cyan
Write-Host "Press Ctrl+C to stop the server." -ForegroundColor Yellow
Write-Host "Opening http://localhost:8000 in your browser..." -ForegroundColor Green

Start-Process "http://localhost:8000"
python -m http.server 8000
