if not game:IsLoaded() then
    game.Loaded:Wait()
end

local url = "https://raw.githubusercontent.com/IdkUser1k/Water-Hub/refs/heads/main/Games"
local success, source = pcall(game.HttpGet, game, url)

if not success or type(source) ~= "string" or source == "" then
    return
end

local execute = loadstring(source)
if execute then
    pcall(execute)
end
