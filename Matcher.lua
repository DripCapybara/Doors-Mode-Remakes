game.Lighting.MainColorCorrection.TintColor = Color3.fromRGB(212, 255, 0)
game.Lighting.MainColorCorrection.Contrast = 0.3
local tween = game:GetService("TweenService")
tween:Create(game.Lighting.MainColorCorrection, TweenInfo.new(0.5), {Contrast = 0}):Play()
local TweenService = game:GetService("TweenService")
local TW = TweenService:Create(game.Lighting.MainColorCorrection, TweenInfo.new(0.5),{TintColor = Color3.fromRGB(255, 255, 255)})
TW:Play()
    local roast = Instance.new("Sound")
    roast.Parent = workspace
    roast.Name = "roast"
    roast.SoundId = "rbxassetid://9125936117"
    roast.Volume = 0.5
    roast.Pitch = 3
    roast:Play()
    wait(0.6)
    roast:Destroy()

local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Doors-Mode-Remakes/refs/heads/main/ModifiedSpawner.lua"))()

-- Create entity

local entity = Creator.createEntity({
    CustomName = "Matcher", -- Custom name of your entity
    Model = "rbxassetid://12459977063", -- Can be GitHub file or rbxassetid
    Speed = 150, -- Percentage, 100 = default Rush speed
    DelayTime = 0.8, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    BreakLights = true,
    KillRange = 40,
    BackwardsMovement = false,
    FlickerLights = {
        false, -- Enabled
        2.5, -- Time (seconds)
    },
    Cycles = {
        Min = 0,
        Max = 1
    },
    CamShake = {
        true, -- Enabled
        {5, 15, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled ('false' if you don't want jumpscare)
        {
            Image1 = "https://www.roblox.com/library/11862656491", -- Image1 url
            Image2 = "https://www.roblox.com/library/11862656491", -- Image2 url
            Shake = false,
            Sound1 = {
                0, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                5567523008, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled
                Color3.fromRGB(6, 38, 135), -- Color
            },
            Tease = {
                false, -- Enabled ('false' if you don't want tease)
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You died to Rebound...", "It appears at the next door and has a chance to stay there or run back to the latest door.", "He will come back many times after his initial spawn", "so hide every next door until it is safe.."}, -- Custom death message (can be as long as you want)
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityModel)
    print("Entity has spawned:", entityModel)
end

entity.Debug.OnEntityDespawned = function(entityModel)
    print("Entity has despawned:", entityModel)
    workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value]:WaitForChild("Door").ClientOpen:FireServer()
end

entity.Debug.OnEntityStartMoving = function(entityModel)
    print("Entity has started moving:", entityModel)
    wait(15)
    workspace.Matcher:Destroy()
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", "has entered room:", room)
end

entity.Debug.OnEntityFinishedRebound = function(entityModel)
    print("Entity finished rebound:", entityModel)
end

entity.Debug.OnDeath = function()
    warn("You died.")
loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/Jumpscares/main/MatcherJumpscare.txt"))()
wait(1.8)
loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/GuidingLight/main/MatchDie.txt"))()
end

------------------------

-- Run the created entity
Creator.runEntity(entity)
