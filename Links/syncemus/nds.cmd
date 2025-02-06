REM Nintendo DS
REM melonDS save and settings backup

set userHomePath="%1"
set oneDriveHomePath="%2"

set melonDSDataSource="%userHomePath%"AppData\Local\Microsoft\WinGet\Packages\melonDS.melonDS_Microsoft.Winget.Source_8wekyb3d8bbwe
set melonDSDataTarget="%oneDriveHomePath%"games\melonDS

xcopy /s /e /exclude:syncemus/excludelist.txt "%melonDSDataSource%" "%melonDSDataTarget%" /Y
