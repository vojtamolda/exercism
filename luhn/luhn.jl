using Base.Iterators

function luhn(str)
    sum = 0
    ndigits = 0

    str = collect(str)
    for ch in reverse(str)
        isspace(ch) && continue
        !isdigit(ch) && return false

        digit = ch - '0'
        ndigits += 1
        if iseven(ndigits)
            digit = 2 * digit
            digit = (digit < 10) ? digit : digit - 9
        end
        sum += digit
    end

    ndigits <= 1 && return false
    return sum % 10 == 0
end
