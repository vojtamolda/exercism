"""
    combinations_in_cage(sum, n, restricted)

Returns all possible combinations of n digits 1-9 that sum to n. Digits found
on the restricted list are not used.
"""
function combinations_in_cage(sum, n, restricted=[])
    if n == 1
        sum in restricted && return []
        !(0 < sum <= 9) && return []
        return [[sum]]
    end

    retval = []
    for i in Iterators.filter(digit -> !(digit in restricted), 1:9)
        push!(restricted, i)
        for subcombination in combinations_in_cage(sum - i, n - 1, restricted)
            push!(retval, [[i]; subcombination])
        end
    end

    return retval
end
