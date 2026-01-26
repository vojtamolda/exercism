function pythagorean_triplets(n)
    triplets = []

    for a in 3:(n ÷ 3) - 1
        b = n * (n - 2 * a) / (n - a) / 2
        if a < b && isinteger(b)
            push!(triplets, (a, b, n - a - Int(b)))
        end
    end

    return triplets
end
