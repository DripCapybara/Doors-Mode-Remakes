loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Test/main/Doors/Functions.lua"))()
local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Test/refs/heads/main/Doors/Achievements.lua"))()

local reb = false
local seer = false
local mat = false
local phil = false
local blink = false
local clam = false

Caption('You Executed the Script', 2)
wait(2)
Caption('Credits to zavaled for Making Endless Doors',1)
wait(2)
Caption('Credits to Cyrratti for making the original script.',3)
wait(3)
Caption('Credits to DripCapybara for fixing Endless Mode',3)

loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/Endless-Doors-In-Doors/main/custom%20doors%20sounds.txt"))()
loadstring(game:HttpGet("https://pastebin.com/raw/6brG9uma"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Doors-Mode-Remakes/refs/heads/main/Victrola.lua"))()

coroutine.wrap(function()
    while true do
        wait()
        workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Door.Door.Unlock.SoundId = "rbxassetid://7758131110"
        workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Door.Door.SlamOpen.SoundId = "rbxassetid://9113647192"
        workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Door.Door.SlamOpen.TimePosition = 0.2
    end
end)()

game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()

-- Rebound
coroutine.wrap(function()
    while true do
        wait(350)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
          if workspace:FindFirstChild("SeekMovingNewClone") or workspace.CurrentRooms:FindFirstChild("50") then
          return
    end
        wait(1.5)
loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Doors-Mode-Remakes/refs/heads/main/Rebound.lua"))()
if reb == false then
wait(3)
reb = true
Achievements({
    Title = "I Always Come Back.",
    Desc = "Encounter Rebound.",
    Reason = " ",
    Image = GetGitImage("https://github.com/check78/entity-images/blob/main/cookiemonster.png?raw=true","boundbadgev2"),
})
end
    end
end)()

-- Overseer Eyes
coroutine.wrap(function()
    while true do
        wait(150)
game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
  if workspace:FindFirstChild("SeekMovingNewClone") or workspace.CurrentRooms:FindFirstChild("50") then
          return
    end
wait(0.5)
loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Doors-Mode-Remakes/refs/heads/main/Overseer.lua"))()
if seer == false then
wait(3)
seer = true
Achievements({
    Title = "Staring Back.",
    Desc = "Encounter Overseer Eyes.",
    Reason = " ",
    Image = GetGitImage("https://github.com/check78/worldcuuuup/blob/main/OverseerBadge.png?raw=true","seerbadge"),
})
end
    end
end)()

-- Matcher
coroutine.wrap(function()
    while true do
        wait(150)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
          if workspace:FindFirstChild("SeekMovingNewClone") or workspace.CurrentRooms:FindFirstChild("50") then
          return
    end
        wait(0.3)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Doors-Mode-Remakes/refs/heads/main/Matcher.lua"))()
        if mat == false then
        wait(3)
        mat = true
Achievements({
    Title = "No match for me!",
    Desc = "Encounter Matcher.",
    Reason = " ",
    Image = GetGitImage("https://github.com/check78/worldcuuuup/blob/main/MatchBadge.png?raw=true","matchbadge"),
})
end
    end
end)()

-- Claim
coroutine.wrap(function()
    while true do
        wait(750)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
          if workspace:FindFirstChild("SeekMovingNewClone") or workspace.CurrentRooms:FindFirstChild("50") then
          return
    end
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Doors-Mode-Remakes/refs/heads/main/Claim.lua"))()
if clam == false then
wait(3)
clam = true
Achievements({
    Title = "In Sight.",
    Desc = "Encounter Claim.",
    Reason = " ",
    Image = GetGitImage("https://github.com/check78/entity-images/blob/main/InSight.png?raw=true","Im_Not_Playing_These_Games"),
})
end
    end
end)()

-- Phil
coroutine.wrap(function()
    while true do
        wait(1500)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        local Phil = Instance.new("Part")
Phil.Anchored = true
Phil.CanCollide = false
Phil.Parent = workspace
Phil.Transparency = 1
local face = game:GetObjects("rbxassetid://10736929559")[1]
face.Parent = Phil
face.ImageLabel.Image = GetGitImage("https://github.com/check78/entity-images/blob/main/Untitled241_20230322155244.png?raw=true","phil")
local num=0
if currentLoadedRoom:FindFirstChild("Nodes") then
   num = math.floor(#currentLoadedRoom.Nodes:GetChildren()/2)
end
Phil.CFrame=(
	num==0 and currentLoadedRoom[currentLoadedRoom.Name] or currentLoadedRoom.Nodes[num]
).CFrame + Vector3.new(0, 5, 0)
wait(1)
ModuleEvents = require(game:GetService("ReplicatedStorage").ClientModules.Module_Events)
ModuleEvents.shatter(workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value])
    Phil.CFrame = CFrame.new(0, 0, 35000)
		local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
		local camara = game.Workspace.CurrentCamera
		local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
			camara.CFrame = camara.CFrame * shakeCf
		end)
		local camara = game.Workspace.CurrentCamera
		local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
			camara.CFrame = camara.CFrame * shakeCf
		end)
		camShake:Start()
		camShake:ShakeOnce(100,50,0.5,0.5)
        local roast = Instance.new("Sound")
    roast.Parent = workspace
    roast.Name = "Break2"
    roast.SoundId = "rbxassetid://6737582037"
    roast.Volume = 1
    local roast1 = Instance.new("Sound")
    roast1.Parent = workspace
    roast1.Name = "Break1"
    roast1.SoundId = "rbxassetid://9103909576"
    roast1.Volume = 1
    local roast2 = Instance.new("Sound")
    roast2.Parent = workspace
    roast2.Name = "Break2"
    roast2.SoundId = "rbxassetid://5961220911"
    roast2.Volume = 1
    roast2:Play()
    roast1:Play()
    roast:Play()
	local tweeninfo = TweenInfo.new(0.5)
	local info = {Color = Color3.new(0, 0, 0)}
	for i,v in pairs(workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]:GetDescendants()) do
		if v:IsA("Light") then
			game.TweenService:Create(v,tweeninfo,info):Play()
			if v.Parent.Name == "LightFixture" then
				game.TweenService:Create(v.Parent,tweeninfo,info):Play()
			end
		end
	end
workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Assets.Rug:Destroy()
room = game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
for i, v in pairs(workspace.CurrentRooms[room].Parts:GetChildren()) do 
	if v.Name == "Wall" then
		v.Material = "Limestone"
		v.Color = Color3.new(0, 0, 0)
			if v:FindFirstChild("Wallpaper") ~= nil then
			v.Wallpaper:Destroy()
			end
	end
end
for i, v in pairs(workspace.CurrentRooms[room].Parts.DropCeiling:GetChildren()) do 
	if v.Name == "Ceiling" then
		v.Material = "Limestone"
		v.Color = Color3.new(0, 0, 0)
	end
end
for i, v in pairs(workspace.CurrentRooms[room].Parts.DropCeiling.Model:GetChildren()) do 
	v.Material = "Limestone"
	v.Color = Color3.new(0, 0, 0)
end
    for i,v in pairs(workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Parts:GetDescendants()) do
  if v:IsA("BasePart") and game.ReplicatedStorage.GameData.LatestRoom.Value < 90 then
        v.Material = Enum.Material.Limestone
        v.Color = Color3.new(0, 0, 0) -- sets the color
        end
    end
        if phil == false then
        wait(3)
        phil = true
Achievements({
    Title = "I can't see anything!",
    Desc = "Encounter Phil.",
    Reason = " ",
    Image = GetGitImage("https://github.com/check78/worldcuuuup/blob/main/PhilStone.png?raw=true","philbadge"),
})
end
    end
end)()

-- Blink
coroutine.wrap(function()
    while true do
        wait(750)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
          if workspace:FindFirstChild("SeekMovingNewClone") or workspace.CurrentRooms:FindFirstChild("50") then
          return
    end
       loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Doors-Mode-Remakes/refs/heads/main/Blink.lua"))()
        if blink == false then
            wait(5)
            blink = true
Achievements({
    Title = "Green Light, Red Light!",
    Desc = "Encounter Blink.",
    Reason = " ",
    Image = GetGitImage("https://github.com/check78/entity-images/blob/main/omg.png?raw=true","mmmtasty"),
})
end
    end
end)()

-- Greed
coroutine.wrap(function()
    while true do
        wait(450)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
          if workspace:FindFirstChild("SeekMovingNewClone") or workspace.CurrentRooms:FindFirstChild("50") then
          return
    end
       
local ded = false
local gone = false
local sound = Instance.new("Sound",game.Lighting)
sound.SoundId = "rbxassetid://166047422"
sound.Volume = 5
sound:Play()

if game.Players.LocalPlayer.Character.Humanoid.Health<=0 then
   ded = true
end

game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
if gone == false then
		if ded == false then
		    game.Players.LocalPlayer.Character.Humanoid:TakeDamage(100)
		    ded = true
		loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/Jumpscares/main/GreedJumpscare.txt"))()
		    game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Greed"
		wait(1)
Achievements({
 Title = "Too Greedy.",
 Desc = "Die to Greed",
 Reason = "",
 Image = GetGitImage("https://github.com/check78/worldcuuuup/blob/main/GreedBadge1.png?raw=true","GreedyBadge")
})
        end
end
end)

local tweenColor = game:GetService("TweenService"):Create(game.Lighting.MainColorCorrection, TweenInfo.new(2), {Contrast = -0.19})
     tweenColor:Play()
     local tweenSat = game:GetService("TweenService"):Create(game.Lighting.MainColorCorrection, TweenInfo.new(2), {Saturation = -0.19})
     tweenSat:Play()
     local TW2 = game.TweenService:Create(game.Lighting.MainColorCorrection, TweenInfo.new(2),{TintColor = Color3.fromRGB(255, 191, 154)})
		TW2:Play()
	wait(5.7)
		local tween = game:GetService("TweenService")
		tween:Create(game.Lighting.MainColorCorrection, TweenInfo.new(4), {Contrast = 0}):Play()
		tween:Create(game.Lighting.MainColorCorrection, TweenInfo.new(4), {Saturation = 0}):Play()
		local TW = game.TweenService:Create(game.Lighting.MainColorCorrection, TweenInfo.new(4),{TintColor = Color3.fromRGB(255, 255, 255)})
		TW:Play()
		gone = true
    end
end)()

loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/Entities/main/SilenceEndless.txt"))()
 workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Assets.ChildAdded:Connect(function(eye)
	if eye.Name == "LeverForGate" then
		wait(0.6)
        if workspace:FindFirstChild("Overseer") then
        workspace.Overseer:Destroy()
        end
	end
end)

-- No Overseer in Seek Chase
workspace.ChildAdded:Connect(function(seek)
	if seek.Name == "SeekMovingNewClone" then
		wait(0.6)
		if workspace:FindFirstChild("Overseer") then
        workspace.Overseer:Destroy()
        end
	end
end)

-- No Overseer and Normal Eyes Combo
workspace.ChildAdded:Connect(function(seek)
	if seek.Name == "Eyes" then
		wait(0.6)
        if workspace:FindFirstChild("Overseer") then
        workspace.Overseer:Destroy()
        end
	end
end)

--workspace.Ambience_Seek.SoundId = GetGitSound("https://github.com/check78/worldcuuuup/blob/main/EndlessSeekChase.mp3?raw=true","EndlessSeekChase")
--workspace.Ambience_Seek.Volume = 5
    local roast = Instance.new("Sound")
    roast.Parent = workspace
    roast.Name = "Omg"
    roast.SoundId = "rbxassetid://4835664238"
    roast.Volume = 1
    roast.Pitch = 1
    roast.TimePosition = 0.2
    roast:Play()
local Sounds = Instance.new("Folder")
Sounds.Name = "Mimic"
Sounds.Parent = workspace
--loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/Endless-Doors-In-Doors/main/TextChatService.lua"))()