@echo off
setlocal enabledelayedexpansion

:setWidth
for /l %%i in (1,1,20) do (
    cls
    for /l %%j in (1,1,%%i) do (
        echo !line!
    )
    set "line=!line!#"
    timeout /t 0.1 /nobreak >nul
)

:clearWidth
for /l %%i in (20,-1,1) do (
    cls
    for /l %%j in (1,1,%%i) do (
        echo !line!
    )
    set "line=!line:~0,-1!"
    timeout /t 0.1 /nobreak >nul
)

goto setWidth
