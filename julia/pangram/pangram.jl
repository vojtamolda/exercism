"""
    ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).

"""
function ispangram(input)
    input = lowercase(input)

    alphabet = Set('a':'z')
    for ch in input
        ch in alphabet && pop!(alphabet, ch)
    end

    return isempty(alphabet)
end
