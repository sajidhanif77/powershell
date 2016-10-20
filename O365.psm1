Function AssignAlumniExchangeLicense ($user) {
    $UsageLocation = �FR�
    $AccountSkuId = �aupedu:EXCHANGESTANDARD_ALUMNI�
    $disabledPlans +="YAMMER_EDU" 
    $disabledPlans +="INTUNE_O365"
    $LicenseOptions = New-MsolLicenseOptions �AccountSkuId $AccountSkuId -DisabledPlans $disabledPlans
    Set-MsolUser -UserPrincipalName $user -UsageLocation $UsageLocation 
    Set-MsolUserLicense -UserPrincipalName $user -AddLicenses $AccountSkuId 
}
