REM PlayStation 2
REM pcsx2 save and settings backup

set userHomePath="%1"
set oneDriveHomePath="%2"

set pcsxBiosSource="%userHomePath%"AppData\Local\pcsx2-v1.7.5243\bios
set pcsxInisSource="%userHomePath%"AppData\Local\pcsx2-v1.7.5243\inis
set pcsxInputProfilesSource="%userHomePath%"AppData\Local\pcsx2-v1.7.5243\inputprofiles
set pcsxMemcardsSource="%userHomePath%"AppData\Local\pcsx2-v1.7.5243\memcards
set pcsxPortableSource="%userHomePath%"AppData\Local\pcsx2-v1.7.5243\portable.ini
set pcsxQtSource="%userHomePath%"AppData\Local\pcsx2-v1.7.5243\qt.conf

set pcsxBiosTarget="%oneDriveHomePath%"games\pcsx2\bios
set pcsxInisTarget="%oneDriveHomePath%"games\pcsx2\inis
set pcsxInputProfilesTarget="%oneDriveHomePath%"games\pcsx2\inputprofiles
set pcsxMemcardsTarget="%oneDriveHomePath%"games\pcsx2\memcards
set pcsxDataTarget="%oneDriveHomePath%"games\pcsx2

xcopy /s /e "%pcsxBiosSource%" "%pcsxBiosTarget%" /Y
xcopy /s /e "%pcsxInisSource%" "%pcsxInisTarget%" /Y
xcopy /s /e "%pcsxInputProfilesSource%" "%pcsxInputProfilesTarget%" /Y
xcopy /s /e "%pcsxMemcardsSource%" "%pcsxMemcardsTarget%" /Y
xcopy "%pcsxPortableSource%" "%pcsxDataTarget%" /Y
xcopy "%pcsxQtSource%" "%pcsxDataTarget%" /Y
