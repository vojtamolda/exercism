function collatz_steps(n)
    n < 1 && throw(DomainError("Invalid input"))

    steps = 0
    while n != 1
        steps += 1
        if iseven(n)
            n = n ÷ 2 
        else
            n = 3*n + 1
        end
    end
    return steps
end