REM Nintendo 64
REM project64 save and settings backup

set userHomePath="%1"
set oneDriveHomePath="%2"

set projectSaveSource=C:\Program Files (x86)\Project64 3.0\Save\
set projectSettingsSource=C:\Program Files (x86)\Project64 3.0\Config

set projectSaveTarget="%oneDriveHomePath%"games\project64\Save
set projectSettingsTarget="%oneDriveHomePath%"games\project64\Config

xcopy /s /e "%projectSaveSource%" "%projectSaveTarget%" /Y
xcopy /s /e "%projectSettingsSource%" "%projectSettingsTarget%" /Y
