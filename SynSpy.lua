if not getgenv().synSpy.enabled then
    getgenv().synSpy.enabled = true
    local player = game:service'Players'.LocalPlayer
    local gmt = getrawmetatable(game)
    local oldNamecall = gmt.__namecall
    setreadonly(gmt, false)
    
    local concatTable = loadstring(game:HttpGet("https://raw.githubusercontent.com/Synthetic6969/lua-projects/main/tableToString.lua", true))()
    
    if getgenv().synSpy.disableMessageOut then
        for _, v in next, getconnections(game:service'LogService'.MessageOut) do
            v:Disable()
        end
    end
    if getgenv().synSpy.disableErrorDetection then
        for _, v in next, getconnections(game:service'ScriptContext'.Error) do
            v:Disable()
        end
    end
    
    gmt.__namecall = newcclosure(function(self, ...)
        local args = {...}
        local method = getnamecallmethod()
        if tostring(method) == "InvokeServer" or tostring(method) == "FireServer" then
            coroutine.wrap(function()
                local callingScript
                pcall(function()
                    callingScript = getcallingscript()
                    if callingScript ~= nil then
                        callingScript = callingScript:GetFullName()
                    end
                end)
                local s = "\n"
                s = s..self.ClassName.." was fired!\n"
                s = s.."Path: "..self:GetFullName().."\n"
                s = s.."Script: "..(callingScript or "nil").."\n"
                
                s = s.."Arguments: "..concatTable(args).."\n"
                if not table.find(synSpy.hiddenRemotes, self) then
                    getgenv().synSpy.spyPrint(s)
                end
            end)()
            return oldNamecall(self, ...)
        end
        return oldNamecall(self, ...)
    end)
end

if getgenv().synSpy.helpMessage then
    rconsoleprint("Settings: spyPrint, disableMessageOut, disableErrorDetection")
end
