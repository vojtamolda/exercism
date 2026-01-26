function bob(stimulus)
    stimulus = strip(stimulus)

    letters = filter(isletter, stimulus)
    empty = isempty(letters)
    uppercase = letters |> collect .|> isuppercase |> all

    silence = isempty(stimulus)
    yelling = !empty && uppercase
    question = endswith(stimulus, '?')

    if question && yelling
        return "Calm down, I know what I'm doing!"
    elseif yelling
        return "Whoa, chill out!"
    elseif question
        return "Sure."
    elseif silence
        return "Fine. Be that way!"
    else
        return "Whatever."
    end
end
