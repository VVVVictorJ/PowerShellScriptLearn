$i = 1
Do{
    if ($i % 4 -eq 0) {
        break
    }
    write-host $i
    $i++
}
while($i -lt 10)