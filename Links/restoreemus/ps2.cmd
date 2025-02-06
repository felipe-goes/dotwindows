REM PlayStation 2
REM pcsx2 save and settings backup

set userHomePath="%1"
set oneDriveHomePath="%2"

set pcsxSource="%oneDriveHomePath%"games\pcsx2
set pcsxTarget="%userHomePath%"AppData\Local\pcsx2-v1.7.5243

xcopy /s /e "%pcsxSource%" "%pcsxTarget%" /Y
