@echo off
setlocal enabledelayedexpansion

:menu
echo Choose a utility:
echo 1. ipconfig
echo 2. tasklist/taskkill
echo 3. chkdsk
echo 4. format
echo 5. defrag
echo 6. find
echo 7. attrib
set /p choice="Enter your choice (1-7): "

if "%choice%"=="1" (
    ipconfig
) else if "%choice%"=="2" (
    set /p task="Enter task to kill: "
    tasklist
    taskkill /im %task%
) else if "%choice%"=="3" (
    set /p drive="Enter drive letter to check (e.g., C:): "
    chkdsk %drive%
) else if "%choice%"=="4" (
    set /p drive="Enter drive letter to format (e.g., D:): "
    echo Warning: This will erase all data on the drive!
    pause
    format %drive%
) else if "%choice%"=="5" (
    set /p drive="Enter drive letter to defrag (e.g., C:): "
    defrag %drive%
) else if "%choice%"=="6" (
    set /p search="Enter text to find: "
    set /p file="Enter file to search in: "
    find "%search%" %file%
) else if "%choice%"=="7" (
    set /p file="Enter file to change attributes: "
    set /p attributes="Enter attributes (e.g., +r -h): "
    attrib %attributes% %file%
) else (
    echo Invalid choice.
    goto menu
)

pause
endlocal
exit
