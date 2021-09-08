:STARTING
ECHO OFF

CLS
TITLE ANIco.in BoostUp [Initializing...]
ECHO здддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддд©
ECHO                             П ANICO.IN BOOSTUP V1.0 П
ECHO.
ECHO юдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддды
ECHO - An extension to IObit Game Booster 3
ECHO.
ECHO Loaded Successfully.
ECHO.
ECHO ANIco.in BoostUp will terminate processes and stop services depending
ECHO upon the task you want to do with your computer. Please note that it
ECHO does not disable any service neither does it lock any process. Hence,
ECHO it neither harm your computer nor its security. The services and
ECHO processes can be accessed by the user or the computer whenever there
ECHO is a need.
ECHO.

TITLE ANIco.in BoostUp [Closing Running Instances of Game Booster...]
ECHO здддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддд©
ECHO                        PREPARING TO LAUNCH GAME BOOSTER 3
ECHO.
ECHO юдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддды
ECHO Closing any running instance of Game Booster 3 and cleaning the
ECHO information about previous sessions.
TASKKILL /IM GameBooster.exe /F /T > NUL 2> NUL
TASKKILL /IM gbtray.exe /F /T > NUL 2> NUL
DEL "C:\ProgramData\IObit\Game Booster 3\Temp.ini" > NUL 2> NUL
ECHO.
ECHO Operation completed successfully.
ECHO.

TITLE ANIco.in BoostUp [Launching Game Booster...]
ECHO здддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддд©
ECHO                             LAUNCHING GAME BOOSTER 3
ECHO.
ECHO юдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддды
TITLE ANIco.in BoostUp [Waiting for Game Booster...]
ECHO Click on 'Start Boost' in the Game Booster 3 window and wait for the
ECHO action to get completed.
ECHO.
ECHO Close that window to continue . . .
"C:\Program Files\IObit\Game Booster 3\GameBooster.exe"
ECHO.
ECHO Operation completed successfully.
ECHO.

TITLE ANIco.in BoostUp [Closing Game Booster...]
ECHO здддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддд©
ECHO                             CLOSING GAME BOOSTER 3
ECHO.
ECHO юдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддды
ECHO Closing the currently running instance of Game Booster 3.
TASKKILL /IM GameBooster.exe /F /T > NUL 2> NUL
TASKKILL /IM gbtray.exe /F /T > NUL 2> NUL
ECHO.
ECHO Operation completed successfully.
ECHO.

TITLE ANIco.in BoostUp [Changing Power Plan to ANIco.in Extreme...]
ECHO здддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддд©
ECHO                   SWITCHING TO 'ANICO.IN EXTREME' POWER PLAN
ECHO.
ECHO юдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддды
ECHO The system power plan is changing to 'ANIco.in Extreme' so that
ECHO your system get maximum performance when plugged in and maximum
ECHO battery life when running on battery.
ECHO.
powercfg -setactive 6bfdd08a-ff0d-4a98-8a8b-3d82871b2fc7
ECHO Operation completed successfully.
ECHO.

TITLE ANIco.in BoostUp [Waiting for user input...]
ECHO здддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддд©
ECHO                   WHAT DO YOU WANT TO DO WITH YOUR COMPUTER?
ECHO.
ECHO юдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддды
ECHO 1 - General computing like web browsing etc.
ECHO 2 - Launch online game like NFS World.
ECHO 3 - Launch offline game like GTA San Andreas.
ECHO.
ECHO Select your choice. ANIco.in BoostUp will automatically select 1
ECHO if no choice is made in 10 seconds.
CHOICE /C 123 /N /T 10 /D 1
ECHO.
ECHO The choice has been made.
ECHO.
IF ERRORLEVEL 3 GOTO ME3
IF ERRORLEVEL 2 GOTO ME2
IF ERRORLEVEL 1 GOTO ME1

:ME1
SET MYVAR=1
GOTO END1
:ME2
SET MYVAR=2
GOTO END1
:ME3
SET MYVAR=3
TITLE ANIco.in BoostUp [Disconnecting Internet...]
ECHO здддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддд©
ECHO                 DISCONNECTING YOUR COMPUTER FROM THE INTERNET
ECHO.
ECHO юдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддды
ECHO Internet connection getting disconnected being redundant.
RASDIAL /DISCONNECT > NUL 2> NUL
ECHO.
ECHO Operation completed successfully.
ECHO.

TITLE ANIco.in BoostUp [Turning off unnecessary system services... 0 per cent done]
ECHO здддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддд©
ECHO            STOPPING SYSTEM SERVICES THAT ARE NOT REQUIRED FOR GAMING
ECHO.
ECHO юдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддды
ECHO Stopping system services that are not really necessary.
ECHO.
NET STOP MpsSvc /y 2> NUL
NET STOP IDMWFP /y 2> NUL
TITLE ANIco.in BoostUp [Turning off unnecessary system services... 10 per cent done]
NET STOP BFE /y 2> NUL
NET STOP RasMan /y 2> NUL
TITLE ANIco.in BoostUp [Turning off unnecessary system services... 20 per cent done]
NET STOP TapiSrv /y 2> NUL
NET STOP Browser /y 2> NUL
TITLE ANIco.in BoostUp [Turning off unnecessary system services... 30 per cent done]
NET STOP netprofm /y 2> NUL
NET STOP NlaSvc /y 2> NUL
TITLE ANIco.in BoostUp [Turning off unnecessary system services... 40 per cent done]
NET STOP sppsvc /y 2> NUL
NET STOP LanmanWorkstation /y 2> NUL
TITLE ANIco.in BoostUp [Turning off unnecessary system services... 50 per cent done]
NET STOP Dnscache /y 2> NUL
NET STOP Dhcp /y 2> NUL
TITLE ANIco.in BoostUp [Turning off unnecessary system services... 57.5 per cent done]
NET STOP CryptSvc /y 2> NUL
NET STOP SstpSvc /y 2> NUL
TITLE ANIco.in BoostUp [Turning off unnecessary system services... 65 per cent done]
NET STOP Netman /y 2> NUL
NET STOP nsi /y 2> NUL
TITLE ANIco.in BoostUp [Turning off unnecessary system services... 72.5 per cent done]
NET STOP SENS /y 2> NUL
NET STOP ProfSvc /y 2> NUL
TITLE ANIco.in BoostUp [Turning off unnecessary system services... 80 per cent done]
NET STOP LanmanServer /y 2> NUL
NET STOP Wlansvc /y 2> NUL
TITLE ANIco.in BoostUp [Turning off unnecessary system services... 87.5 per cent done]
NET STOP EapHost /y 2> NUL
NET STOP ProtectedStorage /y 2> NUL
TITLE ANIco.in BoostUp [Turning off unnecessary system services... 95 per cent done]
NET STOP KeyIso /y 2> NUL
NET STOP PnkBstrA /y 2> NUL
ECHO Operation completed successfully.
ECHO.

TITLE ANIco.in BoostUp [Turning off Microsoft Security Essentials...]
ECHO здддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддд©
ECHO                        TURNING OFF ANTI-VIRUS PROTECTION
ECHO.
ECHO юдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддды
ECHO Terminating Microsoft Security Essentials' processes and stopping
ECHO its services due to redundancy.
NET STOP NisSrv /y >NUL 2> NUL
NET STOP MsMpSvc /y > NUL 2> NUL
TASKKILL /IM NisSrv.exe /F /T > NUL 2> NUL
TASKKILL /IM MsMpEng.exe /F /T > NUL 2> NUL
TASKKILL /IM msseces.exe /F /T > NUL 2> NUL
ECHO.
ECHO Operation completed successfully.
ECHO.
GOTO END2

:END1
TITLE ANIco.in BoostUp [Connecting to the internet...]
ECHO здддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддд©
ECHO                    CONNECTING YOUR COMPUTER TO THE INTERNET
ECHO.
ECHO юдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддды
ECHO Connect your computer to the internet to enable web browsing.
RASDIAL "ZTE Wireless Terminal" "1412005227@AAAND.IN" "1412005227" > NUL 2> NUL
ECHO.
ECHO Operation completed successfully.
ECHO.

TITLE ANIco.in BoostUp [Turning on Microsoft Security Essentials...]
ECHO здддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддд©
ECHO                  TURNING ON AND UPDATING ANTI-VIRUS PROTECTION
ECHO.
ECHO юдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддды
ECHO Starting Microsoft Security Essentials' processes and its services.
NET START NisSrv >NUL 2> NUL
NET START MsMpSvc > NUL 2> NUL
CD C:\Program Files\Microsoft Security Client\Antimalware
C:
START NisSrv.exe
START MsMpEng.exe
CD C:\Program Files\Microsoft Security Client
C:
START msseces.exe -hide -update -runkey
ECHO.
ECHO Operation completed successfully.
ECHO.

:END2
TITLE ANIco.in BoostUp [Deleting Temporary Files...]
ECHO здддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддд©
ECHO                           CLEANING THE TEMP DIRECTORY
ECHO.
ECHO юдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддды
ECHO Cleaning the Temporary directory to free up disk space.
ECHO.
RMDIR "C:\Users\Ajay Raghav\AppData\Local\Temp" /q /s > NUL 2> NUL
MKDIR "C:\Users\Ajay Raghav\AppData\Local\Temp" > NUL 2> NUL
ECHO Operation completed successfully.
ECHO.

TITLE ANIco.in BoostUp [Removing Additional Devices...]
ECHO здддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддд©
ECHO                        SAFELY REMOVE ADDITIONAL DEVICES
ECHO.
ECHO юдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддды
ECHO If a certain device is not in use, then you can safely remove that
ECHO device from your computer. It share some amount of power supply
ECHO and hence contributes in slowing down your system and draining
ECHO its battery quickly. Remove any devices from the opened window.
ECHO.
ECHO Close that window to continue . . .
RunDll32.exe shell32.dll,Control_RunDLL HotPlug.dll
ECHO.
ECHO Operation completed successfully.
ECHO.

TITLE ANIco.in BoostUp [Stopping unnecessary services and processes...]
ECHO здддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддд©
ECHO                  TERMINATING UNNECESSARY PROCESSES AND SERVICES
ECHO.
ECHO юдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддды
ECHO ANIco.in BoostUp is performing its last few steps.
ECHO.
NET STOP BITS /y 2> NUL
NET STOP AdvancedSystemCareService /y 2> NUL
NET STOP wuauserv /y 2> NUL
NET STOP Themes /y 2> NUL
NET STOP AeLookupSvc /y 2> NUL
NET STOP wscsvc /y 2> NUL
NET STOP FontCache /y 2> NUL
NET STOP lmhosts /y 2> NUL
NET STOP osppsvc /y 2> NUL
TASKKILL /IM igfxsrvc.exe /F /T > NUL 2> NUL
TASKKILL /IM ASC.exe /F /T > NUL 2> NUL
TASKKILL /IM ASCTray.exe /F /T > NUL 2> NUL
TASKKILL /IM rundll32.exe /F /T > NUL 2> NUL
TASKKILL /IM OSPPSVC.EXE /F /T > NUL 2> NUL
NET STOP EventSystem /y 2> NUL
NET STOP Winmgmt /y 2> NUL
ECHO Operation completed successfully.
ECHO.

TITLE ANIco.in BoostUp [Performance Boosted...]

IF "%MYVAR%"=="1" GOTO RUNEXP
ECHO здддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддд©
ECHO                        SELECT THE GAME YOU WANT TO PLAY
ECHO.
ECHO юдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддды
ECHO 0 - [UTILITY] Task Manager
ECHO A - Ashes Cricket 2009
ECHO B - Chess Titans
ECHO C - Chessmaster Grandmaster Edition
ECHO D - Delta Force Extreme 2
ECHO E - Diablo II Lord of Destruction
ECHO F - EA Cricket 2009
ECHO G - Fate The Cursed King
ECHO H - GTA San Andreas
ECHO I - Mahjong Titans
ECHO J - Minesweeper
ECHO K - Need For Speed Most Wanted
ECHO L - Need For Speed Undercover
ECHO M - Need For Speed World [ONLINE]
ECHO N - Project IGI 2 Covert Strike
ECHO O - Purble Place
ECHO P - Solitaire
ECHO Q - Spider Solitaire
ECHO R - Zuma Deluxe
ECHO S - [PROG] Advanced SystemCare
ECHO T - [PROG] Explorer
ECHO U - [PROG] Internet Download Manager [ONLINE]
ECHO V - [PROG] Internet Explorer
ECHO W - [PROG] MS Powerpoint
ECHO X - [PROG] Smart Defrag
ECHO Y - [PROG] uTorrent [ONLINE]
ECHO Z - [PROG] Windows Media Player
ECHO 1 - [PROG] Re-Run ANIco.in BoostUp
ECHO.
ECHO Select your choice. ANIco.in BoostUp will automatically select 0
ECHO if no choice is made in 10 seconds.
CHOICE /C 0ABCDEFGHIJKLMNOPQRSTUVWXYZ1 /N /T 10 /D 0
ECHO.
ECHO The choice has been made.
ECHO.

IF ERRORLEVEL 28 GOTO G28
IF ERRORLEVEL 27 GOTO G27
IF ERRORLEVEL 26 GOTO G26
IF ERRORLEVEL 25 GOTO G25
IF ERRORLEVEL 24 GOTO G24
IF ERRORLEVEL 23 GOTO G23
IF ERRORLEVEL 22 GOTO G22
IF ERRORLEVEL 21 GOTO G21
IF ERRORLEVEL 20 GOTO G20
IF ERRORLEVEL 19 GOTO G19
IF ERRORLEVEL 18 GOTO G18
IF ERRORLEVEL 17 GOTO G17
IF ERRORLEVEL 16 GOTO G16
IF ERRORLEVEL 15 GOTO G15
IF ERRORLEVEL 14 GOTO G14
IF ERRORLEVEL 13 GOTO G13
IF ERRORLEVEL 12 GOTO G12
IF ERRORLEVEL 11 GOTO G11
IF ERRORLEVEL 10 GOTO G10
IF ERRORLEVEL 9 GOTO G9
IF ERRORLEVEL 8 GOTO G8
IF ERRORLEVEL 7 GOTO G7
IF ERRORLEVEL 6 GOTO G6
IF ERRORLEVEL 5 GOTO G5
IF ERRORLEVEL 4 GOTO G4
IF ERRORLEVEL 3 GOTO G3
IF ERRORLEVEL 2 GOTO G2
IF ERRORLEVEL 1 GOTO G1

:G1
START /HIGH taskmgr.exe
GOTO FINALIZE

:G2
CD D:\Games\Ashes Cricket 2009
D:
START /HIGH Cricket2009.exe
GOTO FINALIZE

:G3
CD C:\Program Files\Microsoft Games\Chess
C:
START /HIGH Chess.exe
GOTO FINALIZE

:G4
CD D:\Games\Chessmaster Grandmaster Edition
D:
START /HIGH game.exe
GOTO FINALIZE

:G5
CD D:\Games\Delta Force Xtreme 2
D:
START /HIGH dfx2.exe
GOTO FINALIZE

:G6
CD D:\Games\Diablo II Lord of Destruction
D:
START /HIGH Game.exe
GOTO FINALIZE

:G7
CD D:\Games\EA Cricket 2009
D:
START /HIGH Cricket09.exe
GOTO FINALIZE

:G8
CD D:\Games\FATE The Cursed King
D:
START /HIGH fate.exe
GOTO FINALIZE

:G9
CD D:\Games\GTA San Andreas
D:
START /HIGH gta_sa.exe
GOTO FINALIZE

:G10
CD C:\Program Files\Microsoft Games\Mahjong
C:
START /HIGH Mahjong.exe
GOTO FINALIZE

:G11
CD C:\Program Files\Microsoft Games\Minesweeper
C:
START /HIGH Minesweeper.exe
GOTO FINALIZE

:G12
CD D:\Games\Need for Speed Most Wanted
D:
START /HIGH speed.exe
GOTO FINALIZE

:G13
CD D:\Games\Need For Speed Undercover
D:
START /HIGH nfs.exe
GOTO FINALIZE

:G14
CD D:\Games\Need For Speed World
D:
START /HIGH GameLauncher.exe
GOTO FINALIZE

:G15
CD D:\Games\Project IGI 2 Covert Strike\pc
D:
START /HIGH igi2.exe
GOTO FINALIZE

:G16
CD C:\Program Files\Microsoft Games\Purble Place
C:
START /HIGH PurblePlace.exe
GOTO FINALIZE

:G17
CD C:\Program Files\Microsoft Games\Solitaire
C:
START /HIGH Solitaire.exe
GOTO FINALIZE

:G18
CD C:\Program Files\Microsoft Games\SpiderSolitaire
C:
START /HIGH SpiderSolitaire.exe
GOTO FINALIZE

:G19
CD D:\Games\Zuma Deluxe
D:
START /HIGH zuma.exe
GOTO FINALIZE

:G20
CD C:\Program Files\IObit\Advanced SystemCare 4
C:
START /HIGH ASC.exe
GOTO FINALIZE

:G21
START /HIGH explorer.exe
GOTO FINALIZE

:G22
CD C:\Program Files\Internet Download Manager
C:
START /HIGH IDMan.exe
GOTO FINALIZE

:G23
CD C:\Program Files\Internet Explorer
C:
START /HIGH iexplore.exe
GOTO FINALIZE

:G24
CD C:\Program Files\Microsoft Office\Office14
C:
START /HIGH POWERPNT.exe
GOTO FINALIZE

:G25
CD C:\Program Files\IObit\Smart Defrag 2
C:
START /HIGH SmartDefrag.exe
GOTO FINALIZE

:G26
CD C:\Program Files\uTorrent
C:
START /HIGH uTorrent.exe
GOTO FINALIZE

:G27
CD C:\Program Files\Windows Media Player
C:
START /HIGH wmplayer.exe
GOTO FINALIZE

:G28
GOTO STARTING

:RUNEXP
ECHO здддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддд©
ECHO                  LAUNCHING WINDOWS EXPLORER WITH HIGH PRIORITY
ECHO.
ECHO юдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддды
ECHO Launching windows explorer so that you can do basic tasks.
ECHO.
START /HIGH explorer.exe
ECHO Operation completed successfully.
ECHO.

:FINALIZE
ECHO здддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддд©
ECHO                   NOW, YOUR COMPUTER WILL PERFORM MUCH BETTER
ECHO.
ECHO юдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддды
ECHO Type EXIT to close this window.