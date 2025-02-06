REM Nintendo DS
REM melonDS save and settings backup

set userHomePath="%1"
set oneDriveHomePath="%2"

set melonDSDataSource="%oneDriveHomePath%"games\melonDS
set melonDSDataTarget="%userHomePath%"AppData\Local\Microsoft\WinGet\Packages\melonDS.melonDS_Microsoft.Winget.Source_8wekyb3d8bbwe

xcopy /s /e "%melonDSDataSource%" "%melonDSDataTarget%" /Y
