mutable struct Robot
    name::String
    Robot() = new(generate_name())
end

global registry = Set()

function reset!(instance::Robot)
    instance.name = generate_name()
end

function name(instance::Robot)
    return instance.name
end

function generate_name()
    d1 = rand(1:9)
    d2 = rand(1:9)
    d3 = rand(1:9)
    c1 = rand('A':'Z')
    c2 = rand('A':'Z')

    retval = "$(c1)$(c2)$(d1)$(d2)$(d3)"
    if retval in registry
        return generate_name()
    else
        push!(registry, retval)
        return retval
    end
end