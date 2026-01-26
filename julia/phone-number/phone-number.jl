function clean(phone_number)
    digits = filter(isdigit, phone_number)

    if length(digits) == 11 && first(digits) == '1'
        digits = digits[begin + 1:end]
    end

    ok_1 = '2' <= digits[1] <= '9'
    ok_4 = '2' <= digits[4] <= '9'
    ok_len = length(digits) == 10

    if !ok_1 || !ok_4 || !ok_len
        throw(ArgumentError("Incorrect phone number digits"))
    end

    return join(digits)

end
