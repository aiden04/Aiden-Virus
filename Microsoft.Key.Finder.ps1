Clear-Host
$WinSxS = Get-ChildItem C:\Windows\System32
$i = 1

$WinSxS | ForEach-Object {
    Write-Progress -Activity "Rebuilding Registry File $($_.name)" -Status "File $i of $($WinSxS.Count)" -PercentComplete (($i / $WinSxS.Count) * 100)  
    $i++
}