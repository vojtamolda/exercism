function square_root(n)
    n < 0 && throw(DomainError("Square root of a negative number"))

    sqrt = n / 2
    while sqrt != (sqrt + n / sqrt) / 2
        sqrt = (sqrt + n / sqrt) / 2
    end

    return sqrt    
end
