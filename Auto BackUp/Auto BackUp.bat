@ECHO OFF
cd "D:\Corporate\ANIco.in\Batch Programming\Auto BackUp" >NUL 2>&1
D: >NUL 2>&1
ECHO Backing up registry...
call bureg G:\Registry HKCR >NUL 2>&1
ECHO	HKEY_CLASSES_ROOT...		done
call bureg G:\Registry HKCU >NUL 2>&1
ECHO	HKEY_CURRENT_USER...		done
call bureg G:\Registry HKLM >NUL 2>&1
ECHO	HKEY_LOCAL_MACHINE...		done
call bureg G:\Registry HKU >NUL 2>&1
ECHO	HKEY_USERS...			done
call bureg G:\Registry HKCC >NUL 2>&1
ECHO	HKEY_CURRENT_CONFIG...		done
ECHO.
ECHO Backing up C drive...
call budir "C:\ProgramData" "G:\Complicated Citadel\ProgramData" >NUL 2>&1
ECHO	ProgramData...			done
call budir "C:\Users\Ajay Raghav" "G:\Complicated Citadel\Users\Ajay Raghav" >NUL 2>&1
ECHO	Users...			done
ECHO.
ECHO Backing up D drive...
call budir D:\Corporate "G:\Divine Devil\Corporate" >NUL 2>&1
ECHO	Corporate...			done
call budir D:\Documents "G:\Divine Devil\Documents" >NUL 2>&1
ECHO	Documents...			done
call budir D:\Pictures "G:\Divine Devil\Pictures" >NUL 2>&1
ECHO	Pictures...			done
call budir D:\Music "G:\Divine Devil\Music" >NUL 2>&1
ECHO	Music...			done
call budir D:\Education "G:\Divine Devil\Education" >NUL 2>&1
ECHO	Education...			done
call budir D:\Software "G:\Divine Devil\Software" >NUL 2>&1
ECHO	Software...			done
call budir D:\Videos "G:\Divine Devil\Videos" >NUL 2>&1
ECHO	Videos...			done
call budir D:\Games "G:\Divine Devil\Games" >NUL 2>&1
ECHO	Games...			done
call budir D:\Downloads "G:\Divine Devil\Downloads" >NUL 2>&1
ECHO	Downloads...			done
ECHO.
ECHO Backup completed
PAUSE