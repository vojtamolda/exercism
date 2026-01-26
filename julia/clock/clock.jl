import Base: show, +, -
import Dates: Minute, hour, minute, value
using Printf: @printf


struct Clock
    minutes

    function Clock(minutes)        
        minutes = minutes % (24 * 60)
        minutes = minutes < 0 ? (24 * 60) + minutes : minutes
        return new(minutes)
    end

    function Clock(hours, minutes)
        Clock(60 * hours + minutes)
    end
end

hours(clock::Clock) = clock.minutes ÷ 60
minutes(clock::Clock) = clock.minutes % 60

function +(clock::Clock, minutes::Minute) 
    Clock(clock.minutes + value(minutes))
end

function -(clock::Clock, minutes::Minute)
    clock + -minutes
end

function show(io::IO, clock::Clock)
    @printf(io, "\"%02d:%02d\"", hours(clock), minutes(clock))
end
