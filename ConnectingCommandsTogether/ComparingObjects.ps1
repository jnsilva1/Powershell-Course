notepad

$procs = Get-Process

Get-Process | Where-Object -Property Name -EQ "notepad" | Stop-Process

calc

$proc2 = Get-Process

$comparison = Compare-Object -ReferenceObject $procs -DifferenceObject $proc2 -Property Name

Write-Output $comparison

Start-Sleep -Seconds 2
$proc2 | Where-Object -Property Name -EQ "CalculatorApp" | Stop-Process