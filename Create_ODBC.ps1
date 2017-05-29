$registryPath = "HKEY_LOCAL_MACHINE\SOFTWARE\ODBC\ODBC.INI\ODBC Data Sources"
$registryFile1 = "E:\fittools\PCData_stuff\Powershell scripts\Add_Distrib4_ODBC.reg"
$registryFile2 = "E:\fittools\PCData_stuff\Powershell scripts\Add_Distrib_his_ODBC.reg"
$type = "String"
$value = "Oracle in XE"
$name1 = "Distrib4"
$name2 = "Distrib_his"
$nameArray = $name1,$name2

regedit /s $registryFile1, $registryFile2
Set-Location HKLM:
ForEach ($name in $nameArray) {New-ItemProperty -Path $registryPath -Name $name -PropertyType $type -Value $value }