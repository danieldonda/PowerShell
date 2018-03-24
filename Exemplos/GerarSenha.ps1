Function Gera-Senha {
$Assembly = Add-Type -AssemblyName System.Web
[System.Web.Security.Membership]::GeneratePassword(15,3)
#[System.Web.Security.Membership]  | Get-Member -MemberType method -Static| where name -match password
}



Function Gera-Senha {
param ($a,$b)
$Assembly = Add-Type -AssemblyName System.Web
[System.Web.Security.Membership]::GeneratePassword($a,$b)
#[System.Web.Security.Membership]  | Get-Member -MemberType method -Static| where name -match password
}
