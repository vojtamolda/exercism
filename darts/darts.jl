function score(x, y)
    r = sqrt(x^2 + y^2)

    if r <= 1
        return 10
    elseif r <= 5
        return 5
    elseif r <= 10
        return 1
    else
        return 0
    end
end
