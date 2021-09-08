@ECHO OFF
cd "D:\Corporate\ANIco.in\Batch Programming\Auto BackUp" >NUL 2>&1
D: >NUL 2>&1
ECHO Backing up registry...
call bureg F:\Registry HKCR >NUL 2>&1
ECHO	HKEY_CLASSES_ROOT...		done
call bureg F:\Registry HKCU >NUL 2>&1
ECHO	HKEY_CURRENT_USER...		done
call bureg F:\Registry HKLM >NUL 2>&1
ECHO	HKEY_LOCAL_MACHINE...		done
call bureg F:\Registry HKU >NUL 2>&1
ECHO	HKEY_USERS...			done
call bureg F:\Registry HKCC >NUL 2>&1
ECHO	HKEY_CURRENT_CONFIG...		done
ECHO.
ECHO Backing up C drive...
call budir "C:\ProgramData" "F:\Complicated Citadel\ProgramData" >NUL 2>&1
ECHO	ProgramData...			done
call budir "C:\Users\ajayr" "F:\Complicated Citadel\Users\ajayr" >NUL 2>&1
ECHO	Users...			done
ECHO.
ECHO Backup completed
PAUSE