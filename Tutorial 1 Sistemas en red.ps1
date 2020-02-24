get-netadapter -Physical | Where-Object {$_.Status -eq "Up"} 
#Saca los adapatadores fisicos y muestra solo los que el objeto status es igual a Up
get-location #pwd
Set-Location #cd
Copy-Item #cp
Remove-Item #rm
Move-Item #mv
Rename-Item #mv 
New-Item #mkdir o touch

Get-Command #Mosra tots els comands
(Get-Command).count #Cuenta los command
Get-Command Add* #Mostra el command que tenen Add
Get-Help #
Show-Command #Get-Help interfaz grafica
Get-Member #Mostra propietats y metodes de objectes

Get-Command -CommandType Alias #Mostra els alias
Get-Childitem -path  "C:\Users\Yuki\Documents" -Recurse | where Lenght -lt 50kb
Get-Childitem -Recurse | Select-Object Name, @{Name="KBytes";Expression={ "{0:N0}" -f ($_.Length / 1KB) }} | measure
Get-ChildItem -name -include r* -Recurse
gci -Path $env:USERPROFILE -File -Recurse | ? {$_.LastWriteTime.Month -eq 1 -and $_.LastWriteTime.year -eq 2019 } #Mostrar ficheros con el siguiente tiempo de modificación
gci -Path $env:USERPROFILE -File -Recurse | ? {($_.LastWriteTime -ge (Get-date "1/12/2019")) -and ($_.LastWriteTime -lt (Get-Date "31/12/2019"))}
$NouObj | Export-Csv -Path .\ProvaObj.csv -UseCulture -NoTypeInformation #Exportar infor de una variable a un CSV


#Etructuta if
$temperatura=20
if($temperatura -lt 13)
{
    Write-Host "Hace frio"
}
elseif($temperatura -lt 21)
{
    Write-Host "Estamoh bien"
}
else
{
    Write-Host "hace calor"
}


#Estructura switch
Read-Host $temperatura
switch ( $temperatura )
{
{$temperatura -lt 13}{Write-Host "Hace frío" }
{$temperatura -ge 13 -and $_ -lt 21}{Write-Host "Se esta bien"}
{$temperatura -ge 21}{Write-Host "hace calor"}
default{"??"}
}

#Ejemplo switch
$target = 'https://bing.com'
switch -Regex ($target)
{
    'ftp\://.*' { "$_ is an ftp address"; Break }
    '\w+@\w+\.com|edu|org' { "$_ is an email address"; Break }
    '(http[s]?)\://.*' { "$_ is a web address that uses $($matches[1])"; Break }
}