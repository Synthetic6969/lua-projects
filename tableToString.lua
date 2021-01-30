function concatTable(t)
    local s = ""
    local tabs = 0
    function searchTable(t)
        s = s.."{\n"
        tabs = tabs + 1
        for i, v in pairs(t) do
            if type(i) == "string" then
                s = s..string.rep("    ", tabs).."['"..i.."'] = "
            else
                s = s..string.rep("    ", tabs).."["..tostring(i).."] = "
            end
            
            if type(v) == "table" then
                searchTable(v)
            elseif type(v) == "string" then
                local vRemoved
                vRemoved = string.gsub(v, "\n", "\\n")
                s = s.."'"..vRemoved.."';".."\n"
            elseif type(v) == "userdata" and typeof(v) == "Instance" then
                s = s..v:GetFullName()..";\n"
            else
                s = s..tostring(v)..";\n"
            end
        end
        tabs = tabs - 1
        s = s..string.rep("    ", tabs).."};\n"
        return string.sub(s, 1, string.len(s)-2)
    end
    
    return searchTable(t)
end

return concatTable
