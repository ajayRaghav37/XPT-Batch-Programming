@ECHO OFF
SET ATTEMPT=0
:TRYTO
SET /A ATTEMPT = %ATTEMPT% + 1
ECHO Attempt %ATTEMPT% made at %TIME%
RASDIAL "Unreliable Assembly" "1412005227@AAAND.IN" "1412005227" > NUL
IF ERRORLEVEL 628 GOTO TRYTO
IF ERRORLEVEL 691 GOTO TRYTO
ECHO Finally connected at %TIME%
REM "D:\Corporate\ANIco.in\Visual Basic Projects\Security Schema\Security Schema.exe"
"D:\Music\Favorites\English\Owl City - Good Time.mp3"
PAUSE