REM PlayStation Portable
REM PPSSPP save and settings backup

set userHomePath="%1"
set oneDriveHomePath="%2"

set ppssppDataSource="%oneDriveHomePath%"games\ppsspp
set ppssppDataTarget="%userHomePath%"Documents\PPSSPP

xcopy /s /e "%ppssppDataSource%" "%ppssppDataTarget%" /Y
