function valid_triangle(sides)
    nonzero1 = sides[1] > 0
    nonzero2 = sides[2] > 0
    nonzero3 = sides[3] > 0
    if nonzero1 + nonzero2 + nonzero3 != 3
        return false
    end

    trineq1 = sides[1] < sides[2] + sides[3]
    trineq2 = sides[2] < sides[3] + sides[1]
    trineq3 = sides[3] < sides[1] + sides[2]
    if trineq1 + trineq2 + trineq3 != 3
        return false
    end

    return true
end

function is_equilateral(sides)
    valid_triangle(sides) || return false
    eq12 = sides[1] == sides[2]
    eq23 = sides[2] == sides[3]
    eq31 = sides[3] == sides[1]
    return eq12 + eq23 + eq31 == 3
end

function is_isosceles(sides)
    valid_triangle(sides) || return false
    eq12 = sides[1] == sides[2]
    eq23 = sides[2] == sides[3]
    eq31 = sides[3] == sides[1]
    return eq12 + eq23 + eq31 >= 1 
end

function is_scalene(sides)
    valid_triangle(sides) || return false
    eq12 = sides[1] == sides[2]
    eq23 = sides[2] == sides[3]
    eq31 = sides[3] == sides[1]
    return eq12 + eq23 + eq31 == 0
end
