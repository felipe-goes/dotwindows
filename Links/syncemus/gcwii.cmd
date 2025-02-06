REM Gamecube & Wii
REM dolphin save and settings backup

set userHomePath="%1"
set oneDriveHomePath="%2"

set gamecubeSaveSource="%userHomePath%"AppData\Roaming\Dolphin Emulator\GC
set wiiSaveSource="%userHomePath%"AppData\Roaming\Dolphin Emulator\Wii
set dolphinSettingsSource="%userHomePath%"AppData\Roaming\Dolphin Emulator\Config

set gamecubeSaveTarget="%oneDriveHomePath%"games\dolphin\GC
set wiiSaveTarget="%oneDriveHomePath%"games\dolphin\Wii
set dolphinSettingsTarget="%oneDriveHomePath%"games\dolphin\Config

xcopy /s /e "%gamecubeSaveSource%" "%gamecubeSaveTarget%" /Y
xcopy /s /e "%wiiSaveSource%" "%wiiSaveTarget%" /Y
xcopy /s /e "%dolphinSettingsSource%" "%dolphinSettingsTarget%" /Y
