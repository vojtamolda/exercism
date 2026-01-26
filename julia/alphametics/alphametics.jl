include("permutations.jl")


mutable struct Variable
    symbol::Char
    value::Union{Int8, Nothing}
    range::UnitRange
end

function solve(puzzle)
    (vars, eqns, rhs) = parse(puzzle)

    solution = nothing
    oor = false

    for vals in permutations(0:9, length(vars))
        for (var, val) in zip(vars, vals)
            if !(val in var.range)
                oor = true
                break
            end
            var.value = val
        end

        if oor == true
            oor = false
            continue
        end
        
        if evaluate(eqns, rhs, vars, 0) == true
            if solution === nothing
                solution = deepcopy(vars)
            else
                return nothing
            end
        end
    end

    if solution === nothing
        return nothing
    else
        return Dict(var.symbol => var.value for var in solution)
    end
end

function evaluate(eqns::Matrix{Union{Nothing, Int}}, rhs::Vector{Int}, vars::Vector{Variable}, carry::Int)::Bool
    if length(rhs) == 0
        return carry == 0
    end

    sum = carry
    for idx in eqns[:, 1]
        idx === nothing && continue
        sum += vars[idx].value
    end

    digit = sum % 10
    carry = sum ÷ 10
    result = vars[rhs[1]]

    if result.value == digit
        return evaluate(eqns[:, 2:end], rhs[2:end], vars, carry)
    else
        return false
    end
end


function parse(puzzle)
    words = split(puzzle, ('+', '='), keepempty=false) .|> strip
    result = pop!(words)

    num_terms = length(words)
    num_eqns = maximum([result; words] .|> length)

    vars = Vector{Variable}()

    eqns = Matrix{Union{Nothing, Int}}(nothing, num_terms, num_eqns)
    for (i, word) in enumerate(words)
        for (j, symbol) in enumerate(reverse(word))
            idx = findfirst(var -> var.symbol == symbol, vars)
            if idx === nothing
                var = Variable(symbol, nothing, 0:9)
                push!(vars, var)
                idx = length(vars)
            end
            eqns[i, j] = idx
        end
    end

    rhs = Vector{Int}(undef, num_eqns)
    for (j, symbol) in enumerate(reverse(result))
        idx = findfirst(var -> var.symbol == symbol, vars)
        if idx === nothing
            var = Variable(symbol, nothing, 0:9)
            push!(vars, var)
            idx = length(vars)
        end
        rhs[j] = idx
    end

    for word in [words; result]
        idx = findfirst(var -> var.symbol == word[1], vars)
        vars[idx].range = 1:9
    end

    return vars, eqns, rhs
end
