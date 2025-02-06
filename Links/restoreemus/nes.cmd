REM Nintendinho
REM puNES save and settings backup

set userHomePath="%1"
set oneDriveHomePath="%2"

set puNESSource="%oneDriveHomePath%"games\puNES
set puNESTarget="%userHomePath%"AppData\Local\puNES-0.110

xcopy /s /e "%puNESSource%" "%puNESTarget%" /Y
