REM Gamecube & Wii
REM dolphin save and settings backup

set userHomePath="%1"
set oneDriveHomePath="%2"

set dolphinSource="%oneDriveHomePath%"games\dolphin
set dolphinTarget="%userHomePath%"AppData\Roaming\Dolphin Emulator

xcopy /s /e "%dolphinSource%" "%dolphinTarget%" /Y
