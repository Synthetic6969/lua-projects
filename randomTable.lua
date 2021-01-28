return function generateRandomTable(size)
    local t = {}
    
    while size > 0 do
        math.randomseed(os.time() * math.random(0, 10000))
        local choice = math.random(1, 3)
        if choice == 1 then
            size = size - 1
            table.insert(t, math.random(0, 100))
        elseif choice == 2 then
            size = size - 1
            if math.random(0, 1) == 0 then
                t[generateRandomString(5)] = math.random(1, 100)
            else
                table.insert(t, generateRandomString(5))
            end
        else
            size = size - 1
            table.insert(t, generateRandomTable(math.random(0, 5)))
        end
    end
    
    return t
end
