
"""
    rotate(m, plain)

Rotate letters in the string using a Caesar cipher.
"""
function rotate(n, plain::AbstractString)
    return map(c -> rotate(n, c), plain)
end


function rotate(n, plain::AbstractChar)
    if isletter(plain)
        plain == ' ' && return ' '
        base = (uppercase(plain) == plain) ? codepoint('A') : codepoint('a')
    else
        return plain
    end

    cipher = base + ((codepoint(plain) - base + n) % 26)
    return Char(cipher)
end


macro R13_str(s)
    rotate(13, s)
end

for n in 0:26
    @eval macro $(Symbol(:R, n, :_str))(s)
        rotate($n, s)
    end
end
