REM Sega Saturn
REM yabause save and settings backup

set userHomePath="%1"
set oneDriveHomePath="%2"

set yabauseDataSource="%oneDriveHomePath%"games\yabause
set yabauseDataTarget="%userHomePath%"AppData\Local\yabause

xcopy /s /e "%yabauseDataSource%" "%yabauseDataTarget%" /Y
