:: Created by: Shawn Brink
:: http://www.sevenforums.com
:: Tutorial:  http://www.sevenforums.com/tutorials/212923-taskbar-backup-restore-pinned-items-windows-7-a.html


DEL /F /S /Q /A "%AppData%\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\*"

copy /y "%userprofile%\Desktop\Taskbar-Pinned-Items-Backup\TaskBar" "%AppData%\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar" 

REG DELETE HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband /F

REG IMPORT %userprofile%\Desktop\Taskbar-Pinned-Items-Backup\Taskbar-Pinned-Items-Backup.reg

taskkill /f /im explorer.exe

start explorer.exe