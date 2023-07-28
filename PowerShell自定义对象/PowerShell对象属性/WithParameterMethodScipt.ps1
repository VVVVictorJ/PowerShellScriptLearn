$number=New-Object psobject;
$number|Add-member -MemberType ScriptMethod calculate {Param([int]$A, [int]$B) return $A+$B};
$number.calculate(1,2);