function largest_product(str, span)
    digits = [parse(Int8, chr) for chr in str]
    span < 0 && throw(ArgumentError("Span is negative"))
    span > length(digits) && throw(ArgumentError("Span is longer than sequence."))

    product = prod(@view digits[1:span])
    best = product
 
    for entering in (span + 1):length(digits)
        leaving = entering - span

        if digits[leaving] != 0
            product = product ÷ digits[leaving] * digits[entering]
        else
            product = prod(@view digits[leaving + 1:entering])
        end

        best = max(product, best)
    end

    return best
end
