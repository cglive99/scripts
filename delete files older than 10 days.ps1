# Delete all Files in E:\inetpub\logs\Logfiles\FTPSVC2 older than 10 day(s)
$Path = "E:\inetpub\logs\Logfiles\FTPSVC2"
$Daysback = "-10"
 
$CurrentDate = Get-Date
$DatetoDelete = $CurrentDate.AddDays($Daysback)
Get-ChildItem $Path | Where-Object { $_.LastWriteTime -lt $DatetoDelete } | Remove-Item