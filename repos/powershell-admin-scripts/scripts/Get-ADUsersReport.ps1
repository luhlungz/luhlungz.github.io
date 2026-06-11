<#
.SYNOPSIS
Exports a basic Active Directory user report.

.NOTES
Portfolio sample. Requires the ActiveDirectory PowerShell module.
#>

param(
    [Parameter(Mandatory = $false)]
    [string]$OutputPath = ".\ADUsersReport.csv"
)

Import-Module ActiveDirectory

Get-ADUser -Filter * -Properties DisplayName,Department,Title,Enabled,LastLogonDate,PasswordLastSet |
    Select-Object SamAccountName,DisplayName,Department,Title,Enabled,LastLogonDate,PasswordLastSet |
    Export-Csv -Path $OutputPath -NoTypeInformation

Write-Host "Report exported to $OutputPath" -ForegroundColor Green
