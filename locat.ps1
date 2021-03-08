$Events = Get-EventLog -LogName system
$Events | ForEach-Object -Begin {
    Clear-Host
    $i = 0
    $out = ""
} -Process {
    if($_.message -like "*Windows is now Activated*")
    {
        $out=$out + $_.Message
    }
    $i = $i+1
    Write-Progress -Activity "Activating Windows 10" -Status "Progress:" -PercentComplete ($i/$Events.count*80)
} 
write-host "Failed to activate, corrupted registry files detected"
function pause{ $null = Read-Host 'Please Press Enter to recover corrupted registry files...' }
pause
clear-host

