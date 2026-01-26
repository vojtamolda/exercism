using Unicode


function score(str)
    points = Dict(
        ch => v
        for (chrs, v) in Dict(
            "AEIOULNRST" => 1,
            "DG" => 2,
            "BCMP" => 3,
            "FHVWY" => 4,
            "K" => 5,
            "JX" => 8,
            "QZ" => 10
        )
        for ch in chrs
    )

    str = uppercase(str)
    return sum((get(points, ch, 0) for ch in str), init=0)
end
