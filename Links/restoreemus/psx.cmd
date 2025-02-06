REM PlayStation
REM Duckstation save and settings backup

set userHomePath="%1"
set oneDriveHomePath="%2"

set duckstationDataSource="%oneDriveHomePath%"games\duckstation
set duckstationDataTarget="%userHomePath%"Documents\DuckStation

xcopy /s /e "%duckstationDataSource%" "%duckstationDataTarget%" /Y
