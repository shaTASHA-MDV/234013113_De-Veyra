@echo off
rem select and execute Windows utilities.

:menu
echo Select a utility:
echo 1. ipconfig
echo 2. tasklist/taskkill
echo 3. chkdsk
echo 4. format
echo 5. defrag
echo 6. find
echo 7. attrib
choice /c 1234567 /m "Choose an option:"

if errorlevel 7 goto attrib
if errorlevel 6 goto find
if errorlevel 5 goto defrag
if errorlevel 4 goto format
if errorlevel 3 goto chkdsk
if errorlevel 2 goto task
if errorlevel 1 goto ipconfig

:ipconfig
ipconfig
if errorlevel 1 echo Command failed.

:task
echo 1. Tasklist
echo 2. Taskkill
choice /c 12 /m "Choose an option:"

if errorlevel 2 goto taskkill
if errorlevel 1 goto tasklist

:tasklist
tasklist
if errorlevel 1 echo Command failed.

:taskkill
set /p pid=Enter the PID to kill:
taskkill /PID %pid%
if errorlevel 1 echo Command failed.

:chkdsk
set /p drive=Enter the drive letter (e.g., C:):
chkdsk %drive%
if errorlevel 1 echo Command failed.

:format
set /p drive=Enter the drive letter to format (e.g., D:):
echo Warning: Formatting will erase all data on %drive%
choice /c yn /m "Do you want to continue? (y/n)"
if errorlevel 2 goto end
if errorlevel 1 format %drive%
if errorlevel 1 echo Command failed.

:defrag
set /p drive=Enter the drive letter to defrag (e.g., C:):
defrag %drive%
if errorlevel 1 echo Command failed.

:find
set /p string=Enter the string to find:
set /p file=Enter the file to search in:
find "%string%" %file%
if errorlevel 1 echo Command failed.

:attrib
set /p file=Enter the file to modify attributes:
set /p attr=Enter the attributes (e.g., +r, -h):
attrib %attr% %file%
if errorlevel 1 echo Command failed.
