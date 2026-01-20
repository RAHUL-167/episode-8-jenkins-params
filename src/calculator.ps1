function Get-Interest {
    param (
        [double]$amount,
        [double]$rate
    )

    # ❌ WRONG: divide instead of multiply
    return ($amount / $rate)
}
