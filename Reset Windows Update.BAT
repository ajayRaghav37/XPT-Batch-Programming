@ECHO OFF

ECHO Stopping 'Background Intelligent Transfer Service' and 'Windows Update'
net stop bits > NUL
net stop wuauserv > NUL

ECHO Deleting Windows Update History
Del "%ALLUSERSPROFILE%\Application Data\Microsoft\Network\Downloader\qmgr*.dat" > NUL

ECHO AGGRESSIVE MODE
Ren %systemroot%\SoftwareDistribution\DataStore *.bak > NUL
Ren %systemroot%\SoftwareDistribution\Download *.bak > NUL
Ren %systemroot%\system32\catroot2 *.bak > NUL
sc.exe sdset bits D:(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCLCSWLOCRRC;;;AU)(A;;CCLCSWRPWPDTLOCRRC;;;PU) > NUL
sc.exe sdset wuauserv D:(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCLCSWLOCRRC;;;AU)(A;;CCLCSWRPWPDTLOCRRC;;;PU) > NUL

ECHO Re-Registering Windows Update Components
cd /d %windir%\system32 > NUL
regsvr32.exe atl.dll > NUL
regsvr32.exe urlmon.dll > NUL
regsvr32.exe mshtml.dll > NUL
regsvr32.exe shdocvw.dll > NUL
regsvr32.exe browseui.dll > NUL
regsvr32.exe jscript.dll > NUL
regsvr32.exe vbscript.dll > NUL
regsvr32.exe scrrun.dll > NUL
regsvr32.exe msxml.dll > NUL
regsvr32.exe msxml3.dll > NUL
regsvr32.exe msxml6.dll > NUL
regsvr32.exe actxprxy.dll > NUL
regsvr32.exe softpub.dll > NUL
regsvr32.exe wintrust.dll > NUL
regsvr32.exe dssenh.dll > NUL
regsvr32.exe rsaenh.dll > NUL
regsvr32.exe gpkcsp.dll > NUL
regsvr32.exe sccbase.dll > NUL
regsvr32.exe slbcsp.dll > NUL
regsvr32.exe cryptdlg.dll > NUL
regsvr32.exe oleaut32.dll > NUL
regsvr32.exe ole32.dll > NUL
regsvr32.exe shell32.dll > NUL
regsvr32.exe initpki.dll > NUL
regsvr32.exe wuapi.dll > NUL
regsvr32.exe wuaueng.dll > NUL
regsvr32.exe wuaueng1.dll > NUL
regsvr32.exe wucltui.dll > NUL
regsvr32.exe wups.dll > NUL
regsvr32.exe wups2.dll > NUL
regsvr32.exe wuweb.dll > NUL
regsvr32.exe qmgr.dll > NUL
regsvr32.exe qmgrprxy.dll > NUL
regsvr32.exe wucltux.dll > NUL
regsvr32.exe muweb.dll > NUL
regsvr32.exe wuwebv.dll > NUL
netsh reset winsock > NUL

REM ECHO Windows XP or Windows Server 2003
REM proxycfg.exe -d > NUL
netsh winhttp reset proxy > NUL

ECHO Starting 'Background Intelligent Transfer Service' and 'Windows Update'
net start bits > NUL
net start wuauserv > NUL

REM ECHO Windows Vista or Windows Server 2008
REM bitsadmin.exe /reset /allusers > NUL

ECHO Windows Update has been reset...
ECHO Press any key to restart the computer...
PAUSE > NUL
shutdown /r > NUL