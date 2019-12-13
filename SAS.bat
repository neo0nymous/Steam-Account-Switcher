ECHO OFF
setlocal enabledelayedexpansion

set currentuser=null
set currentpassword=null
:: ---------------------------------------------------------------------------------------------------------

SET steampath="C:\Program Files (x86)\Steam\Steam.exe"

:: ---------------------------------------------------------------------------------------------------------

SET acc_username[1]=
SET acc_password[1]=

SET acc_username[2]=
SET acc_password[2]=

SET acc_username[3]=
SET acc_password[3]=

SET acc_username[4]=
SET acc_password[4]=

SET acc_username[5]=
SET acc_password[5]=

SET acc_username[6]=
SET acc_password[6]=

SET acc_username[7]=
SET acc_password[7]=

SET acc_username[8]=
SET acc_password[8]=

SET acc_username[9]=
SET acc_password[9]=

SET acc_username[10]=
SET acc_password[10]=

SET acc_username[11]=
SET acc_password[11]=

SET acc_username[12]=
SET acc_password[12]=

SET acc_username[13]=
SET acc_password[13]=

SET acc_username[14]=
SET acc_password[14]=

SET acc_username[15]=
SET acc_password[15]=

SET accounts=15
:: ^^^^CHANGE THIS TO THE NUMBER OF ACCOUNTS YOU HAVE LISTED^^^^

:: ---------------------------------------------------------------------------------------------------------
CLS
:MENU
ECHO.
ECHO ...............................................
ECHO Steam Account Switcher
ECHO ...............................................
ECHO		_
ECHO Willkommen %username%
ECHO		_		
ECHO.

for /l %%n in (1,1,%accounts%) do (
	ECHO %%n  -  !acc_username[%%n]!
)
ECHO.
SET /P M=Um dich in einen bestimmten Account einzuloggen gebe die davorstehende Nummer ein und bestaetige dies dann mit Enter: 


for /l %%n in (1, 1, %M%) do (
   set currentuser=!acc_username[%%n]!
   set currentpassword=!acc_password[%%n]!
)
goto login

:login
ECHO.
ECHO Beende Steam.exe
taskkill /f /im steam.exe
ECHO Warte 3 Sekunden auf Neustart von Steam.
timeout /t 3 /nobreak
ECHO Starting Steam as %currentuser%
start "" %steampath% -login %currentuser% %currentpassword%
exit