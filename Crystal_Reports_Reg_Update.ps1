$registryPath = ".\SOFTWARE\Business Objects\Suite 12.0\Crystal Reports\DatabaseOptions"
$registryPath2 = ".\SOFTWARE\Business Objects\Suite 12.0\Crystal Reports\DatabaseOptions\LOV"
$type = "String"
$name1 = "LOV"
$name2 = "MaxRowsetRecords"
$value1 = 50000

Set-Location HKLM:
New-Item -Path $registryPath -Name $name1
New-ItemProperty -Path $registryPath2 -Name $name2 -PropertyType $type -Value $value1