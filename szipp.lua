local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "UIAssistant"

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 250, 0, 400)
frame.Position = UDim2.new(0.5, -125, 0.5, -200)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
frame.Active = true
frame.Draggable = true
Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 8)

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0, 30)
title.BackgroundTransparency = 1
title.Text = "🛠️ UI Assistente"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextSize = 16
title.Font = Enum.Font.SourceSansBold

local scroll = Instance.new("ScrollingFrame", frame)
scroll.Size = UDim2.new(1, -20, 1, -40)
scroll.Position = UDim2.new(0, 10, 0, 35)
scroll.CanvasSize = UDim2.new(0, 0, 2, 0)
scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
scroll.ScrollBarThickness = 6
scroll.BackgroundTransparency = 1

local layout = Instance.new("UIListLayout", scroll)
layout.Padding = UDim.new(0, 6)
layout.SortOrder = Enum.SortOrder.LayoutOrder

local function createCodeButton(name, code)
	local btn = Instance.new("TextButton", scroll)
	btn.Size = UDim2.new(1, 0, 0, 30)
	btn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	btn.TextColor3 = Color3.new(1, 1, 1)
	btn.Font = Enum.Font.SourceSansBold
	btn.TextSize = 14
	btn.Text = "Copiar: " .. name
	Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)

	btn.MouseButton1Click:Connect(function()
		if setclipboard then
			setclipboard(code)
		end
	end)
end

-- ELEMENTOS UI
createCodeButton("Frame", [[local frame = Instance.new("Frame")]])
createCodeButton("TextLabel", [[local label = Instance.new("TextLabel")]])
createCodeButton("TextButton", [[local button = Instance.new("TextButton")]])
createCodeButton("ImageLabel", [[local imgLabel = Instance.new("ImageLabel")]])
createCodeButton("ImageButton", [[local imgButton = Instance.new("ImageButton")]])
createCodeButton("ScrollingFrame", [[local scroll = Instance.new("ScrollingFrame")]])
createCodeButton("TextBox", [[local textbox = Instance.new("TextBox")]])
createCodeButton("ViewportFrame", [[local viewport = Instance.new("ViewportFrame")]])

-- BOTÃO X
local close = Instance.new("TextButton", frame)
close.Size = UDim2.new(0, 30, 0, 30)
close.Position = UDim2.new(1, -35, 0, 5)
close.Text = "X"
close.TextColor3 = Color3.new(1, 1, 1)
close.Font = Enum.Font.SourceSansBold
close.TextSize = 16
close.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
Instance.new("UICorner", close).CornerRadius = UDim.new(0, 6)

close.MouseButton1Click:Connect(function()
	gui:Destroy()
end)
