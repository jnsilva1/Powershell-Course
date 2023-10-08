Get-Process > process.txt
notepad process.txt

Start-Sleep -Seconds 5
Remove-Item .\process.txt
Get-Process | Where-Object -Property Name -eq "notepad" | Stop-Process

#Using out-file

Get-Process | Out-File process.txt
notepad process.txt

Start-Sleep -Seconds 5
Remove-Item process.txt
Get-Process | Where-Object -Property Name -eq "notepad" | Stop-Process