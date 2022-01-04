@echo off
goto start


:info
File: CopyData.cmd
Author: Ken Teague
Email: kteague at pobox dot com
Description: Copies data from source to destination.

Change the values of the variables for _source and _dest to fit your needs.
_source is the data you want to copy
_dest is where you want to copy the data to
If the path contains white spaces, ensure you encase it in quotations.
After you modify the variables, you can save this file and double-click on it.
Robocopy will run and pause at the end before closing the window from which it runs.
This allows you to view the results.


:start
set _source="\\asm1\d$\Shares"
set _dest="D:\shares"

set _rc=%SystemRoot%\System32\robocopy.exe

set _hour=%time:~0,2%
if "%_hour:~0,1%" == " " set _hour=0%_hour:~1,1%
set _min=%time:~3,2%
if "%_min:~0,1%" == " " set _min=0%_min:~1,1%
set _sec=%time:~6,2%
if "%_sec:~0,1%" == " " set _sec=0%_sec:~1,1%
set _fsec=%time:~9,2%
set _ds=%date:~-4%-%date:~-10,-8%-%date:~-7,-5%
set _ts=%_hour%.%_min%.%_sec%.%_fsec%
set _log=%_ds%@%_ts%.log


:copy
%_rc% %_source% %_dest% /xo /b /e /copyall /dcopy:DAT /mir /r:1 /w:1 /MT:8 /v /log+:%_log% /tee
echo.
echo.
echo Done!
echo.
pause
