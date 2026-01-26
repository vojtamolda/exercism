struct RationalNumber{T <: Integer} <: Real
    num::T
    den::T

    function RationalNumber(num::Integer, den::Integer)
        den != 0 || throw(ArgumentError("Zero denominator"))
        norm = (den > 0) ? +gcd(num, den) : -gcd(num, den)
        T = promote_type(typeof(num), typeof(den))
        return new{T}(T(num ÷ norm), T(den ÷ norm))
    end
end

function RationalNumber{T}(val::Integer) where {T}
    RationalNumber(T(val), T(1))
end

function numerator(r::RationalNumber{T})::T where {T}
    r.num
end

function denominator(r::RationalNumber{T})::T where {T}
    r.den
end

function Base.promote_rule(::Type{I}, ::Type{RationalNumber{T}}) where {I <: Integer, T <: Integer}
    RationalNumber{promote_type(I, T)}
end

function Base.promote_rule(::Type{RationalNumber{T1}}, ::Type{RationalNumber{T2}}) where {T1, T2}
    RationalNumber{promote_type(T1, T2)}
end

function Base.:-(a::RationalNumber{T})::RationalNumber{T} where {T}
    RationalNumber(-a.num, a.den)
end

function Base.:+(a::RationalNumber{T}, b::RationalNumber{T})::RationalNumber{T} where {T}
    num = a.num * b.den + b.num * a.den
    den = a.den * b.den
    return RationalNumber(num, den)
end

function Base.:-(a::RationalNumber{T}, b::RationalNumber{T})::RationalNumber{T} where {T}
    a + (-b)
end

function Base.:*(a::RationalNumber{T}, b::RationalNumber{T})::RationalNumber{T} where {T}
    num = a.num * b.num
    den = a.den * b.den
    return RationalNumber(num, den)
end

function Base.:/(a::RationalNumber{T}, b::RationalNumber{T})::RationalNumber{T} where {T}
    num = a.num * b.den
    den = a.den * b.num
    return RationalNumber(num, den)
end

function Base.:^(a::Real, r::RationalNumber{T})::Real where {T}
    a ^ (r.num / r.den)
end

function Base.abs(r::RationalNumber{T})::RationalNumber{T} where {T}
    RationalNumber(abs(r.num), abs(r.den))
end

function Base.:<(l::RationalNumber{T}, r::RationalNumber{T})::Bool where {T}
    (l.num / l.den) < (r.num / r.den)
end
