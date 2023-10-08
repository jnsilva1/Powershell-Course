Get-Process | Select-Object -Property Name, @{name="procid";expression={$_.Id}}

Write-Output ""
Write-Output "Process that handles are greater than 1000"
Write-Output ""

Get-Process | where-object {$_.Handles -gt 1000}
Write-Output ""
Get-Process | where Handles -gt 1000
Write-Output ""
Write-Output "Handles Sorted"
Write-Output ""
Get-Process | Where-Object Handles -gt 1000 | Sort-Object -Property Handles | Format-Table Name, Handles -AutoSize