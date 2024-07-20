@echo off

set src_dir=C:\*.txt
set archive_dir=Z:\archive

if not exist %archive_dir% (
    mkdir %archive_dir%
)

rem Find and sort text files by date
for %%f in (%src_dir%) do (
    rem Archive files
    xcopy "%%f" "%archive_dir%" /s /y
    if errorlevel 1 echo Copy failed for %%f
)

rem Sort archived files by size and list them
dir %archive_dir%\*.txt /o-s > sorted_files.txt

rem Display sorted files
type sorted_files.txt

rem Prompt for deletion
choice /c yn /m "Do you want to delete the old, large files? (y/n)"
if errorlevel 2 goto end
if errorlevel 1 (
    for /f "delims=" %%f in (sorted_files.txt) do (
        del "%%f"
        if errorlevel 1 echo Deletion failed for %%f
    )
)
