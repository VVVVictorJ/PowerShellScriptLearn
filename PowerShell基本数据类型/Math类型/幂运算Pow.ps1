[int]$digit=Read-Host "请输入数值"
$Doubleresult=[math]::Pow($digit,3)
$squareresult=[math]::Pow($digit,1/2)
Write-Host $Doubleresult
Write-Host $squareresult