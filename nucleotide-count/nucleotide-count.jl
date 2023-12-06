"""
    count_nucleotides(strand)

The count of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    counts = Dict('A' => 0, 'C' => 0, 'G' => 0, 'T' => 0)

    for ch in strand
        if ! haskey(counts, ch)
            throw(DomainError(ch, "Expected only A, C, G or T."))
        end
        counts[ch] += 1
    end

    return counts
end
