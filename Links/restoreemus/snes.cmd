REM Super Nintendo
REM snes9x save and settings backup

set userHomePath=C:\Users\ogoes\
set oneDriveHomePath="%userHomePath%"OneDrive\

set snesSource="%oneDriveHomePath%"games\snes9x
set snesTarget="%userHomePath%"AppData\Local\snes9x-1.60

xcopy "%snesSource%" "%snesTarget%" /Y
