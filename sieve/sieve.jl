function sieve(limit)
    isprime = ones(Bool, limit)
    isprime[1] = false

    prime = 1
    while true
        prime = findnext(isone, isprime, prime + 1)
        !in(prime, 1:limit-1) && break

        multiple = 2 * prime
        while multiple <= limit
            isprime[multiple] = false
            multiple += prime
        end
    end

    return findall(isone, isprime)
end
