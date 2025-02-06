# Kill XOutput
$xOutputId = (Get-Process | Where-Object ProcessName -like XOutput).id
if ($xOutputId) { Stop-Process -id $xOutputId }

# Open DualSenseX
$dualSenseId = (Get-Process | Where-Object ProcessName -like DualSenseX).id
if (-Not $dualSenseId) { C:\Users\ogoes\AppData\Local\DualSenseX\DualSenseX.exe }
