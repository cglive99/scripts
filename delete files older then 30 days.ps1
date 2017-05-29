# Delete all Files in D:\Import\PlantsComplete older than 30 day(s)
$Path = "D:\Import\PlantsComplete"
$Daysback = "-30"
 
$CurrentDate = Get-Date
$DatetoDelete = $CurrentDate.AddDays($Daysback)
Get-ChildItem $Path | Where-Object { $_.LastWriteTime -lt $DatetoDelete } | Remove-Item