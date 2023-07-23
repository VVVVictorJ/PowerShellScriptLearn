$obj=New-Object psobject
$obj|Add-Member -MemberType ScriptProperty -Value {(get-date).ToString("yyyy-MM-dd hh:mm:ss")} -Name "访问时间"
$obj|Get-Member
$obj."访问时间"

$fileitem=Get-Item E:\pic\4K\luqiya.jpg
$caltime={((get-date)-[datetime]$this.creationtime).days}
$fileitem|Add-Member -MemberType ScriptProperty -Value $caltime -Name "创建时间"
$fileitem|Format-List *
