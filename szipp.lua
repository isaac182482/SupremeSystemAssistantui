local Players = game:GetService("Players")
local player = Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

local assistGui = Instance.new("ScreenGui", gui)
assistGui.Name = "AssistenteUI"
assistGui.ResetOnSpawn = false

local mainFrame = Instance.new("Frame", assistGui)
mainFrame.Size = UDim2.new(0, 200, 0, 400)
mainFrame.Position = UDim2.new(0, 500, 0.3, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
mainFrame.BorderSizePixel = 0
mainFrame.ClipsDescendants = true
mainFrame.Active = true
mainFrame.Draggable = true

local title = Instance.new("TextLabel", mainFrame)
title.Size = UDim2.new(1, 0, 0, 30)
title.BackgroundTransparency = 1
title.Text = "Assistente UI"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 20
title.Font = Enum.Font.SourceSansBold

local close = Instance.new("TextButton", mainFrame)
close.Size = UDim2.new(0, 30, 0, 30)
close.Position = UDim2.new(1, -30, 0, 0)
close.Text = "X"
close.TextColor3 = Color3.fromRGB(255, 80, 80)
close.TextSize = 18
close.BackgroundTransparency = 1
close.Font = Enum.Font.SourceSansBold
close.MouseButton1Click:Connect(function()
	assistGui:Destroy()
end)

local listLayout = Instance.new("UIListLayout", mainFrame)
listLayout.Padding = UDim.new(0, 4)
listLayout.FillDirection = Enum.FillDirection.Vertical
listLayout.SortOrder = Enum.SortOrder.LayoutOrder
listLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

title.LayoutOrder = -2
close.LayoutOrder = -1

local function copyToClipboard(text)
	setclipboard(text)
end

local function createButton(text, callback)
	local button = Instance.new("TextButton")
	button.Size = UDim2.new(1, -10, 0, 30)
	button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	button.TextColor3 = Color3.fromRGB(255, 255, 255)
	button.Text = text
	button.Font = Enum.Font.SourceSans
	button.TextSize = 18
	button.BorderSizePixel = 0
	button.Parent = mainFrame
	button.MouseButton1Click:Connect(callback)
end

local Instances = {
	Frame = [[
local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 200, 0, 100)
Frame.Position = UDim2.new(0.5, -100, 0.5, -50)
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Frame.BackgroundTransparency = 0
Frame.BorderSizePixel = 0
Frame.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
]],

	TextLabel = [[
local TextLabel = Instance.new("TextLabel")
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Position = UDim2.new(0.5, -100, 0.5, -25)
TextLabel.Text = "Texto aqui"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextLabel.BackgroundTransparency = 0
TextLabel.TextScaled = true
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
]],

	TextBox = [[
local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(0, 200, 0, 50)
TextBox.Position = UDim2.new(0.5, -100, 0.5, -25)
TextBox.PlaceholderText = "Digite aqui"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextBox.BackgroundTransparency = 0
TextBox.TextScaled = true
TextBox.Font = Enum.Font.SourceSans
TextBox.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
]],

	TextButton = [[
local TextButton = Instance.new("TextButton")
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Position = UDim2.new(0.5, -100, 0.5, -25)
TextButton.Text = "Clique aqui"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
TextButton.BackgroundTransparency = 0
TextButton.TextScaled = true
TextButton.Font = Enum.Font.SourceSans
TextButton.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
]],

	ImageLabel = [[
local ImageLabel = Instance.new("ImageLabel")
ImageLabel.Size = UDim2.new(0, 200, 0, 200)
ImageLabel.Position = UDim2.new(0.5, -100, 0.5, -100)
ImageLabel.Image = "rbxassetid://INSERT_ID"
ImageLabel.BackgroundTransparency = 1
ImageLabel.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
]],

	ImageButton = [[
local ImageButton = Instance.new("ImageButton")
ImageButton.Size = UDim2.new(0, 200, 0, 200)
ImageButton.Position = UDim2.new(0.5, -100, 0.5, -100)
ImageButton.Image = "rbxassetid://INSERT_ID"
ImageButton.BackgroundTransparency = 1
ImageButton.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
]],

	ScrollingFrame = [[
local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.Size = UDim2.new(0, 250, 0, 150)
ScrollingFrame.Position = UDim2.new(0.5, -125, 0.5, -75)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 2, 0)
ScrollingFrame.ScrollBarThickness = 8
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ScrollingFrame.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
]],

	UIListLayout = [[
local UIListLayout = Instance.new("UIListLayout")
UIListLayout.FillDirection = Enum.FillDirection.Vertical
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 6)
UIListLayout.Parent = script.Parent
]]
}

for name, code in pairs(Instances) do
	createButton("📋 " .. name, function()
		copyToClipboard(code)
	end)
end
