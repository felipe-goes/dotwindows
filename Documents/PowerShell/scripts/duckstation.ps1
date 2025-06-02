function duckstation{
  param(
    [Parameter(Mandatory)]
    [String]$oneDriveHomePath,
    [Parameter(Mandatory)]
    [Int32]$sync
  )

  # Source
  $duckstationPath = "C:\Users\ogoes\Documents\DuckStation"

  $duckstationSaves  = "$duckstationPath\memcards"
  $duckstationStates = "$duckstationPath\savestates"

  # Destiny
  $oneDriveSavesPath = "$oneDriveHomePath\games\duckstation\memcards"
  $oneDriveStatesPath = "$oneDriveHomePath\games\duckstation\savestates"

  copysaves $oneDriveSavesPath $oneDriveStatesPath $duckstationSaves $duckstationStates
}
