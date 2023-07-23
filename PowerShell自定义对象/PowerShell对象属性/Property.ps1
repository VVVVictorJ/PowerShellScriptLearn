# 创建对象
$obj = New-Object System.Diagnostics.Process
$obj | Get-Member|Where-Object MemberType -eq property

Get-Process|Get-Member

(Get-Process -name notepad).Name

(Get-Process -name notepad).Handle