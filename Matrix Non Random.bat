@echo off
color 02
SET MYVAR1=%RANDOM%
SET MYVAR2=%RANDOM%
SET MYVAR3=%RANDOM%
SET MYVAR4=%RANDOM%
SET MYVAR5=%RANDOM%
SET MYVAR6=%RANDOM%
SET MYVAR7=%RANDOM%
SET MYVAR8=%RANDOM%
SET MYVAR9=%RANDOM%
SET MYVAR10=%RANDOM%

:start
SET /A MYVAR1=%MYVAR1% + 1
SET /A MYVAR2=%MYVAR2% + 1
SET /A MYVAR3=%MYVAR3% + 1
SET /A MYVAR4=%MYVAR4% + 1
SET /A MYVAR5=%MYVAR5% + 1
SET /A MYVAR6=%MYVAR6% + 1
SET /A MYVAR7=%MYVAR7% + 1
SET /A MYVAR8=%MYVAR8% + 1
SET /A MYVAR9=%MYVAR9% + 1
SET /A MYVAR10=%MYVAR10% + 1
echo %MYVAR1% %MYVAR2% %MYVAR3% %MYVAR4% %MYVAR5% %MYVAR6% %MYVAR7% %MYVAR8% %MYVAR9% %MYVAR10%
goto start