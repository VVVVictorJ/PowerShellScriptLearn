$obj=New-Object psobject
$obj|Add-Member -MemberType NoteProperty -Name ParaA -Value 1
$obj|Add-Member -MemberType NoteProperty -Name ParaB -Value 3
$obj|Add-Member -MemberType ScriptMethod -Name calculate {return $this.ParaA+$this.ParaB}
$obj|Get-Member|Select-String -Pattern "calculate"
$obj|Format-List -Property *
$obj.calculate()