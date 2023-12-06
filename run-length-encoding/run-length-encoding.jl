
function encode(char, count)
    return (count == 1) ? "$(char)" : "$(count)$(char)"
end

function encode(seq)
    length(seq) == 0 && return ""

    encoded = []

    current, count = seq[1], 0
    for char in seq
        if (current == char)
            count += 1
            continue
        end

        push!(encoded, encode(current, count))
        current, count = char, 1
    end
    push!(encoded, encode(current, count))

    return join(encoded, "")
end


function decode(seq)
    decoded = []
    
    digits = []
    for char in seq
        if isnumeric(char)
            digit = parse(Int, char)
            append!(digits, digit)
        else
            if isempty(digits)
                push!(decoded, char)
            else                
                repetitions = sum(
                    (value * 10^(power - 1)
                    for (power, value) in enumerate(reverse(digits)))
                )
                expanded = [char for _ in 1:repetitions]
                push!(decoded, join(expanded, ""))
            end
            digits = []
        end
    end

    return join(decoded, "")
end
