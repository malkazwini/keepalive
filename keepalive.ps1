while(1){
 $time = Get-Date
 $wsh = New-Object-ComObject WScript.Shell
 $WebResponse = Invoke-WebRequest "https://google.com"
 $wsh.SendKeys('+{F15}')
 $Pos = [System.Windows.Forms.Cursor]::Position
 $x = ($pos.X % 500) +1
 $y = ($pos.Y % 500) +1
 [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x,$y)
 if ($time.Hour -eq 17)
 { 
  break
 }
 Start-Sleep -seconds 120
}
