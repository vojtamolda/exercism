const RIGHT = (0, +1)
const LEFT = (0, -1)
const DOWN = (+1, 0)
const UP = (-1, 0)

const next = Dict(
    RIGHT => DOWN,
    DOWN => LEFT,
    LEFT => UP,
    UP => RIGHT
)

function spiral_matrix(n)
    spiral = fill(0, n, n)

    i, j = 1, 1
    di, dj = RIGHT
    for k in 1:n*n
        spiral[i, j] = k

        next_i, next_j = i + di, j + dj
        out_of_bounds = !isassigned(spiral, next_i, next_j)
        if out_of_bounds
            di, dj = next[di, dj]
        else
            already_assigned = spiral[next_i, next_j] != 0
            if already_assigned
                di, dj = next[di, dj]
            end
        end

        i += di; j += dj
    end

    return spiral
end

