<#
.SYNOPSIS
Exports shared mailbox permissions from Exchange Online.

.NOTES
Portfolio sample. Test before using in production. Do not publish real tenant data.
#>

param(
    [Parameter(Mandatory = $false)]
    [string]$OutputPath = ".\SharedMailboxPermissions.csv"
)

Write-Host "Connecting to Exchange Online..." -ForegroundColor Cyan
# Connect-ExchangeOnline

Write-Host "Collecting shared mailboxes..." -ForegroundColor Cyan
$sharedMailboxes = Get-Mailbox -RecipientTypeDetails SharedMailbox -ResultSize Unlimited

$results = foreach ($mailbox in $sharedMailboxes) {
    $permissions = Get-MailboxPermission -Identity $mailbox.Identity |
        Where-Object { $_.User -notlike "NT AUTHORITY\SELF" -and $_.IsInherited -eq $false }

    foreach ($permission in $permissions) {
        [PSCustomObject]@{
            SharedMailbox = $mailbox.PrimarySmtpAddress
            User          = $permission.User
            AccessRights  = ($permission.AccessRights -join ", ")
            IsInherited   = $permission.IsInherited
        }
    }
}

$results | Export-Csv -Path $OutputPath -NoTypeInformation
Write-Host "Export complete: $OutputPath" -ForegroundColor Green
