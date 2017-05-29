$registryPath = "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers"
$type = "String"
$value = "DisableNXShowUI"
$name1 = "D:\JDA\Intactix\Space Automation\autopilot.exe"
$name2 = "D:\JDA\Intactix\Intactix Knowledge Base\ProfusionConsole.exe"
$name3 = "D:\JDA\Intactix\Intactix Knowledge Base\ProfusionBuilder.exe"
$name4 = "D:\JDA\Intactix\Intactix Knowledge Base\ProfusionCheck.exe"
$name5 = "D:\JDA\Intactix\Intactix Knowledge Base\IxP3Upload.exe"
$name6 = "D:\JDA\Intactix\Floor Planning\ProFloor.exe"
$name7 = "D:\JDA\Intactix\Space Planning\ProSpace.exe"
$name8 = "D:\JDA\Intactix\Intactix Knowledge Base\profusion.exe"
$nameArray = $name1,$name2,$name3,$name4,$name5,$name6,$name7,$name8


ForEach ($name in $nameArray) {New-ItemProperty -Path $registryPath -Name $name -PropertyType $type -Value $value }