# Change any of the following NamedTuple values to true to 
# enable testing different bonus tasks
tested_bonus_tasks = (rev = false, by = false, lt = false, multiple_matches = false)

function binarysearch(haystack, needle)
    return searchsorted(haystack, needle)
end
