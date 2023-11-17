$i=1
while ($i -le 10) {
    if ($i %4 -eq 0) {
        break
    }
    Write-Host $i
    $i++
}

