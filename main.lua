-- Erratic Mode

EM = EM or {}

function EM.isnum(v)
    if is_number then return is_number(v) end
    return type(v) == 'number'
end

function EM.plain(v)
    if type(v) == 'number' then return v end
    if to_number then
        local n = to_number(v)
        if type(n) == 'number' then return n end
    end
    return nil
end

assert(SMODS.load_file('erratic.lua'))()
