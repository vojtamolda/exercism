function isarmstrong(number)
    power_sum = mapreduce(
        d -> d ^ ndigits(number),
        +,
        digits(number),
        init=0
    )
    return power_sum == number
end
