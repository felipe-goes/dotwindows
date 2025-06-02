function systems{
  # System
  $choices = [System.Management.Automation.Host.ChoiceDescription[]]@(
    (
      New-Object System.Management.Automation.Host.ChoiceDescription "&RetroArch",
      "Update RetroArch games"
    ),
    (
      New-Object System.Management.Automation.Host.ChoiceDescription "&psx",
      "Update psx games (DuckStation)"
    )
  )

  # 0 RetroArch - , 1 - psx
  $system = $host.ui.PromptForChoice("Confirmation", "Pick a system", $choices, 0)

  Write-Output $system
}

# Paths
$userHomePath = "C:\Users\ogoes"
$scriptsPath = "$userHomePath\Documents\PowerShell\scripts"
$gamesPath = "E:\games"
$oneDriveHomePath = "$userHomePath\OneDrive"

# Upload or Download
$choices = [System.Management.Automation.Host.ChoiceDescription[]]@(
  (
    New-Object System.Management.Automation.Host.ChoiceDescription "&Upload",
    "Update OneDrive with PC data"
  ),
  (
    New-Object System.Management.Automation.Host.ChoiceDescription "&Download",
    "Update PC with OneDrive data"
  )
)

# 0 - Upload, 1 - Download
$sync = $host.ui.PromptForChoice("Confirmation", "Upload or Download data?", $choices, 0)

# Pic a system
$system = systems
. "$scriptsPath\utils\copysaves.ps1"

switch ($system) {
  0 { # RetroArch
    $retroarchCores = @(
      "all",
      "dreamcast",
      "gb",
      "gbc",
      "gba",
      "genesis",
      "master",
      "nes",
      "saturn",
      "snes",
      "snesmsu1"
    )

    Write-Output "RetroArch systems:"
    foreach ($core in $retroarchCores){
      Write-Output $core
    }

    # Load Scripts
    . "$scriptsPath\retroarch.ps1"
    # Sync
    retroarch $oneDriveHomePath $sync
  }
  1 {
    # Load Scripts
    . "$scriptsPath\duckstation.ps1"
    # Sync
    duckstation $oneDriveHomePath $sync
  }
}

#call C:\Users\ogoes\Links\syncemus\gcwii.cmd "%userHomePath%" "%oneDriveHomePath%"
#call C:\Users\ogoes\Links\syncemus\n64.cmd "%userHomePath%" "%oneDriveHomePath%"
#call C:\Users\ogoes\Links\syncemus\nds.cmd "%userHomePath%" "%oneDriveHomePath%"
#call C:\Users\ogoes\Links\syncemus\ps2.cmd "%userHomePath%" "%oneDriveHomePath%"
#call C:\Users\ogoes\Links\syncemus\psp.cmd "%userHomePath%" "%oneDriveHomePath%"
#call C:\Users\ogoes\Links\syncemus\switch.cmd "%userHomePath%" "%oneDriveHomePath%"
#call C:\Users\ogoes\Links\syncemus\wiiu.cmd "%userHomePath%" "%oneDriveHomePath%"
