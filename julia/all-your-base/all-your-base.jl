# Implement number base conversion

function all_your_base(digits, base_in, base_out)
    base_in > 1 || throw(DomainError("Invalid input base"))
    base_out > 1 || throw(DomainError("Invalid output base"))
    all(>=(0), digits) || throw(DomainError("Negative digit"))
    all(<(base_in), digits) || throw(DomainError("Too large digit"))

    value, pow = 0, 1
    for digit in reverse!(digits)
        value += digit * pow
        pow *= base_in
    end

    converted = []
    while value > 0
        digit = value % base_out
        value = value ÷ base_out
        push!(converted, digit)
    end

    isempty(converted) && return [0]
    return reverse!(converted)
end
