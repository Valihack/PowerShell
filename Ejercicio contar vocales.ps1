$string = Read-Host "Introduce una cadena de texto"
$array = @('a','e','i','o','u')


$array | foreach {
	Write-Host "Hay un total de $(($string | Select-String -Pattern "$_" -AllMatches).Matches.Count) $_"
}