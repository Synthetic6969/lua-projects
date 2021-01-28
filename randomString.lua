return function generateRandomString(size, options)
    if not options then options = {} end
    local ignoreChars = options.ignoreChars or {}
    local minChar = options.minChar or 0
    local maxChar = options.maxChar or 200
    
    local s, i = "", 0
    while i < size do
        local ignoreChar
        local char = string.char(math.random(minChar or 1, maxChar or 200))
        for _, v in next, ignoreChars do
            if char == v then
                ignoreChar = true
            end
        end
        if not ignoreChar then
            i = i + 1
            s = s..char
        end
    end
    return s
end
