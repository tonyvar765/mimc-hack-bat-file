@echo off
setlocal enabledelayedexpansion

set "spaces=                                        "
set "ball=O"
set "position=0"
set "direction=1"

:start
cls
echo %spaces%!%ball%!
set /a "position+=direction"
if %position%==40 set "direction=-1"
if %position%==0 set "direction=1"
timeout /t 0.1 /nobreak >nul
goto start
