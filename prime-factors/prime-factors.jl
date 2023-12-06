function prime_factors(n)
    factors = []

    divisor = 2
    while n > 1
        if n % divisor == 0
            append!(factors, divisor)
            n = n ÷ divisor
        else
            divisor += 1
        end
    end

    return factors
end
