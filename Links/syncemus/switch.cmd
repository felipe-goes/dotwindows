REM Nintendo Switch
REM Yuzu save backup

set userHomePath="%1"
set oneDriveHomePath="%2"

set yuzuSaveSource="%userHomePath%"AppData\Local\yuzu\user\nand\user\save
set yuzuSaveTarget="%oneDriveHomePath%"games\yuzu\user\nand\user\save
REM Ryujinx save backup
set ryujinxSource="%userHomePath%"AppData\Roaming\Ryujinx\bis\user\save
set ryujinxTarget="%oneDriveHomePath%"games\ryujinx\bis\user\save

xcopy /s /e "%yuzuSaveSource%" "%yuzuSaveTarget%" /Y
xcopy /s /e "%ryujinxSource%" "%ryujinxTarget%" /Y
