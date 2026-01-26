function secret_handshake(code)
    actions = []

    if code & (1 << 0) > 0
        append!(actions, ["wink"])
    end
    if code & (1 << 1) > 0
        append!(actions, ["double blink"])
    end
    if code & (1 << 2) > 0
        append!(actions, ["close your eyes"])
    end
    if code & (1 << 3) > 0
        append!(actions, ["jump"])
    end
    if code & (1 << 4) > 0
        reverse!(actions)
    end

    return actions
end
