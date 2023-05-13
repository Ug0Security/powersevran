For($i=0;$i -lt 254 ;$i++) 
{
   $truc = "192.168." + $i.ToString() + ".11"
   
   $arg = $truc + " -n 1"
   
   $maximumRuntimeSeconds = 1
 
       $process = Start-Process -FilePath C:\Windows\System32\ping.exe -ArgumentList $arg -PassThru -RedirectStandardOutput c:\list_ping.txt  -NoNewWindow
 
    try 
        {
        $process | Wait-Process -Timeout $maximumRuntimeSeconds -ErrorAction Stop 
        }
    catch 
        {
        $process | Stop-Process -Force 
        } 
        Get-Content c:\list_ping.txt
}



