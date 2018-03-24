$wshell = New-Object -com WScript.Shell
$wshell.Run("Notepad")
$wshell.AppActivate("Notepad")
Start-Sleep 1
$wshell.SendKeys("Interessante!!!")

Start-Sleep 1 
if ($wshell.AppActivate("Calculator")) 
{
"Calculator activated..."
Start-Sleep 1
$wshell.SendKeys("10{+}")
Start-Sleep 1
$wshell.SendKeys("22")
Start-Sleep 1
$wshell.SendKeys("~")
Start-Sleep 1
$wshell.SendKeys("*3")
Start-Sleep 1
$wshell.SendKeys("~")
Start-Sleep 1
$wshell.SendKeys("%{F4}") 
}