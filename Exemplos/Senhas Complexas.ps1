# Não existe um cmdlet especifico para isso, mas o pessoal do “PowerShell Magazine” explorando uma classe do .Net Framework chamada System.Web.Security.Membership
# notaram que existe uma classe chamada GeneratePassword().

[System.Web.Security.Membership] | Get-Member -MemberType method -Static|
where name -match password

# Foi daí que surgiu esse script que no meu exemplo gera uma senha de 15 caracteres e 3 não alfabéticos.

$Assembly = Add-Type -AssemblyName System.Web
[System.Web.Security.Membership]::GeneratePassword(15,3)
