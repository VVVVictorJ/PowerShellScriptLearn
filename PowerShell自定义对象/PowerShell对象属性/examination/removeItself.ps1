$fileitem=get-item E:\code\PowerShell\1.txt
# Write-Output $fileitem.FullName
$fileitem|Add-Member -MemberType ScriptMethod -Name deleteItself -Value {
    Write-Output "delete itself"
    Remove-Item -Path $this.FullName
}
$fileitem|Format-List -Property deleteItself -Force
$fileitem.deleteItself()