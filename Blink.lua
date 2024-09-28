local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camara = game.Workspace.CurrentCamera
local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
	camara.CFrame = camara.CFrame * shakeCf
end)

wait(0.5)
 
local currentLoadedRoom=workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
local eyes=game:GetObjects("rbxassetid://12621816107")[1]
local dances = {"0.1", "0.2", "0.3", "0.4", "0.5", "0.6", "0.7", "0.8", "0.9", "1", "1.07"}
local fuckyou = {"0.1", "0.2", "0.3", "0.4", "0.5", "0.05", "0.3", "0.4", "0.5", "0.3", "0.4", "0.5"}
local mom = {"2.5", "3.5", "5", "7", "4", "3", "8", "10", "9"}

if eyes then end
game.Workspace.CurrentRooms.ChildAdded:Connect(function()
    game.Workspace:FindFirstChild("Blink"):Destroy()
end)
local num=0

if currentLoadedRoom:FindFirstChild("Nodes") then
   num = math.floor(#currentLoadedRoom.Nodes:GetChildren()/2)
end

eyes.CFrame=(
	num==0 and currentLoadedRoom[currentLoadedRoom.Name] or currentLoadedRoom.Nodes[num]
).CFrame + Vector3.new(0, 3, 0)


eyes.Parent=workspace
eyes.Initiate:Play()
local Blink = Instance.new("Sound")
Blink.Parent = eyes
Blink.SoundId = "rbxassetid://9120572970"
Blink.Volume = 7
local Blink2 = Instance.new("Sound")
Blink2.Parent = eyes
Blink2.SoundId = "rbxassetid://9119294536"
Blink2.Volume = 7
Blink:Play()
Blink2:Play()
eyes.Change:Play()
    local death1 = Instance.new("Sound")
    death1.Parent = eyes
    death1.Name = "BlinkDie"
    death1.SoundId = "rbxassetid://5867708670"
    death1.Volume = 0.7
    death1.Pitch = 2
    local distort = Instance.new("DistortionSoundEffect")
    distort.Level = 0.9
    distort.Parent = death1
    local eq = Instance.new("EqualizerSoundEffect")
    eq.HighGain = -60
    eq.MidGain = 0
    eq.LowGain = 0
    eq.Parent = death1
    local no = false
if game.Players.LocalPlayer.Character.Humanoid.Health<=0 then
   no = true
end
wait(1)
while true do
if not game.Workspace:FindFirstChild("Blink") then break end
eyes.Attachment.Close.Enabled = false
eyes.Attachment.Open.Enabled = true
Blink:Play()
Blink2:Play()
eyes.Change:Play()
wait(1.2)
	if game.Players.LocalPlayer.Character.Humanoid.MoveDirection ~= Vector3.new(0,0,0) then
	if no == false then
if workspace.Ambience_FigureEnd.Playing or workspace.Ambience_FigureStart.Playing or workspace.Ambience_Figure.Playing or workspace.Ambience_Seek.Playing or workspace:FindFirstChild("SeekMoving") or workspace:FindFirstChild("AmbushMoving") or workspace:FindFirstChild("RushMoving") or workspace:FindFirstChild("Bound") or workspace:FindFirstChild("Matcher") or workspace.Ambience_Ambush.Playing then
return
end
		game.Players.LocalPlayer.Character.Humanoid:TakeDamage(1000)
	    death1:Play()
	game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Blink"
	no = true
	wait(1.8)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/GuidingLight/main/BlinkDie.txt"))()
	end
	end
eyes.Sound.Pitch = dances[math.random(1, #dances)]
camShake:Start()
camShake:ShakeOnce(5, 15, 0.1, 1)
wait(fuckyou[math.random(1, #fuckyou)])
	if game.Players.LocalPlayer.Character.Humanoid.MoveDirection ~= Vector3.new(0,0,0) then
	if no == false then
if workspace.Ambience_FigureEnd.Playing or workspace.Ambience_FigureStart.Playing or workspace.Ambience_Figure.Playing or workspace.Ambience_Seek.Playing or workspace:FindFirstChild("SeekMoving") or workspace:FindFirstChild("AmbushMoving") or workspace:FindFirstChild("RushMoving") or workspace:FindFirstChild("Bound") or workspace:FindFirstChild("Matcher") or workspace.Ambience_Ambush.Playing then
return
end
		game.Players.LocalPlayer.Character.Humanoid:TakeDamage(1000)
	    death1:Play()
	game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Blink"
	no = true
	wait(1.8)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/GuidingLight/main/BlinkDie.txt"))()
	end
	end
eyes.Sound.Pitch = dances[math.random(1, #dances)]
camShake:Start()
camShake:ShakeOnce(5, 15, 0.1, 1)
wait(fuckyou[math.random(1, #fuckyou)])
	if game.Players.LocalPlayer.Character.Humanoid.MoveDirection ~= Vector3.new(0,0,0) then
	if no == false then
if workspace.Ambience_FigureEnd.Playing or workspace.Ambience_FigureStart.Playing or workspace.Ambience_Figure.Playing or workspace.Ambience_Seek.Playing or workspace:FindFirstChild("SeekMoving") or workspace:FindFirstChild("AmbushMoving") or workspace:FindFirstChild("RushMoving") or workspace:FindFirstChild("Bound") or workspace:FindFirstChild("Matcher") or workspace.Ambience_Ambush.Playing then
return
end
		game.Players.LocalPlayer.Character.Humanoid:TakeDamage(1000)
	    death1:Play()
	game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Blink"
	no = true
	wait(1.8)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/GuidingLight/main/BlinkDie.txt"))()
	end
	end
eyes.Sound.Pitch = dances[math.random(1, #dances)]
camShake:Start()
camShake:ShakeOnce(5, 15, 0.1, 1)
wait(fuckyou[math.random(1, #fuckyou)])
	if game.Players.LocalPlayer.Character.Humanoid.MoveDirection ~= Vector3.new(0,0,0) then
	if no == false then
if workspace.Ambience_FigureEnd.Playing or workspace.Ambience_FigureStart.Playing or workspace.Ambience_Figure.Playing or workspace.Ambience_Seek.Playing or workspace:FindFirstChild("SeekMoving") or workspace:FindFirstChild("AmbushMoving") or workspace:FindFirstChild("RushMoving") or workspace:FindFirstChild("Bound") or workspace:FindFirstChild("Matcher") or workspace.Ambience_Ambush.Playing then
return
end
		game.Players.LocalPlayer.Character.Humanoid:TakeDamage(1000)
	    death1:Play()
	game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Blink"
	no = true
	wait(1.8)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/GuidingLight/main/BlinkDie.txt"))()
	end
	end
eyes.Sound.Pitch = dances[math.random(1, #dances)]
camShake:Start()
camShake:ShakeOnce(5, 15, 0.1, 1)
wait(fuckyou[math.random(1, #fuckyou)])
	if game.Players.LocalPlayer.Character.Humanoid.MoveDirection ~= Vector3.new(0,0,0) then
	if no == false then
if workspace.Ambience_FigureEnd.Playing or workspace.Ambience_FigureStart.Playing or workspace.Ambience_Figure.Playing or workspace.Ambience_Seek.Playing or workspace:FindFirstChild("SeekMoving") or workspace:FindFirstChild("AmbushMoving") or workspace:FindFirstChild("RushMoving") or workspace:FindFirstChild("Bound") or workspace:FindFirstChild("Matcher") or workspace.Ambience_Ambush.Playing then
return
end
		game.Players.LocalPlayer.Character.Humanoid:TakeDamage(1000)
	    death1:Play()
	game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Blink"
	no = true
	wait(1.8)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/GuidingLight/main/BlinkDie.txt"))()
	end
	end
eyes.Sound.Pitch = dances[math.random(1, #dances)]
camShake:Start()
camShake:ShakeOnce(5, 15, 0.1, 1)
wait(fuckyou[math.random(1, #fuckyou)])
	if game.Players.LocalPlayer.Character.Humanoid.MoveDirection ~= Vector3.new(0,0,0) then
	if no == false then
if workspace.Ambience_FigureEnd.Playing or workspace.Ambience_FigureStart.Playing or workspace.Ambience_Figure.Playing or workspace.Ambience_Seek.Playing or workspace:FindFirstChild("SeekMoving") or workspace:FindFirstChild("AmbushMoving") or workspace:FindFirstChild("RushMoving") or workspace:FindFirstChild("Bound") or workspace:FindFirstChild("Matcher") or workspace.Ambience_Ambush.Playing then
return
end
		game.Players.LocalPlayer.Character.Humanoid:TakeDamage(1000)
	    death1:Play()
	game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Blink"
	no = true
	wait(1.8)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/GuidingLight/main/BlinkDie.txt"))()
	end
	end
eyes.Sound.Pitch = dances[math.random(1, #dances)]
camShake:Start()
camShake:ShakeOnce(5, 15, 0.1, 1)
wait(fuckyou[math.random(1, #fuckyou)])
	if game.Players.LocalPlayer.Character.Humanoid.MoveDirection ~= Vector3.new(0,0,0) then
	if no == false then
if workspace.Ambience_FigureEnd.Playing or workspace.Ambience_FigureStart.Playing or workspace.Ambience_Figure.Playing or workspace.Ambience_Seek.Playing or workspace:FindFirstChild("SeekMoving") or workspace:FindFirstChild("AmbushMoving") or workspace:FindFirstChild("RushMoving") or workspace:FindFirstChild("Bound") or workspace:FindFirstChild("Matcher") or workspace.Ambience_Ambush.Playing then
return
end
		game.Players.LocalPlayer.Character.Humanoid:TakeDamage(1000)
	    death1:Play()
	game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Blink"
	no = true
	wait(1.8)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/GuidingLight/main/BlinkDie.txt"))()
	end
	end
eyes.Sound.Pitch = dances[math.random(1, #dances)]
camShake:Start()
camShake:ShakeOnce(5, 15, 0.1, 1)
wait(fuckyou[math.random(1, #fuckyou)])
	if game.Players.LocalPlayer.Character.Humanoid.MoveDirection ~= Vector3.new(0,0,0) then
	if no == false then
if workspace.Ambience_FigureEnd.Playing or workspace.Ambience_FigureStart.Playing or workspace.Ambience_Figure.Playing or workspace.Ambience_Seek.Playing or workspace:FindFirstChild("SeekMoving") or workspace:FindFirstChild("AmbushMoving") or workspace:FindFirstChild("RushMoving") or workspace:FindFirstChild("Bound") or workspace:FindFirstChild("Matcher") or workspace.Ambience_Ambush.Playing then
return
end
		game.Players.LocalPlayer.Character.Humanoid:TakeDamage(1000)
	    death1:Play()
	game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Blink"
	no = true
	wait(1.8)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/GuidingLight/main/BlinkDie.txt"))()
	end
	end
eyes.Sound.Pitch = dances[math.random(1, #dances)]
camShake:Start()
camShake:ShakeOnce(5, 15, 0.1, 1)
wait(fuckyou[math.random(1, #fuckyou)])
	if game.Players.LocalPlayer.Character.Humanoid.MoveDirection ~= Vector3.new(0,0,0) then
	if no == false then
if workspace.Ambience_FigureEnd.Playing or workspace.Ambience_FigureStart.Playing or workspace.Ambience_Figure.Playing or workspace.Ambience_Seek.Playing or workspace:FindFirstChild("SeekMoving") or workspace:FindFirstChild("AmbushMoving") or workspace:FindFirstChild("RushMoving") or workspace:FindFirstChild("Bound") or workspace:FindFirstChild("Matcher") or workspace.Ambience_Ambush.Playing then
return
end
		game.Players.LocalPlayer.Character.Humanoid:TakeDamage(1000)
	    death1:Play()
	game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Blink"
	no = true
	wait(1.8)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/GuidingLight/main/BlinkDie.txt"))()
	end
	end
eyes.Sound.Pitch = dances[math.random(1, #dances)]
camShake:Start()
camShake:ShakeOnce(5, 15, 0.1, 1)
wait(fuckyou[math.random(1, #fuckyou)])
	if game.Players.LocalPlayer.Character.Humanoid.MoveDirection ~= Vector3.new(0,0,0) then
	if no == false then
if workspace.Ambience_FigureEnd.Playing or workspace.Ambience_FigureStart.Playing or workspace.Ambience_Figure.Playing or workspace.Ambience_Seek.Playing or workspace:FindFirstChild("SeekMoving") or workspace:FindFirstChild("AmbushMoving") or workspace:FindFirstChild("RushMoving") or workspace:FindFirstChild("Bound") or workspace:FindFirstChild("Matcher") or workspace.Ambience_Ambush.Playing then
return
end
		game.Players.LocalPlayer.Character.Humanoid:TakeDamage(1000)
	    death1:Play()
	game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Blink"
	no = true
	wait(1.8)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/GuidingLight/main/BlinkDie.txt"))()
	end
	end
eyes.Sound.Pitch = dances[math.random(1, #dances)]
camShake:Start()
camShake:ShakeOnce(5, 15, 0.1, 1)
wait(fuckyou[math.random(1, #fuckyou)])
	if game.Players.LocalPlayer.Character.Humanoid.MoveDirection ~= Vector3.new(0,0,0) then
	if no == false then
if workspace.Ambience_FigureEnd.Playing or workspace.Ambience_FigureStart.Playing or workspace.Ambience_Figure.Playing or workspace.Ambience_Seek.Playing or workspace:FindFirstChild("SeekMoving") or workspace:FindFirstChild("AmbushMoving") or workspace:FindFirstChild("RushMoving") or workspace:FindFirstChild("Bound") or workspace:FindFirstChild("Matcher") or workspace.Ambience_Ambush.Playing then
return
end
		game.Players.LocalPlayer.Character.Humanoid:TakeDamage(1000)
	    death1:Play()
	game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Blink"
	no = true
	wait(1.8)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/GuidingLight/main/BlinkDie.txt"))()
	end
	end
eyes.Sound.Pitch = dances[math.random(1, #dances)]
camShake:Start()
camShake:ShakeOnce(5, 15, 0.1, 1)
wait(fuckyou[math.random(1, #fuckyou)])
	if game.Players.LocalPlayer.Character.Humanoid.MoveDirection ~= Vector3.new(0,0,0) then
	if no == false then
if workspace.Ambience_FigureEnd.Playing or workspace.Ambience_FigureStart.Playing or workspace.Ambience_Figure.Playing or workspace.Ambience_Seek.Playing or workspace:FindFirstChild("SeekMoving") or workspace:FindFirstChild("AmbushMoving") or workspace:FindFirstChild("RushMoving") or workspace:FindFirstChild("Bound") or workspace:FindFirstChild("Matcher") or workspace.Ambience_Ambush.Playing then
return
end
		game.Players.LocalPlayer.Character.Humanoid:TakeDamage(1000)
	    death1:Play()
	game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Blink"
	no = true
	wait(1.8)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/GuidingLight/main/BlinkDie.txt"))()
	end
	end
eyes.Sound.Pitch = dances[math.random(1, #dances)]
camShake:Start()
camShake:ShakeOnce(5, 15, 0.1, 1)
wait(fuckyou[math.random(1, #fuckyou)])
	if game.Players.LocalPlayer.Character.Humanoid.MoveDirection ~= Vector3.new(0,0,0) then
	if no == false then
if workspace.Ambience_FigureEnd.Playing or workspace.Ambience_FigureStart.Playing or workspace.Ambience_Figure.Playing or workspace.Ambience_Seek.Playing or workspace:FindFirstChild("SeekMoving") or workspace:FindFirstChild("AmbushMoving") or workspace:FindFirstChild("RushMoving") or workspace:FindFirstChild("Bound") or workspace:FindFirstChild("Matcher") or workspace.Ambience_Ambush.Playing then
return
end
		game.Players.LocalPlayer.Character.Humanoid:TakeDamage(1000)
	    death1:Play()
	game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Blink"
	no = true
	wait(1.8)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/GuidingLight/main/BlinkDie.txt"))()
	end
	end
eyes.Sound.Pitch = dances[math.random(1, #dances)]
camShake:Start()
camShake:ShakeOnce(5, 15, 0.1, 1)
wait(fuckyou[math.random(1, #fuckyou)])
	if game.Players.LocalPlayer.Character.Humanoid.MoveDirection ~= Vector3.new(0,0,0) then
	if no == false then
if workspace.Ambience_FigureEnd.Playing or workspace.Ambience_FigureStart.Playing or workspace.Ambience_Figure.Playing or workspace.Ambience_Seek.Playing or workspace:FindFirstChild("SeekMoving") or workspace:FindFirstChild("AmbushMoving") or workspace:FindFirstChild("RushMoving") or workspace:FindFirstChild("Bound") or workspace:FindFirstChild("Matcher") or workspace.Ambience_Ambush.Playing then
return
end
		game.Players.LocalPlayer.Character.Humanoid:TakeDamage(1000)
	    death1:Play()
	game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Blink"
	no = true
	wait(1.8)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/GuidingLight/main/BlinkDie.txt"))()
	end
	end
eyes.Sound.Pitch = dances[math.random(1, #dances)]
camShake:Start()
camShake:ShakeOnce(5, 15, 0.1, 1)
wait(fuckyou[math.random(1, #fuckyou)])
	if game.Players.LocalPlayer.Character.Humanoid.MoveDirection ~= Vector3.new(0,0,0) then
	if no == false then
if workspace.Ambience_FigureEnd.Playing or workspace.Ambience_FigureStart.Playing or workspace.Ambience_Figure.Playing or workspace.Ambience_Seek.Playing or workspace:FindFirstChild("SeekMoving") or workspace:FindFirstChild("AmbushMoving") or workspace:FindFirstChild("RushMoving") or workspace:FindFirstChild("Bound") or workspace:FindFirstChild("Matcher") or workspace.Ambience_Ambush.Playing then
return
end
		game.Players.LocalPlayer.Character.Humanoid:TakeDamage(1000)
	    death1:Play()
	game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Blink"
	no = true
	wait(1.8)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/GuidingLight/main/BlinkDie.txt"))()
	end
	end
eyes.Sound.Pitch = dances[math.random(1, #dances)]
camShake:Start()
camShake:ShakeOnce(5, 15, 0.1, 1)
wait(fuckyou[math.random(1, #fuckyou)])
	if game.Players.LocalPlayer.Character.Humanoid.MoveDirection ~= Vector3.new(0,0,0) then
	if no == false then
if workspace.Ambience_FigureEnd.Playing or workspace.Ambience_FigureStart.Playing or workspace.Ambience_Figure.Playing or workspace.Ambience_Seek.Playing or workspace:FindFirstChild("SeekMoving") or workspace:FindFirstChild("AmbushMoving") or workspace:FindFirstChild("RushMoving") or workspace:FindFirstChild("Bound") or workspace:FindFirstChild("Matcher") or workspace.Ambience_Ambush.Playing then
return
end
		game.Players.LocalPlayer.Character.Humanoid:TakeDamage(1000)
	    death1:Play()
	game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Blink"
	no = true
	wait(1.8)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/GuidingLight/main/BlinkDie.txt"))()
	end
	end
eyes.Sound.Pitch = dances[math.random(1, #dances)]
camShake:Start()
camShake:ShakeOnce(5, 15, 0.1, 1)
wait(fuckyou[math.random(1, #fuckyou)])
	if game.Players.LocalPlayer.Character.Humanoid.MoveDirection ~= Vector3.new(0,0,0) then
	if no == false then
if workspace.Ambience_FigureEnd.Playing or workspace.Ambience_FigureStart.Playing or workspace.Ambience_Figure.Playing or workspace.Ambience_Seek.Playing or workspace:FindFirstChild("SeekMoving") or workspace:FindFirstChild("AmbushMoving") or workspace:FindFirstChild("RushMoving") or workspace:FindFirstChild("Bound") or workspace:FindFirstChild("Matcher") or workspace.Ambience_Ambush.Playing then
return
end
		game.Players.LocalPlayer.Character.Humanoid:TakeDamage(1000)
	    death1:Play()
	game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Blink"
	no = true
	wait(1.8)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/GuidingLight/main/BlinkDie.txt"))()
	end
	end
eyes.Sound.Pitch = dances[math.random(1, #dances)]
camShake:Start()
camShake:ShakeOnce(5, 15, 0.1, 1)
wait(fuckyou[math.random(1, #fuckyou)])
		if game.Players.LocalPlayer.Character.Humanoid.MoveDirection ~= Vector3.new(0,0,0) then
	if no == false then
if workspace.Ambience_FigureEnd.Playing or workspace.Ambience_FigureStart.Playing or workspace.Ambience_Figure.Playing or workspace.Ambience_Seek.Playing or workspace:FindFirstChild("SeekMoving") or workspace:FindFirstChild("AmbushMoving") or workspace:FindFirstChild("RushMoving") or workspace:FindFirstChild("Bound") or workspace:FindFirstChild("Matcher") or workspace.Ambience_Ambush.Playing then
return
end
		game.Players.LocalPlayer.Character.Humanoid:TakeDamage(1000)
	    death1:Play()
	game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value
