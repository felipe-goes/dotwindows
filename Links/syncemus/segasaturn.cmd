REM Sega Saturn
REM yabause save and settings backup

set userHomePath="%1"
set oneDriveHomePath="%2"

set yabauseDataSource="%userHomePath%"AppData\Local\yabause
set yabauseDataTarget="%oneDriveHomePath%"games\yabause

xcopy /s /e "%yabauseDataSource%" "%yabauseDataTarget%" /Y
