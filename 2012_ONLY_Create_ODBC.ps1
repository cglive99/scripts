#https://technet.microsoft.com/en-us/library/hh771022(v=wps.620).aspx
$driver = "Oracle in XE"
$dsn = "System"
$name1 = "Distrib4"
$name2 = "Distrib_his"
#$name3 = 
#$name4 = 
#$name5 = 
#$name6 = 
#$name7 = 
#$name8 = 
$nameArray = $name1,$name2


ForEach ($name in $nameArray) {Add-OdbcDsn $name -DriverName $driver -DsnType $dsn -SetPropertyValue @("TNS_Service_Name=XE")}