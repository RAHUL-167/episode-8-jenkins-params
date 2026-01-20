function Get-Interest {
    param (
        [double]$amount,
        [double]$rate
    )

    return [Math]::Round($amount * $rate, 2)
}
