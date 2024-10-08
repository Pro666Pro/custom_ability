game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Credits",Text = "By Nexer :0 (skibid) " ,Duration = 10, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "alright dud"})

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
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Assets.Titan.Stomp, game.Players.LocalPlayer.Character.Humanoid):Play()
wait(0.45)
game:GetService("ReplicatedStorage").RetroAbility:FireServer("Ban Hammer")
	 end
})

Scripts:AddButton({
	Name = "Explosive Jump",
	Callback = function()
game:GetService("ReplicatedStorage").RetroAbility:FireServer("Bomb")
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Assets."Ice Skate".SkateJump, game.Players.LocalPlayer.Character.Humanoid):Play()
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

_G.Sprint = false

Scripts:AddButton({
	Name = "Sprint",
	Callback = function()
if _G.Sprint == false then
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Assets."Ice Skate".SkateLoop, game.Players.LocalPlayer.Character.Humanoid):Play()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
_G.Sprint = true
end
elseif _G.Sprint == true then
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Assets."Ice Skate".SkateLoop, game.Players.LocalPlayer.Character.Humanoid):Stop()
_G.Sprint = false
end
	 end
})
