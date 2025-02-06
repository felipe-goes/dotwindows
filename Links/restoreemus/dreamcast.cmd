REM Dreamcast
REM flycast save and settings backup

set userHomePath="%1"
set oneDriveHomePath="%2"

set flycastSource="%oneDriveHomePath%"games\flycast
set flycastSaveTarget="%userHomePath%"AppData\Local\flycast-2.2

xcopy /s /e "%flycastSource%" "%flycastTarget%" /Y
