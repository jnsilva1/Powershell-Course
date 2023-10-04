Get-Process a* | Get-Member

#Filtering a process based on its name 
get-process a* | Where-Object -Property "ProcessName" -eq "ApplicationFrameHost" 

#Opening Notepad
notepad

Start-Sleep -Seconds 1

#Getting notepad process and closing it
Get-Process | Where-Object {$_.Name -eq "notepad"} | Stop-Process


#killing a process using its object method 'kill'
Write-Output "#killing a process using its object method 'kill'"
notepad

Start-Sleep -Seconds 1

(Get-Process | Where-Object {$_.Name -eq "notepad"}).Kill()

# filtering a process after a sort
notepad
notepad

Get-Process | Sort-Object -Property Name | Where-Object {$_.Name -eq "notepad"}

Write-Output "------------------------------"

Get-Process -Name notepad | Sort-Object -Property Id


# NORMAL COMMANDS CAN BE USED WITH POWERSHELL
ipconfig | Select-String -Pattern 255

#USING VARIABLES
$var1 = "World"

Write-Output $var1

$procs = Get-Process

$procs

$procs[0] | Get-Member

Clear-Variable var1
Clear-Variable procs