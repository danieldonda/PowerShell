# Hello Word em Workflow
workflow tipo-comando
 { 
    "Olá do meu WorkFlow"
 }


Get-Command tipo-comando
Get-Command tipo-comando -Syntax
(Get-Command tipo-comando).Parameters.Count
(Get-Command tipo-comando).Parameters



# um Trabalho executando um WorkFlow
workflow MeuWorkFlow
   {
    while(1)
    { 
    (get-date).ToString() + " Script Demorado"
    Start-Sleep -seconds 3
    }

}


#invokar o comando como um trabaho (JOB)
$wfjob = MeuWorkFlow -AsJob

# Consulte e use o WFjob E não se esqueça de consular os cmdlets *-job.- workflow é gerenciando com job
$wfjob
Receive-Job $wfjob

# Você então pode suspender o trabalho e notar que ele não exibe informações, pois está suspenso.
Suspend-Job $wfjob -Force -Wait
$wfjob
Receive-Job $wfjob

# Por fim você pode resumir o trabalho.
Resume-Job $wfjob -Wait

# Finalizar o trabalho !!
Get-Job | Remove-Job -Force

 
