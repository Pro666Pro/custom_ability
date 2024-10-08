game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Loading",Text = "Script Loading :-0",Icon = "rbxassetid://7733658504",Duration = 5})

local bypass;
    bypass = hookmetamethod(game, "__namecall", function(method, ...) 
        if getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.Ban then
            return
        elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.AdminGUI then
            return
        elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.WalkSpeedChanged then
            return
        end
        return bypass(method, ...)
    end)

function isSpawned(player)
   if workspace:FindFirstChild(player.Name) and player.Character:FindFirstChild("HumanoidRootPart") then
       return true
   else
       return false
   end
end

_G.Sprint = false
_G.SonicMode = false
_G.SlapAura = false

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")
local TextButton_5 = Instance.new("TextButton")
local TextButton_6 = Instance.new("TextButton")
local TextButton_7 = Instance.new("TextButton")
local TextButton_8 = Instance.new("TextButton")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.18982631, 0, 0.0528455302, 0)
Frame.Size = UDim2.new(0, 0, 0, 0)
Frame.Active = true
Frame.Draggable = false

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(1, 0, 1, 0)
TextButton.Size = UDim2.new(0, 50, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Rocket Shoot"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
TextButton.Draggable = true
TextButton.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Assets.Hitman.RevolverAnim, game.Players.LocalPlayer.Character.Humanoid):Play()
	wait(0.4)
	game:GetService("ReplicatedStorage").RetroAbility:FireServer("Rocket Launcher")
end)

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(51, 51, 51, 1)
TextButton_2.Size = UDim2.new(0, 50, 0, 50)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Stomp"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true
TextButton_2.Draggable = true
TextButton_2.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Assets.Titan.Stomp, game.Players.LocalPlayer.Character.Humanoid):Play()
	wait(0.4)
	game:GetService("ReplicatedStorage").RetroAbility:FireServer("Ban Hammer")
end)

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(101, 101, 101, 1)
TextButton_3.Size = UDim2.new(0, 50, 0, 50)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Explosive Jump"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true
TextButton_3.Draggable = true
TextButton_3.MouseButton1Click:Connect(function()
	game:GetService("ReplicatedStorage").RetroAbility:FireServer("Bomb")
	game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Assets["Ice Skate"].SkateJump, game.Players.LocalPlayer.Character.Humanoid):Play()
end)

TextButton_4.Parent = Frame
TextButton_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.BorderSizePixel = 0
TextButton_4.Position = UDim2.new(151, 151, 151, 1)
TextButton_4.Size = UDim2.new(0, 50, 0, 50)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "Summon [PATCHED]"
TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.TextScaled = true
TextButton_4.TextSize = 14.000
TextButton_4.TextWrapped = true
TextButton_4.Draggable = true
TextButton_4.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
	game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Assets.Thor.Animation, game.Players.LocalPlayer.Character.Humanoid):Play()
	wait(0.5)
	game:GetService("ReplicatedStorage").NullAbility:FireServer()
	wait(3)
	game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
end)

TextButton_6.Parent = Frame
TextButton_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_6.BorderSizePixel = 0
TextButton_6.Position = UDim2.new(201, 201, 201, 1)
TextButton_6.Size = UDim2.new(0, 50, 0, 50)
TextButton_6.Font = Enum.Font.SourceSans
TextButton_6.Text = "Sonic Mode"
TextButton_6.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_6.TextScaled = true
TextButton_6.TextSize = 14.000
TextButton_6.TextWrapped = true
TextButton_6.Draggable = true
TextButton_6.MouseButton1Click:Connect(function()
if _G.SonicMode == false then
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
_G.SonicMode = true
_G.SlapAura = true
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "Slap Aura Turned On",Icon = "rbxassetid://7733658504",Duration = 5})
while _G.SonicMode == true do
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Assets["64"].anims.doublejump, game.Players.LocalPlayer.Character.Humanoid):Play()
wait(0.3)
end
while wait() do
   for i, v in pairs(game.Players:GetPlayers()) do
       if isSpawned(v) and v ~= game.Players.LocalPlayer and not v.Character.Head:FindFirstChild("UnoReverseCard") and _G.SlapAura == true then
           if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 and _G.SlapAura == true then
               game:GetService("ReplicatedStorage").b:FireServer(v.Character["Right Arm"])
               wait(0.2)
           end
       end
   end
end
else
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 20
_G.SonicMode = false
_G.SlapAura = false
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "Slap Aura Turned Off",Icon = "rbxassetid://7733658504",Duration = 5})
end
end)

game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Credits",Text = "Script by Nexer" ,Duration = 1000, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "OK"})
setclipboard(tostring("https://www.youtube.com/@nexer1234"))
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Credits",Text = "Copied Youtube Channel Link" ,Duration = 1000, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "OK"})
