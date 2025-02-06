REM Game Boy & Gamge Boy Color & Game Boy Advance
REM mGBA save and settings backup

set userHomePath="%1"
set oneDriveHomePath="%2"
set gamesPath="%3"

set gbSaveSource="%oneDriveHomePath%"games\mGBA\gb
set gbcSaveSource="%oneDriveHomePath%"games\mGBA\gbc
set gbaSaveSource="%oneDriveHomePath%"games\mGBA\gba

set gbSaveTarget="%gamesPath%"gb
set gbcSaveTarget="%gamesPath%"gbc
set gbaSaveTarget="%gamesPath%"gba

xcopy "%gbSaveSource%" "%gbSaveTarget%" /Y
xcopy "%gbcSaveSource%" "%gbcSaveTarget%" /Y
xcopy "%gbaSource%" "%gbaTarget%" /Y
