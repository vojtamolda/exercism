function sum_of_multiples(limit, factors)
    points = Set()
    for factor in filter(!iszero, factors)
        union!(points, factor:factor:limit-1)
    end
    return sum(points, init=0)
end
