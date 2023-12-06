
function count_mines(minefield, i ,j)
    mines = 0

    for di in [-1, 0, +1]
        ii = i + di
        !(1 <= ii <= length(minefield)) && continue

        for dj in [-1, 0, +1]
            jj = j + dj
            !(1 <= jj <= length(minefield[ii])) && continue

            if minefield[ii][jj] == '*'
                mines += 1
            end
        end
    end

    return mines
end


function annotate(minefield)
    annotation = []
    
    for (i, row) in enumerate(minefield)
        annotation_row = ""
        for (j, c) in enumerate(row)
            if c == ' '
                minecount = count_mines(minefield, i, j)
                annotation_row *= (minecount == 0) ? " " : "$(minecount)"
            else
                annotation_row *= '*'
            end
        end
        push!(annotation, annotation_row)
    end

    return annotation
end