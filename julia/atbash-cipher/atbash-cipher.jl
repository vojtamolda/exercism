using Base.Iterators


function encode(ch::Char)
    isnumeric(ch) && return ch
    return 'z' - (ch - 'a')
end

function encode(input)
    input = [ch for ch in lowercase(input) if isletter(ch) || isnumeric(ch)]
    encoded = (encode(ch) for ch in input)
    partitioned = partition(encoded, 5)
    words5 = (join(segment, "") for segment in partitioned)
    return join(words5, " ")
end

function decode(ch::Char)
    isnumeric(ch) && return ch
    return 'a' + ('z' - ch)
end

function decode(input)
    input = [ch for ch in lowercase(input) if isletter(ch) || isnumeric(ch)]
    decoded = (decode(ch) for ch in input)
    return join(decoded, "")
end
