# Gerenciamento Remmoto
$a = New-PSSession -ComputerName Localhost
Invoke-Command { $PSSessionConfigurationName }

#Administrador Junior
$adminjunior = Get-Credential contoso\adminjunior
$a = New-PSSession -ComputerName Localhost -Credential $adminjunior


#Endpoint para o adin Junior poder conectar
Register-PSSessionConfiguration -Name JuniorEndpoint -ShowSecurityDescriptorUI -Force

$a = New-PSSession -ComputerName Localhost -ConfigurationName JuniorEndPoint -Credential $adminjunior
Invoke-Command $a { Get-Command }

Invoke-Command $a { Get-Service }

# como resolver ? Com credenciais de adminitrador
Set-PSSessionConfiguration -Name JuniorEndPoint -RunAsCredential contoso\administrator -Force
$a = New-PSSession -ComputerName Localhost -ConfigurationName JuniorEndPoint -Credential $adminjunior
Invoke-Command $a { Get-Service }

Invoke-Command $a { $PSSenderInfo }
Unregister-PSSessionConfiguration -Name JuniorEndPoint -Force





