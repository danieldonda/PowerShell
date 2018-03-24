<#  Fazendo um sorteio de números ou nomes
Isso foi muito útil durante um treinamento, onde eu precisei fazer um sorteio e já não estava afim de usar fazer perguntas, ou escolher aqueles que fazem aniversario no dia ou próximo.
Eis que o PowerShell surgiu para nos salvar nesse momento. 
Você pode fazer um sorteio de números usando o Objeto System.Random.
#>

Get-Random -minimum 1 -maximum 101
# Em palestras e salas de aula nós temos nomes e esse é o método mais simples de se fazer um sorteio:

($a = "Daniel","Suzana","Felipe","Henrique","Karol") | Get-Random
#Você pode sortear 3 de uma vez:
($a = "Daniel","Suzana","Felipe","Henrique","Karol") | Get-Random -Count 3
# Outro recurso interessante é que você pode usar um arquivo de texto e sortear o conteúdo.
Get-Content C:\Scripts\Teste.txt | Get-Random
