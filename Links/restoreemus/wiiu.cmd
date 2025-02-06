REM Wii U
REM Cemu save and settings backup

set userHomePath="%1"
set oneDriveHomePath="%2"

set cemuSource="%oneDriveHomePath%"games\cemu
set cemuTarget="%userHomePath%"AppData\Local\Microsoft\WinGet\Packages\Cemu.Cemu_Microsoft.Winget.Source_8wekyb3d8bbwe\cemu_1.26.2

xcopy /s /e "%cemuSaveSource%" "%cemuSaveTarget%" /Y
