@echo off
color 02
SET MYVAR1=%RANDOM%

:start
SET /A MYVAR1=%MYVAR1% + 1
echo %MYVAR1%
goto start