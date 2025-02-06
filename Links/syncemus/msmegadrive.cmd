REM Mega Drive & Mastersystem
REM ares save and settings backup

set userHomePath="%1"
set oneDriveHomePath="%2"
set gamesPath="%3"

set mastersystemSaveSource="%gamesPath%"mastersystem\*.sav
set megadriveSaveSource="%gamesPath%"megadrive\*.sav
set aresSettingsSource="%userHomePath%"AppData\Local\ares-v134\settings.bml

set mastersystemSaveTarget="%oneDriveHomePath%"games\ares\mastersystem
set megadriveSaveTarget="%oneDriveHomePath%"games\ares\megadrive
set aresSettingsTarget="%oneDriveHomePath%"games\ares

xcopy "%mastersystemSaveSource%" "%mastersystemSaveTarget%" /Y
xcopy "%megadriveSaveSource%" "%megadriveSaveTarget%" /Y
xcopy "%aresSettingsSource%" "%aresSettingsTarget%" /Y
