$obj=New-Object psobject;
$obj|Add-Member -MemberType NoteProperty -Value (get-date).ToString("yyyy-MM-dd hh:mm:ss") -Name "创建时间具体";
$obj|Get-Member;