--[[
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ThoseWhoSkid"
screenGui.Parent = CoreGui
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true

local bg = Instance.new("Frame")
bg.Name = "bg"
bg.Parent = screenGui
bg.BackgroundColor3 = Color3.new(0, 0, 0)
bg.Size = UDim2.new(1, 0, 1, 0)
bg.ZIndex = 10

local Text = Instance.new("TextLabel")
Text.Name = "Text"
Text.Parent = bg
Text.AnchorPoint = Vector2.new(0.5, 0.5)
Text.Position = UDim2.new(0.5, 0, 0.5, 0)
Text.Size = UDim2.new(0.8, 0, 0.5, 0)
Text.BackgroundTransparency = 1
Text.RichText = true
Text.Text = 'If you see this, it means that the script owner has skidded Asu.<font color="#ffffff">\n\nJoin </font><font color="#00ff00">discord.gg/zrAB2m5gvz</font><font color="#ffffff">\nfor the original, and a better script :)</font>'
Text.TextColor3 = Color3.new(1, 1, 1)
Text.TextScaled = true
Text.Font = Enum.Font.GothamBold
Text.TextSize = 30
Text.ZIndex = 11000
Text.TextWrapped = true

local function updateTextSize()
    local viewportSize = workspace.CurrentCamera.ViewportSize
    local baseSize = math.min(viewportSize.X, viewportSize.Y)
    Text.TextSize = baseSize * 0.03
end

updateTextSize()
workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(updateTextSize)
--]]
