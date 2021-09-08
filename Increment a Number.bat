@ECHO OFF
SET ABC=1
SET /a ABC = %ABC% + 1
ECHO Number is %ABC%
PAUSE
CALL "%~dp0Increment a Number.bat"