function Get-Interest {
    param (
        [double]$amount,
        [double]$rate
    )

    # ❌ BUG: wrong calculation
    return ($amount * $rate)
}
