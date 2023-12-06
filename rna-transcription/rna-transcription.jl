nucleotide_map = Dict(
    'C' => 'G',
    'G' => 'C',
    'T' => 'A',
    'A' => 'U'
)

function to_rna(dna)
    rna = []
    for nucleotide in dna
        if ! (nucleotide in nucleotide_map.keys)
            throw(ErrorException("Unrecognized nucleotide"))
        end
        push!(rna, nucleotide_map[nucleotide])
    end
    return join(rna, "")
end
