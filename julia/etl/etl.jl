function transform(input::AbstractDict)
    return Dict(
        lowercase(ch) => pts
        for (pts, chrs) in input
        for ch in chrs
    )
end
