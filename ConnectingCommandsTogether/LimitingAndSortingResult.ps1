#Get-Process | Measure-Object 

#Get-Process | Measure-Object WS -Sum -Maximum -Minimum -Average

#Get-Process | Sort-Object WS

#Get-Process | Sort-Object WS -Descending

Get-Process | Sort-Object WS -Descending | Select-Object -First 5

#Get-WinEvent -LogName security -MaxEvents 5

#Invoke-Command -ComputerName desk01, desk02 -ScriptBlock {get-winevent -logname security -maxevents 5}

#Get-NetAdapter

#Get-NetAdapter | Where-Object {$_.Name -like "Ethernet*"} | Enable-NetAdapter