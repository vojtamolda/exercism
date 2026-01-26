function trinary_to_decimal(str)
    try
        return parse(Int, str, base=3)
    catch
        return 0
    end
end
