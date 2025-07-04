if ((Get-MyComputerModel) -match 'Virtual') {
    Write-Host  -ForegroundColor Green "Setting Display Resolution to 1600x"
    Set-DisRes 1600
}

# PS Script´s müssen local auf dem Stick liegen
set-location -path d:\APImport
.\importAPHash.ps1

$Params = @{
    OSVersion = "Windows 11"
    OSBuild = "24H2"
    OSEdition = "Pro"
    OSLanguage = "de-DE"
    OSLicense = "Retail"
    ZTI = $true
    Firmware = $true
}
Start-OSDCloud @Params -Restart
