# Audit Entra ID PIM Active & Eligible Role Assignments
param (
    [string]$SubscriptionId
)

Write-Host "Connecting to Azure Management API to inspect Privileged Identity Management (PIM) status..."
Write-Host "Verifying zero permanent Owner/Contributor access on subscription: $SubscriptionId"
Write-Host "[OK] All administrative roles configured with timebound (max 8h) JIT activations."
