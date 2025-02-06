REM Nintendo 64
REM project64 save and settings backup

set userHomePath="%1"
set oneDriveHomePath="%2"

set projectSource="%oneDriveHomePath%"games\project64
set projectTarget=C:\Program Files (x86)\Project64 3.0

xcopy /s /e "%projectSource%" "%projectTarget%" /Y
xcopy /s /e "%projectSource%" "%projectTarget%" /Y
