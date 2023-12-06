"""Calculate the number of grains on square `square`."""
function on_square(square)
    square ∉ 1:64 && throw(DomainError("Input is not between 1 and 64"))
    return UInt64(1) << (square - 1)
end

"""Calculate the total number of grains after square `square`."""
function total_after(square)
    square ∉ 1:64 && throw(DomainError("Input is not between 1 and 64"))
    return reduce(|, (on_square(s) for s in 1:square))
end