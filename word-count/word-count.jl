function wordcount(sentence)
    counts = Dict()
    whitespaces = [' ', '\t', '\n']
    delimiters = [',', '.', ';', ':', '!', '?']
    junk = ['"', '&', '@', '\\', '/', '$', '%', '^', '#', '*', '~']
    brackets = ['[', ']', '{', '}', '(', ')', '<', '>']
    separators = [whitespaces; delimiters; junk; brackets]

    for word in eachsplit(sentence, separators, keepempty=false)
        word = lowercase(word)
        word = strip(word, '\'')
        isempty(word) && continue

        count = get(counts, word, 0)
        counts[word] = count + 1
    end

    return counts
end
