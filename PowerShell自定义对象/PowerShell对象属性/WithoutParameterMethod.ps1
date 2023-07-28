$computer=New-Object psobject;
$computer|Add-member -MemberType NoteProperty -Name name -Value "localhost";
# 不返回相关操作
# $computer|Add-Member -MemberType ScriptMethod -Name "Ping" -Value {Test-Connection -ComputerName $this.name -Quiet -Count 1} -Force;
# 返回相关操作
$computer|Add-Member -MemberType ScriptMethod -Name "Ping" -Value {Test-Connection -ComputerName $this.name -Count 4} -Force;
$computer.name = 'www.baidu.com';
$computer.Ping()