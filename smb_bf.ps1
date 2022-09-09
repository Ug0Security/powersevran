foreach($line in Get-Content C:\ziwit\user.txt)
{ 
Write-Host $line
#$line = $line.substring(0,1).toupper()+$line.substring(1).tolower()  
#Write-Host $line  
$pass = $line + "2022"
net use \\ad1 /user:saas\$line eliot@2022

}
