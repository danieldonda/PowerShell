$iwr = Invoke-WebRequest http://mcsesolution.com/rss.php
$iwr.Links

$irm = Invoke-RestMethod blogs.msdn.com/b/powershell/rss.aspx
$irm = Invoke-RestMethod http://www.mcsesolution.com/Noticias/feed/rss.html
$irm | Select-Object PubDate, Title
