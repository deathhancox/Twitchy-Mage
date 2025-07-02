@echo off
color 0a
title Twitchy Rituals
goto start

:start
cls
set "choice="
echo --- Magical Menu ---
echo.
echo 1. Summon Twitchy Mage
echo 2. Modify Targets
echo 3. Exit
set /p "choice=> "
if "%choice%" == "1" goto summonMage
if "%choice%" == "2" goto modifyTargets
if "%choice%" == "3" goto leave
if /i "%choice%" == "exit" goto leave
goto leave

:modifyTargets
cls
if exist config.json (
    code config.json
) else (
    copy example_config.json config.json
    code config.json
)
goto leave

:summonMage
cls
title Twitchy Mage
py ./main.py
goto leave

:leave
cls
echo Exiting program...
timeout 3 > NUL
exit