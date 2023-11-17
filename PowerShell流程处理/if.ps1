$a=Read-Host
if ($a -eq "X") {
    write-host "输入了X"
}elseif ($a -eq "Y") {
    Write-Host "输入了Y"
}else {
    Write-Host "输入了其他"
}