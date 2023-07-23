(Get-ChildItem).Length
(Get-ChildItem).Count

#添加别名属性
$obj = New-Object System.Diagnostics.Process
$obj|Add-Member -MemberType AliasProperty -Name "MachineName" -Value "电脑"
$obj|Get-Member

#为PowerShell对象添加别名属性
$fileitem=Get-Item E:\code\powershell\PowerShell自定义对象\PowerShell对象\1.txt
# 将length 添加为fileSize的别名属性
$fileitem|Add-Member -MemberType AliasProperty -Name fileSize -Value length 
$fileitem.fileSize
$fileitem.length
