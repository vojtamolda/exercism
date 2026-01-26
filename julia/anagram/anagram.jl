
function extract_letters_counts(word)
    retval = Dict()
    for ch in lowercase(word)
        count = get!(retval, ch, 0)
        retval[ch] = count + 1
    end
    return retval
end


function detect_anagrams(subject, candidates)
    subject = subject
    candidates = [candidate for candidate in candidates]

    base_ltr_cnt = extract_letters_counts(subject)
    retval = []

    for candidate in candidates
        lowercase(candidate) == lowercase(subject) && continue
        candidate_ltrcnt = extract_letters_counts(candidate)
        base_ltr_cnt == candidate_ltrcnt && push!(retval, candidate)
    end

    return retval
end
