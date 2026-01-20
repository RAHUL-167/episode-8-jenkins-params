. "$PSScriptRoot\..\src\calculator.ps1"

$result = Get-Interest -amount 1000 -rate 0.05

if ($result -ne 50) {
    Write-Error "Test failed: Expected 50, got $result"
    exit 1
}

Write-Output "Test passed"
