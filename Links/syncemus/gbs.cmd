REM Game Boy & Gamge Boy Color & Game Boy Advance
REM mGBA save and settings backup

set userHomePath="%1"
set oneDriveHomePath="%2"
set gamesPath="%3"

set gbSaveSource="%gamesPath%"gb\*.sav
set gbcSaveSource="%gamesPath%"gbc\*.sav
set gbaSaveSource="%gamesPath%"gba\*.sav

set gbSaveTarget="%oneDriveHomePath%"games\mGBA\gb
set gbcSaveTarget="%oneDriveHomePath%"games\mGBA\gbc
set gbaSaveTarget="%oneDriveHomePath%"games\mGBA\gba

xcopy "%gbSaveSource%" "%gbSaveTarget%" /Y
xcopy "%gbcSaveSource%" "%gbcSaveTarget%" /Y
xcopy "%gbaSource%" "%gbaTarget%" /Y
