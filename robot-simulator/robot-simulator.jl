import Base: +, -, convert

@enum Direction begin
    NORTH = 0
    WEST = 1
    SOUTH = 2
    EAST = 3
end

function convert(::Type{Direction}, i::Integer)
    Direction(abs(((i % 4) + 4) % 4))
end

function convert(::Type{Integer}, d::Direction)
    Integer(d)
end

function +(d::Direction, i::Integer)
    convert(Direction, convert(Integer, d) + i)
end

function -(d::Direction, i::Integer)
    convert(Direction, convert(Integer, d) - i)
end

struct Point
    x::Int
    y::Int
end

function convert(::Type{Point}, t::Tuple{Integer, Integer})
    Point(t...)
end

function +(p1::Point, p2::Point)
    Point(p1.x + p2.x, p1.y + p2.y)
end

function +(p::Point, t::Tuple{Integer, Integer})
    p + convert(Point, t)
end

mutable struct Robot
    position::Point
    heading::Direction
end

function position(r::Robot)
    r.position
end

function heading(r::Robot)
    r.heading
end

function turn_right!(r::Robot)
    r.heading -= 1
    return r
end

function turn_left!(r::Robot)
    r.heading += 1
    return r
end

function advance!(r::Robot)
    if r.heading == NORTH
        r.position += (0, +1)
    elseif r.heading == WEST
        r.position += (-1, 0)
    elseif r.heading == SOUTH
        r.position += (0, -1)
    elseif r.heading == EAST
        r.position += (+1, 0)
    end
    return r
end

function move!(r::Robot, actions::String)
    for a in lowercase(actions)
        if a == 'a'
            advance!(r)
        elseif a == 'l'
            turn_left!(r)
        elseif a == 'r'
            turn_right!(r)
        else
            throw(DomainError("Invalid action"))
        end
    end
    return r
end

