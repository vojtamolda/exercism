function acronym(phrase)
    letters = []

    phrase = replace(phrase, '-' => ' ', '_' => ' ')
    for word in split(phrase, keepempty=false)
        append!(letters, uppercase(first(word)))
    end

    return join(letters)
end
