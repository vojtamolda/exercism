
function aliquotsum(n)
    n <= 0 && throw(DomainError("Factors of a non-natural number"))
    candidates = 1:n ÷ 2
    return filter(i -> n % i == 0, candidates) |> sum
end


isabundant(n) = n < aliquotsum(n)
isperfect(n) = n == aliquotsum(n)
isdeficient(n) = n > aliquotsum(n)
