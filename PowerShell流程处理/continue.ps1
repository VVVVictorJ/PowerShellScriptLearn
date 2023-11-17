$i = 1
while ($i -le 15) {
    if ($i % 7 -eq 0) {
        $i++
        continue 
    }
    Write-Host $i
    $i++
}