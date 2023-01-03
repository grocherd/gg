
function smoothTeleport(part, endPoint, speed)
    speed = speed or 16

    session = session and session + 1 or 1
    local currentSession = session

    local bodyVelocity = Instance.new('BodyVelocity', part)
    bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    bodyVelocity.Velocity = Vector3.new(0, 0, 0)

    local oldPoint = part.CFrame
    while session == currentSession do
        local endPoint = typeof(endPoint) == 'Vector3' and endPoint or endPoint.Position
        local time = task.wait()
        local look = CFrame.new(part.Position, endPoint).LookVector
        local newVector = time*look*speed
        oldPoint += newVector
        part.CFrame = oldPoint
        newVector = newVector+look
        if (part.CFrame.Position-endPoint).Magnitude < newVector.Magnitude then
            part.CFrame = CFrame.new(endPoint)
            bodyVelocity:Destroy()
            break
        end
    end
end
local libary = loadstring(game:HttpGet("https://pastebin.com/raw/RvJ0qewm", true))()
local main = libary:CreateWindow("BAKA")

local mod = main:Button("GOD MODE", function()
game.Players.LocalPlayer.Character.Info.Health:Destroy()
_G.en = not _G.en
print('_G.en =', _G.en)

lplr = game.Players.LocalPlayer
while task.wait() and _G.en do
    spawn(function()
        local character = lplr.Character
        local qSpell = character and character:FindFirstChild('Q')
        local eSpell = character and character:FindFirstChild('E')
        qSpell = qSpell and qSpell:Destroy()
        eSpell = eSpell and eSpell:Destroy()
        game:GetService("ReplicatedStorage").Core.CoreEvents.ClientServerNetwork.MagicFunction:InvokeServer("Q", "Spell")
        game:GetService("ReplicatedStorage").Core.CoreEvents.ClientServerNetwork.MagicFunction:InvokeServer("E", "Spell")
    end)
end
end)
local mod = main:Button("TP HOST", function()
	getgenv().farmer = true
while wait(0.1) do
    if getgenv().farmer == true then 
smoothTeleport(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").AcceleratorMOB.HumanoidRootPart.Position - Vector3.new(0,-1,0), 200)
    end
end
end)
local mod = main:Button("START", function()
smoothTeleport(game.Players.LocalPlayer.Character.HumanoidRootPart, Vector3.new(59.55501937866211, 13.528316497802734, 81.37574768066406), 100)
wait(1)
smoothTeleport(game.Players.LocalPlayer.Character.HumanoidRootPart, Vector3.new(-64.27962493896484, 5.777738571166992, 217.48968505859375), 100)
end)
local mod = main:Button("TP MOB", function()
	getgenv().farmer = true
while wait(0.1) do
    if getgenv().farmer == true then 
smoothTeleport(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Mobs.Stage1.SnowMinion.HumanoidRootPart, 200)
    end
end

end)
local mod = main:Button("Rejoin", function()
local A_1 = "Start"
local Event = game:GetService("ReplicatedStorage").Core.CoreEvents.PartyEvents.Comm
Event:FireServer(A_1)
end)


	getgenv().farmer = true
while wait(1) do
    if getgenv().farmer == true then 
local A_1 = "JoinDungeonParty"
local Event = game:GetService("ReplicatedStorage").Core.CoreEvents.PartyEvents.DungeonComm
Event:FireServer(A_1)
--local A_1 = "TeleportPartyLobby"
--local Event = game:GetService("ReplicatedStorage").Core.CoreEvents.PartyEvents.DungeonRequest
--Event:InvokeServer(A_1)
    end
end
