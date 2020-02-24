$nficheros = (Get-ChildItem).Count
$ficheros_1year= gci -File | ? {($nficheros_.LastWriteTime -lt ((Get-date).AddYears(-1)))}

switch ( $nficheros ){

{$nficheros -lt 26}{Write-Host "Hay pocos ficheros" }

{$nficheros -ge 26 -and $_ -lt 50}{
    Write-Host "Quieres eliminar los ficheros de hace fas de un año? s/n"
    Read-Host $eleccion
    
    if ($eleccion -eq "n"){       
        Copy-Item $ficheros_1year (New-Item -Name "Historic" -ItemType "directory")
        Remove-Item $ficheros_1year
        }
    else{                
        Remove-Item $ficheros_1year
        }
    }

{$nficheros -ge 50}{
        Copy-Item $ficheros_1year (New-Item -Name "Historic" -ItemType "directory")
        Remove-Item $ficheros_1year
    }
default{"No hay ficheros"}
}