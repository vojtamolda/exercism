
function matching_brackets(expr)
    pairs = ImmutableDict('(' => ')', '[' => ']', '{' => '}')

    opening_idx = findfirst(in(keys(pairs)), expr)
    closing_idx = findfirst(in(values(pairs)), expr)
    if isnothing(opening_idx)
       return isnothing(closing_idx)
    end

    opening_brace = expr[opening_idx]
    closing_brace = pairs[opening_brace]

    closing_idx = findnext(closing_brace, expr, opening_idx + 1)
    while !isnothing(closing_idx)
        prefix_matching = matching_brackets(@view expr[begin:opening_idx - 1])
        content_matching = matching_brackets(@view expr[opening_idx + 1:closing_idx - 1])
        remainder_matching = matching_brackets(@view expr[closing_idx + 1:end])

        (prefix_matching && content_matching && remainder_matching) && return true
        closing_idx = findnext(closing_brace, expr, closing_idx + 1)
    end

    return false
end
