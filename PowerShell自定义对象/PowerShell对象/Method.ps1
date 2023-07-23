$notepadProcess=Get-Process -Name notepad
$notepadProcess|Get-Member
$notepadprocess.kill()