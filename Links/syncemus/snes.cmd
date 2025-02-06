REM Super Nintendo
REM snes9x save and settings backup

set userHomePath="%1"
set oneDriveHomePath="%2"

set snesSaveSource="%userHomePath%"AppData\Local\snes9x-1.60\Saves
set snesSettingsSource="%userHomePath%"AppData\Local\snes9x-1.60\snes9x.conf

set snesSaveTarget="%oneDriveHomePath%"games\snes9x\Saves
set snesSettingsTarget="%oneDriveHomePath%"games\snes9x

xcopy "%snesSaveSource%" "%snesSaveTarget%" /Y
xcopy "%snesSettingsSource%" "%snesSettingsTarget%" /Y
