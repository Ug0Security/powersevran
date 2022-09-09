For($i=0;$i -lt 254 ;$i++) 
{ 
   $truc = "\\192.168.0." + $i.ToString()
   Write-Host $truc
   $arg = "view " + $truc + " /ALL"
   Write-Host "net" $arg
   $maximumRuntimeSeconds = 0.7 
 
       $process = Start-Process -FilePath C:\Windows\System32\net.exe -ArgumentList $arg -PassThru -RedirectStandardOutput c:\ziwit\list_smb.txt  -NoNewWindow
 
    try 
        {
        $process | Wait-Process -Timeout $maximumRuntimeSeconds -ErrorAction Stop 
        }
    catch 
        {
        $process | Stop-Process -Force 
        } 
        Get-Content c:\ziwit\list_smb.txt
}



