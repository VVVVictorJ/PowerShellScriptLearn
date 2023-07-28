$fileitem=Get-Item E:\code\PowerShell\PowerShellScriptLearn\README.md
$calculation={((Get-Date)-($this.CreationTime)).TotalDays}
$fileitem |Add-Member -MemberType ScriptProperty -Name Period -Value $calculation
$fileitem|Format-List -Property Period -Force