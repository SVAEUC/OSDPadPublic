if ((Get-MyComputerModel) -match 'Virtual') {
    Write-Host  -ForegroundColor Green "Setting Display Resolution to 1600x"
    Set-DisRes 1600
}

$Params = @{
    OSVersion = "Windows 11"
    OSBuild = "23H2"
    OSEdition = "Pro"
    OSLanguage = "de-DE"
    OSLicense = "Retail"
    ZTI = $true
    Firmware = $true
}
Start-OSDCloud @Params
