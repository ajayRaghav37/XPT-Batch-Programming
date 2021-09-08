@ECHO OFF
FOR /F "tokens=1 delims=" %%A in ('ipconfig ^| find "IPv4"') do SET IPadd=%%A
SET IPadd=%IPadd:   IPv4 Address. . . . . . . . . . . : =%
REG ADD "HKCU\Software\VB and VBA Program Settings\ANIco.in\Youtube Views Hack" /v "IP" /d "%IPadd%" /f
PAUSE