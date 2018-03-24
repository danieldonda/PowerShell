# Fazendo o PowerShell Falar
# Alguns recursos podem não ser tão importantes, mas certamente são interessantes e podem ser explorados para trazer maior interação nos seus scripts.

$a = New-Object –ComObject SAPI.SPVoice
$a. speak(“PowerShell Rocks”)

# Usando o recurso do objeto SAPI.SPvoice você criar aplicações como essa do site http://bit.ly/Zn7ivH que lê os feeds do seu twitter ou sobre uma palavra chave, que nesse caso é o próprio PS.

$webClient = New-Object -TypeName "System.Net.WebClient"
$s = New-Object -ComObject "SAPI.SPVoice"
$s.Rate = -1;
$url = "http://search.twitter.com/search.atom?q=PowerShell"
$x = [XML]$webClient.DownloadString($url)
$x.feed.entry | foreach {
$s.Speak("Tweet from: " + $_.author.name)
$s.Speak($_.title)
}
