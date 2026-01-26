import Base: length, isempty, in, iterate, ==, push!, intersect, intersect!, union, union!, copy

mutable struct CustomSet{T} <: AbstractSet{T}
    elements::Vector{T}

    function CustomSet(elements::AbstractVector{T}) where T
        new{T}(sort!(unique!(elements)))
    end
end

function length(s::CustomSet)
    length(s.elements)
end

function isempty(s::CustomSet)
    isempty(s.elements)
end

function in(s::CustomSet, el)
    insorted(s.elements, el)
end

function iterate(s::CustomSet)
    iterate(s.elements)
end

function iterate(s::CustomSet, state)
    iterate(s.elements, state)
end

function disjoint(s1::CustomSet, s2::CustomSet)
    isempty(intersect(s1, s2))
end

function ==(s1::CustomSet, s2::CustomSet)
    s1.elements == s2.elements
end

function push!(s::CustomSet, el)
    sort!(unique!(push!(s.elements, el)))
    return s
end

function intersect(s1::CustomSet, s2::CustomSet)
    CustomSet(intersect(s1.elements, s2.elements))
end

function intersect!(s1::CustomSet, s2::CustomSet)
    sort!(unique!(intersect!(s1.elements, s2.elements)))
    return s1
end

function complement(s1::CustomSet, s2::CustomSet)
    CustomSet(setdiff(s1.elements, s2.elements))
end

function complement!(s1::CustomSet, s2::CustomSet)
    sort!(setdiff!(s1.elements, s2.elements))
    return s1
end

function union(s1::CustomSet, s2::CustomSet)
    CustomSet(union(s1.elements, s2.elements))
end

function union!(s1::CustomSet, s2::CustomSet)
    sort!(unique!(union!(s1.elements, s2.elements)))
    return s1
end

function copy(s1::CustomSet)
    CustomSet(copy(s1.elements))
end
