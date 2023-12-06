function distance(a, b)
    if length(a) ≠ length(b)
        throw(ArgumentError("Sequences of unequal length"))
    end

    return count(a != b for (a, b) in  zip(a, b))
end
