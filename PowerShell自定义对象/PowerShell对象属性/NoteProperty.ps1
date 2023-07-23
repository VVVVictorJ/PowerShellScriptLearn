# 创建当前属性的静态计算能力，帮助他们计算出对象的某一个特定的属性值，静态属性一旦设定就不会变更。
$obj=New-Object psobject
$obj|Add-Member -MemberType NoteProperty -Value (get-date).ToString("yyyy-MM-dd hh:mm:ss") -Name "创建时间具体"
$obj|Get-Member

$fileitem=Get-Item 'E:\code\powershell\PowerShell自定义对象\PowerShell对象\1.txt'
$creator=[System.IO.FileSystemAclExtensions]::GetAccessControl([System.IO.FileInfo]::new( "E:\code\powershell\PowerShell自定义对象\PowerShell对象\1.txt")).Owner
$Fileitem|Add-Member -MemberType NoteProperty -name "创建人" -Value $creator
$fileitem|Format-List *
$Fileitem|Remove-Member -MemberType NoteProperty -Name "创建人"

# 过滤需要的属性
$obj = New-Object -TypeName PsObject -Property @{ Test = 1}
$obj | Add-Member -MemberType NoteProperty -Name Foo -Value Bar
$new_obj = $obj | Select-Object -Property Test
$new_obj|Format-List *


$Computer=New-Object psobject
$Computer|Add-Member -MemberType NoteProperty -Name name -Value "localhost"
$Computer|Add-Member -MemberType ScriptMethod -Name "Ping" -Value {Test-Connection -ComputerName $this.name -Count 1 -Quiet} -Force
$Computer.name = 'www.baidu.com'
$Computer.Ping()