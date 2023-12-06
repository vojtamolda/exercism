
function isisogram(word)
    return filter(isletter, word) |> lowercase |> allunique
end
