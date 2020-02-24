$horoscopo = @{
    0 = 'Mono'
    1 = 'Gallo'
    2 = 'Perro'
    3 = 'Rata'
    4 = 'Cerdo'
    5 = 'Buey'
    6 = 'Tigre'
    7 = 'Conejo'
    8 = 'Dragon'
    9 = 'Serpiente'
    10 = 'Caballo'
    11 = 'Cabra'
}
$ano = Read-Host "Introduce el ano de tu nacimiento"
Write-host "Tu animal del horoscopo chino es $($horoscopo[$ano%12])"
