REM Nintendinho
REM puNES save and settings backup

set userHomePath="%1"
set oneDriveHomePath="%2"

set puNESBiosSource="%userHomePath%"AppData\Local\puNES-0.110\bios
set puNESSaveSource="%userHomePath%"AppData\Local\puNES-0.110\save
set puNESSettingsSource="%userHomePath%"AppData\Local\puNES-0.110\*.cfg

set puNESBiosTarget="%oneDriveHomePath%"games\puNES\bios
set puNESSaveTarget="%oneDriveHomePath%"games\puNES\save
set puNESSettingsTarget="%oneDriveHomePath%"games\puNES

xcopy /s /e "%puNESBiosSource%" "%puNESBiosTarget%" /Y
xcopy /s /e "%puNESSaveSource%" "%puNESSaveTarget%" /Y
xcopy "%puNESSettingsSource%" "%puNESSettingsTarget%" /Y
