# TODO: Move pra cá os scripts da pasta Links pra rodar eles pelo Flow Launcher
# Make the script stop if any error occur
$ErrorActionPreference = "Stop"

# Make PowerShell turn off that annoying bell noise
Set-PSReadlineOption -BellStyle None

# Make auto completion behave better
Set-PSReadlineOption -EditMode Emacs

# Aliases
New-Alias rename Rename-Item
New-Alias touch New-Item
New-Alias which Get-Command
New-Alias c cls

$powershelPath = $profile.Replace("\Microsoft.PowerShell_profile.ps1", "")
$scriptsPath = $powershelPath+"\scripts"

$scripts = Get-ChildItem -File $scriptsPath |
  Where-Object Name -like "*ps1" |
  Select-Object Name

foreach ($script in $scripts){
  $scriptName = $script.Name
  . $scriptsPath"\"$scriptName
}

Remove-Variable scripts
Remove-Variable scriptName
