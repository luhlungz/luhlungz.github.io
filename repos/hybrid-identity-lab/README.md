# Hybrid Identity Lab: Active Directory, Entra ID, Intune & Defender

## Overview
This lab demonstrates a hybrid Microsoft identity environment connecting on-premises Active Directory with Microsoft Entra ID and Microsoft Intune.

## Goal
Build practical evidence for Microsoft 365 Administrator, Identity Support, Endpoint Support and Junior Systems Administrator roles.

## Tools Used
- Hyper-V
- Windows Server
- Active Directory Domain Services
- DNS
- Microsoft Entra ID
- Microsoft Entra Connect
- Microsoft Intune
- Defender for Endpoint
- Windows client device

## Lab Architecture
- Domain: `zondi.operations`
- DC01-ENTRA: AD DS + DNS
- SYNC01: Entra Connect
- CL01-ENTRA: Windows client device
- Identity sync method: Password Hash Sync

## What I Built
1. Installed and configured Active Directory Domain Services.
2. Created and configured the lab domain.
3. Joined a Windows client to the domain.
4. Installed and configured Microsoft Entra Connect.
5. Synced AD users to Microsoft Entra ID.
6. Configured Hybrid Microsoft Entra Join.
7. Enabled Intune MDM enrollment.
8. Assigned Windows compliance policy.
9. Tested Conditional Access and MFA.
10. Onboarded device to Defender for Endpoint.

## Validation Evidence To Add
- `dsregcmd /status` output screenshot
- Entra synced users screenshot
- Entra device object screenshot
- Intune compliance screenshot
- Company Portal screenshot
- Defender onboarding screenshot

## Troubleshooting Notes
- Check DNS configuration on client.
- Confirm OU filtering in Entra Connect.
- Confirm sync status.
- Confirm MDM user scope.
- Confirm device compliance assignment.
- Confirm Conditional Access exclusions for break-glass/admin accounts.

## Skills Demonstrated
- Active Directory
- DNS
- Microsoft Entra ID
- Entra Connect
- Password Hash Sync
- Hybrid Microsoft Entra Join
- Microsoft Intune
- Conditional Access
- MFA
- Defender for Endpoint
- Troubleshooting and documentation

## Security / Privacy Note
This lab uses test users and lab systems only. No client information is included.
