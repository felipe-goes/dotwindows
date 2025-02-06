REM PlayStation
REM Duckstation save and settings backup

set userHomePath="%1"
set oneDriveHomePath="%2"

set duckstationDataSource="%userHomePath%"Documents\DuckStation
set duckstationDataTarget="%oneDriveHomePath%"games\duckstation

xcopy /s /e "%duckstationDataSource%" "%duckstationDataTarget%" /Y
