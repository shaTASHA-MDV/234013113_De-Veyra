@echo off
REM Open websites
start "" "http://www.google.com"
start "" "http://www.ck12.org"
start "" "http://www.bing.com"
start "" "http://www.wikihow.com"
start "" "http://www.netacad.com"

REM Launch calculator and notepad
start calc
start notepad

REM Wait for 60 seconds before shutdown
timeout /t 60 /nobreak

REM Initiate system shutdown
shutdown /s /f /t 0

exit
