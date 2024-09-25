local part = Instance.new("Part")
part.Name = "Bound"
part.Parent = workspace
game.Lighting.MainColorCorrection.TintColor = Color3.fromRGB(61, 171, 98)
game.Lighting.MainColorCorrection.Contrast = 0.2
game.Lighting.MainColorCorrection.Saturation = -0.7
local tween = game:GetService("TweenService")
tween:Create(game.Lighting.MainColorCorrection, TweenInfo.new(5), {Contrast = 0}):Play()
tween:Create(game.Lighting.MainColorCorrection, TweenInfo.new(5), {Saturation = 0}):Play()
local TweenService = game:GetService("TweenService")
local TW = TweenService:Create(game.Lighting.MainColorCorrection, TweenInfo.new(5),{TintColor = Color3.fromRGB(255, 255, 255)})
TW:Play()
local cue1 = Instance.new("Sound")
cue1.Parent = game.Workspace
cue1.Name = "Scream"
cue1.SoundId = "rbxassetid://9114397505"
local distort = Instance.new("DistortionSoundEffect")
distort.Parent = cue1
distort.Level = 1
local distort2 = Instance.new("DistortionSoundEffect")
distort2.Parent = cue1
distort2.Level = 1
local pitch = Instance.new("PitchShiftSoundEffect")
pitch.Parent = cue1
pitch.Octave = 0.5
local pitch2 = Instance.new("PitchShiftSoundEffect")
pitch2.Parent = cue1
pitch2.Octave = 0.5
local pitch3 = Instance.new("PitchShiftSoundEffect")
pitch3.Parent = cue1
pitch3.Octave = 0.5
cue1.Volume = 0.1
cue1:Play()
local cue2 = Instance.new("Sound")
cue2.Parent = game.Workspace
cue2.Name = "Spawn"
cue2.SoundId = "rbxassetid://9114221327"
cue2.Volume = 3
cue2:Play()
local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camara = game.Workspace.CurrentCamera
local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
	camara.CFrame = camara.CFrame * shakeCf
end)
camShake:Start()
camShake:ShakeOnce(10,3,0.1,6,2,0.5)
local speed = math.random(350,1050)
local delay = {"2", "2.5", "1.5", "1", "2.1"}
local fuck = delay[math.random(1, #delay)]
wait(2.8)

local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Doors-Mode-Remakes/refs/heads/main/ReboundSpawner.lua"))()

-- Create entity

local entity = Creator.createEntity({
    CustomName = "Rebound", -- Custom name of your entity
    Model = "rbxassetid://12847597717", -- Can be GitHub file or rbxassetid
    Speed = speed, -- Percentage, 100 = default Rush speed
    DelayTime = fuck, -- Time before starting cycles (seconds)
    HeightOffset = 0.3,
    CanKill = true,
    BreakLights = false,
    KillRange = 20,
    BackwardsMovement = true,
    FlickerLights = {
        false, -- Enabled
        2.5, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
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
    CustomDialog = {"w"}, -- Custom death message (can be as long as you want)
})

-----[[ Advanced ]]-----

entity.Debug.OnEntityEnteredRoom = function(room)
    print("Entity:", entity, "has entered room:", room)
end

entity.Debug.OnEntitySpawned = function(entityModel)
    print("Entity has spawned:", entityModel)
    wait(15)
    workspace.Rebound:Destroy()
end

entity.Debug.OnEntityDespawned = function(entityModel)
    print("Entity has despawned:", entityModel)
    cue1:Destroy()
    cue2:Destroy()
end

entity.Debug.OnEntityStartMoving = function(entityModel)
    print("Entity has started moving:", entityModel)
    game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
    
local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Doors-Mode-Remakes/refs/heads/main/ReboundSpawner.lua"))()

-- Create entity

local entity = Creator.createEntity({
    CustomName = "Rebound2", -- Custom name of your entity
    Model = "rbxassetid://12847597717", -- Can be GitHub file or rbxassetid
    Speed = speed, -- Percentage, 100 = default Rush speed
    DelayTime = fuck, -- Time before starting cycles (seconds)
    HeightOffset = 0.3,
    CanKill = true,
    BreakLights = false,
    KillRange = 20,
    BackwardsMovement = true,
    FlickerLights = {
        false, -- Enabled
        2.5, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
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
    CustomDialog = {"w"}, -- Custom death message (can be as long as you want)
})

-----[[ Advanced ]]-----

entity.Debug.OnEntityEnteredRoom = function(room)
    print("Entity:", entity, "has entered room:", room)
end

entity.Debug.OnEntitySpawned = function(entityModel)
    print("Entity has spawned:", entityModel)
    wait(15)
    workspace.Rebound2:Destroy()
end

entity.Debug.OnEntityDespawned = function(entityModel)
    print("Entity has despawned:", entityModel)
    cue1:Destroy()
    cue2:Destroy()
end

entity.Debug.OnEntityStartMoving = function(entityModel)
    print("Entity has started moving:", entityModel)
    game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
    
local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Doors-Mode-Remakes/refs/heads/main/ReboundSpawner.lua"))()

-- Create entity

local entity = Creator.createEntity({
    CustomName = "Rebound3", -- Custom name of your entity
    Model = "rbxassetid://12847597717", -- Can be GitHub file or rbxassetid
    Speed = speed, -- Percentage, 100 = default Rush speed
    DelayTime = fuck, -- Time before starting cycles (seconds)
    HeightOffset = 0.3,
    CanKill = true,
    BreakLights = false,
    KillRange = 20,
    BackwardsMovement = true,
    FlickerLights = {
        false, -- Enabled
        2.5, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
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
    CustomDialog = {"w"}, -- Custom death message (can be as long as you want)
})

-----[[ Advanced ]]-----

entity.Debug.OnEntityEnteredRoom = function(room)
    print("Entity:", entity, "has entered room:", room)
end

entity.Debug.OnEntitySpawned = function(entityModel)
    print("Entity has spawned:", entityModel)
    wait(15)
    workspace.Rebound3:Destroy()
end

entity.Debug.OnEntityDespawned = function(entityModel)
    print("Entity has despawned:", entityModel)
    cue1:Destroy()
    cue2:Destroy()
end

entity.Debug.OnEntityStartMoving = function(entityModel)
    print("Entity has started moving:", entityModel)
    game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
    
local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Doors-Mode-Remakes/refs/heads/main/ReboundSpawner.lua"))()

-- Create entity

local entity = Creator.createEntity({
    CustomName = "Rebound4", -- Custom name of your entity
    Model = "rbxassetid://12847597717", -- Can be GitHub file or rbxassetid
    Speed = speed, -- Percentage, 100 = default Rush speed
    DelayTime = fuck, -- Time before starting cycles (seconds)
    HeightOffset = 0.3,
    CanKill = true,
    BreakLights = false,
    KillRange = 20,
    BackwardsMovement = true,
    FlickerLights = {
        false, -- Enabled
        2.5, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
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
    CustomDialog = {"w"}, -- Custom death message (can be as long as you want)
})

-----[[ Advanced ]]-----

entity.Debug.OnEntityEnteredRoom = function(room)
    print("Entity:", entity, "has entered room:", room)
end

entity.Debug.OnEntitySpawned = function(entityModel)
    print("Entity has spawned:", entityModel)
    wait(15)
    workspace.Rebound4:Destroy()
end

entity.Debug.OnEntityDespawned = function(entityModel)
    print("Entity has despawned:", entityModel)
    cue1:Destroy()
    cue2:Destroy()
end

entity.Debug.OnEntityStartMoving = function(entityModel)
    print("Entity has started moving:", entityModel)
    game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
    
local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Doors-Mode-Remakes/refs/heads/main/ReboundSpawner.lua"))()

-- Create entity

local entity = Creator.createEntity({
    CustomName = "Rebound5", -- Custom name of your entity
    Model = "rbxassetid://12847597717", -- Can be GitHub file or rbxassetid
    Speed = speed, -- Percentage, 100 = default Rush speed
    DelayTime = fuck, -- Time before starting cycles (seconds)
    HeightOffset = 0.3,
    CanKill = true,
    BreakLights = false,
    KillRange = 20,
    BackwardsMovement = true,
    FlickerLights = {
        false, -- Enabled
        2.5, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
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
    CustomDialog = {"w"}, -- Custom death message (can be as long as you want)
})

-----[[ Advanced ]]-----

entity.Debug.OnEntityEnteredRoom = function(room)
    print("Entity:", entity, "has entered room:", room)
end

entity.Debug.OnEntitySpawned = function(entityModel)
    print("Entity has spawned:", entityModel)
    wait(15)
    workspace.Rebound5:Destroy()
end

entity.Debug.OnEntityDespawned = function(entityModel)
    print("Entity has despawned:", entityModel)
    cue1:Destroy()
    cue2:Destroy()
    part:Destroy()
end

entity.Debug.OnEntityStartMoving = function(entityModel)
    print("Entity has started moving:", entityModel)
end

entity.Debug.OnEntityFinishedRebound = function(entityModel)
    print("Entity finished rebound:", entityModel)
end

entity.Debug.OnDeath = function()
    warn("You died.")
    print("fuck.")
loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/Jumpscares/main/ReboundJumpscare.txt"))()
wait(1.8)
loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/GuidingLight/main/BoundDie.txt"))()
end

------------------------

-- Run the created entity
Creator.runEntity(entity)
end

entity.Debug.OnEntityFinishedRebound = function(entityModel)
    print("Entity finished rebound:", entityModel)
end

entity.Debug.OnDeath = function()
    warn("You died.")
    print("fuck.")
loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/Jumpscares/main/ReboundJumpscare.txt"))()
wait(1.8)
loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/GuidingLight/main/BoundDie.txt"))()
end

------------------------

-- Run the created entity
Creator.runEntity(entity)
end

entity.Debug.OnEntityFinishedRebound = function(entityModel)
    print("Entity finished rebound:", entityModel)
end

entity.Debug.OnDeath = function()
    warn("You died.")
    print("fuck.")
loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/Jumpscares/main/ReboundJumpscare.txt"))()
wait(1.8)
loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/GuidingLight/main/BoundDie.txt"))()
end

------------------------

-- Run the created entity
Creator.runEntity(entity)
end

entity.Debug.OnEntityFinishedRebound = function(entityModel)
    print("Entity finished rebound:", entityModel)
end

entity.Debug.OnDeath = function()
    warn("You died.")
    print("fuck.")
loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/Jumpscares/main/ReboundJumpscare.txt"))()
wait(1.8)
loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/GuidingLight/main/BoundDie.txt"))()
end

------------------------

-- Run the created entity
Creator.runEntity(entity)
end

entity.Debug.OnEntityFinishedRebound = function(entityModel)
    print("Entity finished rebound:", entityModel)
end

entity.Debug.OnDeath = function()
    warn("You died.")
    print("fuck.")
loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/Jumpscares/main/ReboundJumpscare.txt"))()
wait(1.8)
loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/GuidingLight/main/BoundDie.txt"))()
end

------------------------

-- Run the created entity
Creator.runEntity(entity)
