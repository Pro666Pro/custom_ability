game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Credits",Text = "By Nexer :0 (sus) " ,Duration = 10, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "alright dud"})

local GameName = "custom ability - by nexer"

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroText = "custom ability gui", IntroIcon = "rbxassetid://15315284749",Name = GameName, HidePremium = false, SaveConfig = true, ConfigFolder = "Tutorial"})

OrionLib:MakeNotification({Name = "Warning",Content = "Use at your own risk.",Image = "rbxassetid://7733658504",Time = 5})

local Script = Window:MakeTab({
	Name = "Ability",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Scripts = Script:AddSection({
	Name = "Custom Ability"
})

Scripts:AddButton({
	Name = "Rocket Shoot",
	Callback = function()
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Assets.Hitman.RevolverAnim, game.Players.LocalPlayer.Character.Humanoid):Play()
wait(0.45)
game:GetService("ReplicatedStorage").RetroAbility:FireServer("Rocket Launcher")
	 end
})

Scripts:AddButton({
	Name = "Stomp",
	Callback = function()
_G.Animation = 16102767550
if game.ReplicatedStorage:FindFirstChild("Animation") == nil then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://".._G.Animation
Anim.Name = "Animation"
Anim.Parent = game.ReplicatedStorage
elseif game.ReplicatedStorage:FindFirstChild("Animation") ~= nil then
game.ReplicatedStorage:FindFirstChild("Animation").AnimationId = "rbxassetid://".._G.Animation
end
wait(0.5)
if game.ReplicatedStorage:FindFirstChild("Animation") ~= nil then
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Animation, game.Players.LocalPlayer.Character.Humanoid):Play()
end
wait(0.45)
game:GetService("ReplicatedStorage").RetroAbility:FireServer("Ban Hammer")
	 end
})

Scripts:AddButton({
	Name = "Explosive Jump",
	Callback = function()
game:GetService("ReplicatedStorage").RetroAbility:FireServer("Bomb")
_G.Animation = 15775787411
if game.ReplicatedStorage:FindFirstChild("Animation") == nil then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://".._G.Animation
Anim.Name = "Animation"
Anim.Parent = game.ReplicatedStorage
elseif game.ReplicatedStorage:FindFirstChild("Animation") ~= nil then
game.ReplicatedStorage:FindFirstChild("Animation").AnimationId = "rbxassetid://".._G.Animation
end
wait(0.5)
if game.ReplicatedStorage:FindFirstChild("Animation") ~= nil then
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Animation, game.Players.LocalPlayer.Character.Humanoid):Play()
end
	 end
})

Scripts:AddButton({
	Name = "Summon",
	Callback = function()
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Assets.Thor.Animation, game.Players.LocalPlayer.Character.Humanoid):Play()
wait(0.75)
game:GetService("ReplicatedStorage").NullAbility:FireServer()
	 end
})

Scripts:AddToggle({
	Name = "Sprint",
	Callback = function(Value)
Sprint = Value
while Sprint == true do
_G.Animation = 15775758181
if game.ReplicatedStorage:FindFirstChild("Animation") == nil then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://".._G.Animation
Anim.Name = "Animation"
Anim.Parent = game.ReplicatedStorage
elseif game.ReplicatedStorage:FindFirstChild("Animation") ~= nil then
game.ReplicatedStorage:FindFirstChild("Animation").AnimationId = "rbxassetid://".._G.Animation
end
wait(0.5)
if game.ReplicatedStorage:FindFirstChild("Animation") ~= nil then
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Animation, game.Players.LocalPlayer.Character.Humanoid):Play()
end
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
end
while Sprint == false do
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Animation, game.Players.LocalPlayer.Character.Humanoid):Stop()
	 end
})
