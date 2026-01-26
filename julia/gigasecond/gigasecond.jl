using Dates

function add_gigasecond(date::DateTime)
    gigasecond = Dates.Second(1_000_000_000)
    return date + gigasecond
end
