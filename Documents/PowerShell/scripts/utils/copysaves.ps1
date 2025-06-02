function copysaves {
  param (
    [Parameter(Mandatory)]
    [String]$onedriveSaves,
    [Parameter(Mandatory)]
    [String]$onedriveStates,
    [Parameter(Mandatory)]
    [String]$coreSaves,
    [Parameter(Mandatory)]
    [String]$coreStates
  )

  if ($sync -eq 0) { # Upload
    $coreSaves = "$coreSaves\*"
    $coreStates = "$coreStates\*"

    Copy-Item -Recurse -Force "$coreSaves" "$onedriveSaves"
    Copy-Item -Recurse -Force "$coreStates" "$onedriveStates"
  } elseif ($sync -eq 1) { # Download
    $onedriveSaves = "$onedriveSaves\*"
    $onedriveStates = "$onedriveStates\*"

    Copy-Item -Recurse -Force "$onedriveSaves" "$coreSaves"
    Copy-Item -Recurse -Force "$onedriveStates" "$coreStates"
  }
}
