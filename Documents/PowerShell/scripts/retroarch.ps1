function retroarch{
  param(
    [Parameter(Mandatory)]
    [String]$oneDriveHomePath,
    [Parameter(Mandatory)]
    [Int32]$sync,
    [Parameter(Mandatory)]
    [String]$option
  )

  # Source
  $retroarchPath = "C:\ES-DE\Emulators\RetroArch-Win64"

  $retroArchSaves  = "$retroarchPath\saves"
  $retroArchStates = "$retroarchPath\states"

  # Cores
  $cores        = @{
    "dreamcast" = "Flycast";
    "gb"        = "Gambatte";
    "gbc"       = "Gambatte";
    "gba"       = "mGBA";
    "genesis"   = "Genesis Plus GX";
    "master"    = "Genesis Plus GX";
    "nes"       = "FCEUmm";
    "saturn"    = "Beetle Saturn";
    "snes"      = "Snes9x 2010";
    "snesmsu"   = "Snes9x";
  }
  $systems = @(
    "dreamcast",
    "gb",
    "gbc",
    "gba",
    "genesis",
    "master",
    "nes",
    "saturn",
    "snes",
    "snesmsu"
  )

  if($systems.Contains($option)){
    # Destiny
    $oneDriveSavesPath = "$oneDriveHomePath\games\RetroArch\saves\" + $cores[$option]
    $oneDriveStatesPath = "$oneDriveHomePath\games\RetroArch\states\" + $cores[$option]

    $coreSaves = "$retroArchSaves\" + $cores[$option]
    $coreStates = "$retroArchStates\" + $cores[$option]

    copysaves $oneDriveSavesPath $oneDriveStatesPath $coreSaves $coreStates
  } else {
    foreach ($system in $systems){
      # Destiny
      $oneDriveSavesPath = "$oneDriveHomePath\games\RetroArch\saves\" + $cores[$system]
      $oneDriveStatesPath = "$oneDriveHomePath\games\RetroArch\states\" + $cores[$system]

      $coreSaves = "$retroArchSaves\" + $cores[$system]
      $coreStates = "$retroArchStates\" + $cores[$system]

      copysaves $oneDriveSavesPath $oneDriveStatesPath $coreSaves $coreStates
    }
  }
}
