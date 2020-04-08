local commands = {}
commands.prefix = ";"
local looped = {}
local function finduser(name)
for i,v in pairs(game.Players:GetPlayers()) do
if string.lower(v.Name):match(string.lower(name)) then
return v
end
end
return nil
end
function commands.kill(speaker,args)
local t = args[1]
if t then
local target = finduser(t)
if target then
local A_1 = 9999
local A_2 = target
local A_3 = 
{
game.Players.LocalPlayer
}
local A_4 = 
{
	["nightTimeMin"] = 0, 
	["stealRange"] = 0, 
	["percentageDamage"] = 0, 
	["animFrames"] = 0, 
	["nightTimeMax"] = 0, 
	["defaultBubbleRadius"] = 0, 
	["veloTime"] = 0, 
	["veloSpeed"] = 0, 
	["healRange"] = 0, 
	["percentageHeal"] = 0, 
	["cooldowns"] = 
{
	["E"] = 0, 
	["G"] =0, 
	["F"] = 0
}
}
local Event = game:GetService("ReplicatedStorage").RemoteFunctions.HealBall
Event:FireServer(A_1, A_2, A_3, A_4)
end
end
end
function commands.loopkill(speaker,args)
local t = args[1]
if t then
local target = finduser(t)
if target then
looped[target] = true
end
end
end
function commands.unloopkill(speaker,args)
local t = args[1]
if t then
local target = finduser(t)
if target then
if looped[target] == true then
looped[target] = false
end
end
end
end
while wait() do
for i,v in pairs(game.Players:GetPlayers()) do
if v[looped] then
local A_1 = 9999
local A_2 = v
local A_3 = 
{
game.Players.LocalPlayer
}
local A_4 = 
{
	["nightTimeMin"] = 0, 
	["stealRange"] = 0, 
	["percentageDamage"] = 0, 
	["animFrames"] = 0, 
	["nightTimeMax"] = 0, 
	["defaultBubbleRadius"] = 0, 
	["veloTime"] = 0, 
	["veloSpeed"] = 0, 
	["healRange"] = 0, 
	["percentageHeal"] = 0, 
	["cooldowns"] = 
{
	["E"] = 0, 
	["G"] =0, 
	["F"] = 0
}
}
local Event = game:GetService("ReplicatedStorage").RemoteFunctions.HealBall
Event:FireServer(A_1, A_2, A_3, A_4)
end
end
return commands
