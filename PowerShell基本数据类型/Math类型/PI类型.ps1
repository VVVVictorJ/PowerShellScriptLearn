[float]$round=Read-Host "请输入半径"
$square=[math]::PI*$round*$round
Write-Host "圆的面积为$square"