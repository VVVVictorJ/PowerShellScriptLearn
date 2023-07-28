$process=Get-Process notepad;
$process|Add-Member -MemberType AliasProperty -Name abc -Value ProcessName;
Write-Output $process.ProcessName;
Write-Output $process.abc;
# $process|Get-Member;

$OutputEncoding = [System.Text.Encoding]::UTF8


