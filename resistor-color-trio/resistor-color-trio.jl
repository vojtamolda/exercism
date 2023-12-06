using Printf


function label(colors)
    resistance = Dict(
        "black" => 0,
        "brown" => 1,
        "red" => 2,
        "orange" => 3,
        "yellow" => 4,
        "green" => 5,
        "blue" => 6,
        "violet" => 7,
        "grey" => 8,
        "white" => 9
    )

    value = 0
    exponent = 10 ^ resistance[pop!(colors)]
    for (pow, color) in enumerate(reverse(colors))
        value += resistance[color] * 10 ^ (pow - 1)
    end
    value *= exponent

    prefixes = ["", "kilo", "mega", "giga", "tera", "peta", "exa"]
    exponent3 = floor(Int, log10(abs(value)) / 3)
    normalized = value / 10 ^ (exponent3 * 3)
    formatted = @sprintf("%g", normalized)

    return "$(formatted) $(prefixes[exponent3 + 1])ohms"
end
