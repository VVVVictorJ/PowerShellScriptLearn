switch (1, 3) {
    1 { Write-Host "It's one"; break }#break语句会跳出switch
    2 { Write-Host "It's two" }
    3 { Write-Host "It's three" }
    Default { "No match" }
}

# -wildcard 开启通配符模式
switch -wildcard ("fourteen") {
    1 { Write-Host "It's one" }
    2 { Write-Host "It's two" }
    3 { Write-Host "It's three" }
    "fo*" { Write-Host "It's fourteen" }
    Default { "No match" }
}

# 正则匹配模式
$target = 'https://bing.com'
switch -Regex ($target) {
    '^ftp\://.*$' { "$_ is ftp address"; break }
    '^\w+@\w+\.com|edu|orgs$' { "$_ is email address"; break }
    '^(http[s]?)\://.*$' { "$_ is web address that uses $($matches[1]) protocol" } # $($matches[1]) 匹配的部分
    Default {}
}

$a=4
switch ($a) {
    ({$_.GetType() -eq [string]}){
        Write-Host "输入了字符串"
    }
    ({$_.GetType() -eq [int]}){
        Write-Host "输入了整数"
    }
}