REM Dreamcast
REM flycast save and settings backup

set userHomePath="%1"
set oneDriveHomePath="%2"

set flycastSaveSource="%userHomePath%"AppData\Local\flycast-2.2\data
set flycastSettingsSource="%userHomePath%"AppData\Local\flycast-2.2\emu.cfg

set flycastSaveTarget="%oneDriveHomePath%"games\flycast\data
set flycastSettingsTarget="%oneDriveHomePath%"games\flycast

xcopy /s /e "%flycastSaveSource%" "%flycastSaveTarget%" /Y
xcopy "%flycastSettingsSource%" "%flycastSettingsTarget%" /Y
