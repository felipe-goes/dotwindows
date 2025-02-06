# Kill DualSenseX
$dualSenseId = (Get-Process | Where-Object ProcessName -like DualSenseX).id
if ($dualSenseId) { Stop-Process -id $dualSenseId }

# Open XOutput
$xOutputId = (Get-Process | Where-Object ProcessName -like XOutput).id
if (-Not $xOutputId) { C:\Users\ogoes\AppData\Local\XOutput\XOutput.exe }
