@ECHO OFF
REM http://t.co/S4ENnhFE for twitter
REM http://www.youtube.com/watch?v=qeET-0ZGrrY for youtube
REM http://tinyurl.com/ajay-raghav-msp for facebook
REM http://www.youtube.com/watch?v=qeET-0ZGrrY&feature=plcp for youtube channel

GOTO STARTUP

:RECON
REM START /MIN /REALTIME TASKKILL /IM rasdial.exe > NUL
REM CHOICE /C 1 /N /T 2 /D 1 > NUL
ECHO Reconnecting the internet to get a new IP...
ECHO.
RASDIAL /DISCONNECT > NUL
START /MIN /REALTIME RASDIAL "Unreliable Assembly" "1412005227@AAAND.IN" "1412005227"
CHOICE /C 1 /N /T 5 /D 1 > NUL
FOR /F "tokens=1 delims=" %%A in ('ipconfig ^| find "IPv4"') do SET IPadd=%%A
IF "%IPadd%" == "" GOTO CONERR

:YTVHACK
SET IPadd=%IPadd:   IPv4 Address. . . . . . . . . . . : =%
IF "%IPadd%" == "%oldIP%" GOTO SAMEIP
ECHO New IP Address: %IPadd%
ECHO.
ECHO Launching YouTube URL...
ECHO.
START  /REALTIME http://t.co/S4ENnhFE
ECHO Waiting for the page to load and register its view count...
ECHO.
CHOICE /C 1 /N /T 30 /D 1 > NUL
ECHO Killing Internet Explorer...
ECHO.
START /MIN /REALTIME TASKKILL /IM iexplore.exe > NUL
SET /a YTVcount = %YTVcount% + 1
TITLE Youtube Views Hack - Increased by %YTVcount%
FOR /F "tokens=1 delims=" %%A in ('ipconfig ^| find "IPv4"') do SET oldIP=%%A
SET oldIP=%oldIP:   IPv4 Address. . . . . . . . . . . : =%
ECHO.
ECHO.
GOTO RECON

:CONERR
ECHO Connection not found. Retrying...
ECHO.
CHOICE /C 1 /N /T 5 /D 1 > NUL
FOR /F "tokens=1 delims=" %%A in ('ipconfig ^| find "IPv4"') do SET IPadd=%%A
IF "%IPadd%" == "" GOTO RECON
GOTO YTVHACK

:SAMEIP
ECHO You might not be having a dynamic IP capable connection. System has got same IP address as previous. Retrying...
ECHO.
GOTO RECON

:STARTUP
TITLE YouTube Views Hack
ECHO 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
ECHO                        YouTube Views Hack by Ajay Raghav
ECHO.
ECHO 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
ECHO *It works only with connections having dynamic IP capabilities...
ECHO.
ECHO.
SET YTVcount = 0
SET IPadd = 0
SET oldIP = 0
GOTO RECON