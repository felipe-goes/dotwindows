REM Nintendo Switch
REM Yuzu save backup

set userHomePath="%1"
set oneDriveHomePath="%2"

set yuzuSaveSource="%oneDriveHomePath%"games\yuzu
set yuzuSaveTarget="%userHomePath%"AppData\Local\yuzu
REM Ryujinx save backup
set ryujinxSource="%oneDriveHomePath%"games\ryujinx
set ryujinxTarget="%userHomePath%"AppData\Roaming\Ryujinx

xcopy /s /e "%yuzuSaveSource%" "%yuzuSaveTarget%" /Y
xcopy /s /e "%ryujinxSource%" "%ryujinxTarget%" /Y
