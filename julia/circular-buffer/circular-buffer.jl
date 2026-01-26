mutable struct CircularBuffer{T}
    buffer::Array{T}
    read_idx::Int
    count::Int

    function CircularBuffer{T}(capacity::Integer) where {T}
        return new{T}(Array{T}(undef, capacity), 1, 0)
    end
end

function Base.push!(cb::CircularBuffer{T}, item::T; overwrite::Bool=false) where {T}
    if cb.count == length(cb.buffer)
        overwrite || throw(BoundsError("Full buffer"))
        write_idx = cb.read_idx
        cb.read_idx = within(cb, cb.read_idx + 1)
    else
        write_idx = within(cb, cb.read_idx + cb.count)
        cb.count += 1
    end
    cb.buffer[write_idx] = item
    return cb
end

function Base.popfirst!(cb::CircularBuffer{T})::T where {T}
    cb.count > 0 || throw(BoundsError("Empty buffer"))
    item = cb.buffer[cb.read_idx]
    cb.read_idx = within(cb, cb.read_idx + 1)
    cb.count -= 1
    return item
end

function Base.empty!(cb::CircularBuffer)
    cb.count = 0
    return cb
end

function within(cb::CircularBuffer, idx::Int)
    (idx > length(cb.buffer)) ? 1 : idx
end
