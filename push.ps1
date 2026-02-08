# Add all changes, commit with message, and push
# Usage: .\push.ps1 "your commit message"
# Example: .\push.ps1 "Updated homepage content"

param(
    [Parameter(Mandatory=$false)]
    [string]$Message = "Update"
)

Set-Location $PSScriptRoot
git add .
$status = git status --short
if (-not $status) {
    Write-Host "Nothing to commit. Working tree clean."
    exit 0
}
git commit -m $Message
git push
