$procs = Get-Process | Where-Object Handles -gt 1000

$procs

#Get-Process | Out-GridView 

Get-Process | Out-GridView -PassThru | Stop-Process

Get-Process w* | clip