function triangle(n)
    n < 0 && throw(DomainError("Invalid input"))
    n == 0 && return []

    retval = triangle(n - 1)
    prev = isempty(retval) ? [] : last(retval)

    row = ones(n)
    for i in 2:n-1
        row[i] = prev[i-1] + prev[i]
    end

    push!(retval, row)
    return retval
end
