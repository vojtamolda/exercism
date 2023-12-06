import Base: ==


struct ISBN
    # Decide on how to represent an ISBN and on how to implement
    # the constructor.
    digits::Vector{Int8}

    function ISBN(str)
        digits = []
        for ch in str
            ch == '-' && continue

            if isdigit(ch)
                push!(digits, Int8(ch - '0'))
            elseif ch == 'x' || ch == 'X'
                push!(digits, Int8(10))
            else
                throw(DomainError("Invalid character in ISBN-10"))
            end
        end

        if length(digits) != 10
            throw(DomainError("Invalid ISBN-10 string"))
        end
        if any(ch -> ch == 10, digits[1:9])
            throw(DomainError("Invalid ISBN-10 format"))
        end

        checksum = sum(map(*, digits, 10:-1:1))
    
        if checksum % 11 != 0
            throw(DomainError("Invalid ISBN-10 checksum"))
        end

        return new(digits)
    end
end


function ==(a::ISBN, b::ISBN)
    return a.digits == b.digits
end

macro isbn_str(s)
     return ISBN(s)
end
