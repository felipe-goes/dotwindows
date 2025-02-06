REM PlayStation Portable
REM PPSSPP save and settings backup

set userHomePath="%1"
set oneDriveHomePath="%2"

set ppssppDataSource="%userHomePath%"Documents\PPSSPP
set ppssppDataTarget="%oneDriveHomePath%"games\ppsspp

xcopy /s /e "%ppssppDataSource%" "%ppssppDataTarget%" /Y


