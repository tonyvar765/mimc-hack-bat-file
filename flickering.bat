@echo off
:start
cls
echo This is a flickering effect
timeout /t 0.1 /nobreak >nul
cls
timeout /t 0.1 /nobreak >nul
goto start
