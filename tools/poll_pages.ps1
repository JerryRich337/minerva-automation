for ($i=1;$i -le 12;$i++) {
  $t = Get-Date -Format o
  $a = (curl.exe -s -o NUL -w "%{http_code}" https://minerva-automation.com)
  $w = (curl.exe -s -o NUL -w "%{http_code}" https://www.minerva-automation.com)
  Write-Output "$t apex:$a www:$w"
  if ($a -eq "200" -and $w -eq "200") { exit 0 }
  Start-Sleep -Seconds 10
}
exit 2
