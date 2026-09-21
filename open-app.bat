@echo off
setlocal
set "APP_DIR=%~dp0"
set "URL=http://localhost:8000/lotus-qa-lab.html"
set "CHROME=C:\Program Files\Google\Chrome\Application\chrome.exe"

start "Lotus QA Lab Server" /min cmd.exe /d /c "cd /d ""%APP_DIR%"" && python -m http.server 8000"
timeout /t 1 /nobreak >nul

if exist "%CHROME%" (
  start "" "%CHROME%" "%URL%"
  exit /b 0
)

start "" "%URL%"
