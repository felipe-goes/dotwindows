REM Mastersystem & Mega Drive
REM ares save and settings backup

set userHomePath="%1"
set oneDriveHomePath="%2"
set gamesPath="%3"

set mastersystemSaveSource="%oneDriveHomePath%"games\ares\mastersystem
set megadriveSaveSource="%oneDriveHomePath%"games\ares\megadrive
set aresSettingsSource="%oneDriveHomePath%"games\ares

set mastersystemSaveTarget="%gamesPath%"mastersystem
set megadriveSaveTarget="%gamesPath%"megadrive
set aresSettingsTarget="%userHomePath%"AppData\Local\ares-v134\settings.bml

xcopy "%mastersystemSaveSource%" "%mastersystemSaveTarget%" /Y
xcopy "%megadriveSaveSource%" "%megadriveSaveTarget%" /Y
xcopy "%aresSettingsSource%" "%aresSettingsTarget%" /Y
