
local currentLoadedRoom=workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
local eyes=game:GetObjects("rbxassetid://11411321855")[1]
 
local num=0

if currentLoadedRoom:FindFirstChild("Nodes") then
   num = math.floor(#currentLoadedRoom.Nodes:GetChildren()/2)
end

eyes.RushNew.CFrame=(
	num==0 and currentLoadedRoom[currentLoadedRoom.Name] or currentLoadedRoom.Nodes[num]
).CFrame+Vector3.new(0,5,0)

eyes.Parent=workspace
				--------------
				local function canSeeTarget(target,size)
					if killed == true then
						return
					end
					local origin = eyes.RushNew.Position
					local direction = (target.HumanoidRootPart.Position - eyes.RushNew.Position).unit * size
					local ray = Ray.new(origin, direction)

					local hit, pos = workspace:FindPartOnRay(ray, eyes.RushNew)


					if hit then
						if hit:IsDescendantOf(target) then
							killed = true
							return true
						end
					else
						return false
					end
				end
local particle = eyes.RushNew.Attachment
particle.ParticleEmitter.Enabled = false
particle.Spark.Enabled = false
    local death = Instance.new("Sound")
    death.Parent = workspace
    death.Name = "die"
    death.SoundId = "rbxassetid://5867708670"
    death.Volume = 0.7
    death.Pitch = 1
    local distort = Instance.new("DistortionSoundEffect")
    distort.Level = 0.9
    distort.Parent = death
    local cue = Instance.new("Sound")
    cue.Parent = workspace
    cue.Name = "Bubbles"
    cue.SoundId = "rbxassetid://9113601215"
    cue.Volume = 1
    cue.Pitch = 0.6
    local distort = Instance.new("DistortionSoundEffect")
    distort.Level = 0.7
    distort.Parent = cue
    cue.TimePosition = 1.25
wait(0.5)
particle.Spark.Enabled = true
cue:Play()
    wait(2)
				-------------------------
				--_SHAKER DO NOT MOD IFY
				spawn(function()
					while eyes ~= nil do wait(0.2)
						local v = game.Players.LocalPlayer
						local parent = script.Parent
						if v.Character ~= nil and not v.Character:GetAttribute("Hiding") then
							if canSeeTarget(v.Character,50) then
								v.Character:FindFirstChildWhichIsA("Humanoid"):TakeDamage(100)
				game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Claim"
				death:Play()
				local speaker = game.Players.LocalPlayer.Character
		for i,v in pairs(speaker:GetChildren()) do
			if v:IsA("BasePart") and
				v.Name == "Head" or
				v.Name == "RightUpperLeg" or
				v.Name == "LeftUpperLeg" or
				v.Name == "RightUpperArm" or
				v.Name == "LeftUpperArm" or
				v.Name == "RightLowerLeg" or
				v.Name == "LeftLowerLeg" or
				v.Name == "RightLowerArm" or
				v.Name == "LeftLowerArm" or
				v.Name == "RightFoot" or
				v.Name == "LeftFoot" or
				v.Name == "RightHand" or
				v.Name == "LeftHand" or
				v.Name == "UpperTorso" or
				v.Name == "LowerTorso" then
				v:Destroy()
			end
		end
		        wait(1.8)
		        loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/GuidingLight/main/ClaimDie.txt"))()
							end
						end
					end
				end)
				----------------------
    particle.ParticleEmitter.Enabled = true
    local TweenService = game:GetService("TweenService")
    local cue2 = Instance.new("Sound")
    cue2.Parent = eyes.RushNew
    cue2.Name = "Idle"
    cue2.SoundId = "rbxassetid://8256091246"
    cue2.Volume = 1
    cue2.Pitch = 4
    local distort = Instance.new("DistortionSoundEffect")
    distort.Level = 0.9
    distort.Parent = cue2
local fl = Instance.new("FlangeSoundEffect")
fl.Depth = 0.06
fl.Mix = 0.85
fl.Rate = 5
fl.Parent = cue2
	cue2.RollOffMaxDistance = 90
	cue2.RollOffMinDistance = 5
	cue2.RollOffMode = Enum.RollOffMode.LinearSquare
    local TW = TweenService:Create(cue2, TweenInfo.new(1.5),{Pitch = 0})
    local TW2 = TweenService:Create(cue2, TweenInfo.new(1.5),{Volume = 0})
    local TW3 = TweenService:Create(cue2, TweenInfo.new(1.5),{Volume = 1})
    cue2:Play()
    TW3:Play()
    wait(11)
	eyes.RushNew.Anchored = false
	eyes.RushNew.CanCollide = false
    TW:Play()
    TW2:Play()
    wait(2)
    eyes:Destroy()
    death:Destroy()
    cue:Destroy()
