function Connect-Exo {
    $Credentials = Get-Credential
    $Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/?proxymethod=rps -Credential $Credentials -Authentication Basic -AllowRedirection
    Import-PSSession $Session -AllowClobber
}
Connect-Exo