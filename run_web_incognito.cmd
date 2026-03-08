@echo off
cd /d %~dp0
start "" /B python -m http.server 8113
timeout /t 2 >nul
start chrome --incognito http://localhost:8113/index.html
