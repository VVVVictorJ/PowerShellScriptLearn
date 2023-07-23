$object=New-Object object
$object|Get-Member
# New-Object -TypeName Syetem.Diagnostics.Process
Add-Type -AssemblyName System.Windows.Forms
$screen=[System.Windows.Forms.Screen]::AllScreens
$screen|Get-Member