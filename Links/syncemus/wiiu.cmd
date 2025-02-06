REM Wii U
REM Cemu save and settings backup

set userHomePath="%1"
set oneDriveHomePath="%2"

set cemuSaveSource="%userHomePath%"AppData\Local\Microsoft\WinGet\Packages\Cemu.Cemu_Microsoft.Winget.Source_8wekyb3d8bbwe\cemu_1.26.2\mlc01\usr\save
set cemuSettingsSource="%userHomePath%"AppData\Local\Microsoft\WinGet\Packages\Cemu.Cemu_Microsoft.Winget.Source_8wekyb3d8bbwe\cemu_1.26.2\settings.xml

set cemuSaveTarget="%oneDriveHomePath%"games\cemu\mlc01\usr\save
set cemuSettingsTarget="%oneDriveHomePath%"games\cemu

xcopy /s /e "%cemuSaveSource%" "%cemuSaveTarget%" /Y
xcopy "%cemuSettingsSource%" "%cemuSettingsTarget%" /Y
