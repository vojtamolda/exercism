struct ComplexNumber <: Number
    re::Float64
    im::Float64
end

function ComplexNumber(re::Number)
    ComplexNumber(re, 0)
end

function Base.zero()::ComplexNumber
    ComplexNumber(0, 0)
end

function Base.real(c::ComplexNumber)
    c.re
end

function Base.imag(c::ComplexNumber)
    c.im
end

function conj(c::ComplexNumber)
    ComplexNumber(c.re, (c.im == 0) ? +c.im : -c.im)
end

function Base.promote_rule(::Type{Number}, ::Type{ComplexNumber})
    ComplexNumber
end

function Base.:+(a::ComplexNumber, b::ComplexNumber)::ComplexNumber
    re = a.re + b.re
    im = a.im + b.im
    return ComplexNumber(re, im)
end

function Base.:-(c::ComplexNumber)::ComplexNumber
    ComplexNumber(-c.re, -c.im)
end

function Base.:-(a::ComplexNumber, b::ComplexNumber)::ComplexNumber
    a + (-b)
end

function Base.:*(a::ComplexNumber, b::ComplexNumber)::ComplexNumber
    re = a.re * b.re - a.im * b.im
    im = a.re * b.im + a.im * b.re
    return ComplexNumber(re, im)
end

function Base.inv(c::ComplexNumber)::ComplexNumber
    norm = c.re * c.re + c.im * c.im
    ComplexNumber(c.re / norm, -c.im / norm)
end

function Base.:/(a::ComplexNumber, b::ComplexNumber)::ComplexNumber
    a * inv(b)
end

function Base.abs(c::ComplexNumber)
    sqrt(real(c)^2 + imag(c)^2)
end
