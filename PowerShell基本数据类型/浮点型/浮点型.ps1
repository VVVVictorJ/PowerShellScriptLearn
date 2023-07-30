$a=3.1415926
write-output $a
[float]$a=3.1415
write-output $a
[double]$a=3.1415926535
write-output $a
#float 类型超过6位会截断
[float]$a=3.1415926535
write-output $a

<#
输出结果
3.1415926
3.1415
3.1415926535
3.141593
#>