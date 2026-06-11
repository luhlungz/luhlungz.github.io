# PowerShell Admin Scripts

## Overview
This repository will contain PowerShell scripts for Microsoft 365, Exchange Online, Active Directory and support reporting.

## Script Ideas
- `Get-M365UserMFAStatus.ps1`
- `Get-SharedMailboxPermissions.ps1`
- `Export-MailboxPermissions.ps1`
- `Get-ADUsersReport.ps1`
- `Check-DisabledUsers.ps1`
- `Get-LockedOutUsers.ps1`

## README Template For Each Script
For every script, include:

1. What the script does
2. Why it is useful
3. Required permissions
4. Required PowerShell modules
5. How to run it
6. Example output
7. Safety note / limitations

## Example Script Description
### Get-SharedMailboxPermissions.ps1
Exports shared mailbox permissions to help support teams confirm which users have access and which permission type has been applied.

## Safety Note
Test scripts in a lab or read-only mode first. Do not publish tenant IDs, user data or client information.
