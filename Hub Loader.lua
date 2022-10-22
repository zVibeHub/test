if not game:IsLoaded() then game.Loaded:Wait() end

local list = loadstring(game:HttpGet("https://raw.githubusercontent.com/zVibeHub/test/main/gamelist.lua"))() or {["default"] = function() print("internet making problems") end}

if list[game.PlaceId] then
    list[game.PlaceId]()
else
    list["default"]()
end

return {
    ["default"] = function()
        print("game not supported")
    end;
    [58367836] = "loadstring"
}
