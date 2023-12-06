function saddlepoints(M)
    isempty(M) && return []

    saddles = []

    columns_min = map(col -> minimum(col), eachcol(M))
    rows_max = map(row -> maximum(row), eachrow(M))

    (m, n) = size(M)
    for i = 1:m
        for j = 1:n
            if M[i, j] == rows_max[i] == columns_min[j]
                push!(saddles, (i, j))
            end
        end
    end

    return saddles
end
