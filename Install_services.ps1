$name1 = "DistribNetService"
$name2 = "DistribScheduler"
$name3 = "pcdWatch"
$name4 = "Connect Direct v4.6.00"
$nameArray = $name1,$name2,$name3, $name4

D:\pcdata\Bin\Netservice\Netservice.exe /I
D:\pcdata\Bin\pcdWatch\pcdWatch.exe /I
D:\pcdata\Bin\Scheduler\SchedulingService.exe /I

Start-Sleep -s 5

ForEach ($name in $nameArray) {sc.exe failure $name reset= 0 actions= restart/60000/restart/60000/noaction/0}