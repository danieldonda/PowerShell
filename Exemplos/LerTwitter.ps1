$webClient = New-Object -TypeName "System.Net.WebClient"

$s = New-Object -ComObject "SAPI.SPVoice"
$s.Rate = -1;

$url = "http://search.twitter.com/search.atom?q=PowerShell"
$x = [XML]$webClient.DownloadString($url)

$x.feed.entry | foreach {
    $s.Speak("Tweet from: " + $_.author.name)
    $s.Speak($_.title)
}
