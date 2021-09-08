:: Created by: Shawn Brink
:: http://www.sevenforums.com
:: Tutorial:  http://www.sevenforums.com/tutorials/212923-taskbar-backup-restore-pinned-items-windows-7-a.html


mkdir "%userprofile%\Desktop\Taskbar-Pinned-Items-Backup\TaskBar"

copy /y "%AppData%\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar" "%userprofile%\Desktop\Taskbar-Pinned-Items-Backup\TaskBar"

REG EXPORT HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband %userprofile%\Desktop\Taskbar-Pinned-Items-Backup\Taskbar-Pinned-Items-Backup.reg /y

PAUSE