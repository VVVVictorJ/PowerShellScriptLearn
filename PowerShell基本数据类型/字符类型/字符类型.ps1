$a='a'
$a|get-member
# Write-Output $a.GetHashCode()
[char]$b='b'
$b|get-member
# 定义字符变量后无法强制转换成字符串变量
# $b="avcs"

# 定义char型后，字符数据将不能高于两个字节，也就是65536
# $b=65560
# Write-Output $b

