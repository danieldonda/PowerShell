$lista = Get-ChildItem
$contagem = 0
foreach ($arquivo in $lista) {
$contagem++
Write-Host $arquivo
Write-Progress -Activity "Listando Diretorios" -status "Andamento" -PercentComplete (($contagem / $lista.count)*100)
}

