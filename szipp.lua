local gui = Instance.new("ScreenGui", game.CoreGui)
local frame = Instance.new("Frame", gui)
local closeBtn = Instance.new("TextButton", frame)
local scroll = Instance.new("ScrollingFrame", frame)
local textbox = Instance.new("TextBox", scroll)
local loadBtn = Instance.new("TextButton", frame)
local copyBtn = Instance.new("TextButton", frame)
local clearBtn = Instance.new("TextButton", frame)

gui.Name = "ExploitEditor"
frame.Size = UDim2.new(0, 400, 0, 300)
frame.Position = UDim2.new(0.5, -200, 0.5, -150)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.BorderSizePixel = 0
Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 8)

closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(1, -35, 0, 5)
closeBtn.Text = "X"
closeBtn.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
Instance.new("UICorner", closeBtn).CornerRadius = UDim.new(0, 6)

scroll.Size = UDim2.new(1, -20, 0.6, 0)
scroll.Position = UDim2.new(0, 10, 0, 40)
scroll.CanvasSize = UDim2.new(0, 0, 3, 0)
scroll.ScrollBarThickness = 6
scroll.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Instance.new("UICorner", scroll).CornerRadius = UDim.new(0, 6)

textbox.Size = UDim2.new(1, -10, 1, 0)
textbox.Position = UDim2.new(0, 5, 0, 0)
textbox.BackgroundTransparency = 1
textbox.TextXAlignment = Enum.TextXAlignment.Left
textbox.TextYAlignment = Enum.TextYAlignment.Top
textbox.ClearTextOnFocus = false
textbox.TextEditable = true
textbox.MultiLine = true
textbox.Text = ""
textbox.TextSize = 14
textbox.TextColor3 = Color3.new(1, 1, 1)
textbox.Font = Enum.Font.Code

loadBtn.Size = UDim2.new(0, 120, 0, 35)
loadBtn.Position = UDim2.new(0, 10, 1, -45)
loadBtn.Text = "Loadstring"
loadBtn.BackgroundColor3 = Color3.fromRGB(60, 120, 255)
Instance.new("UICorner", loadBtn).CornerRadius = UDim.new(0, 6)

copyBtn.Size = UDim2.new(0, 120, 0, 35)
copyBtn.Position = UDim2.new(0, 140, 1, -45)
copyBtn.Text = "Copiar"
copyBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 127)
Instance.new("UICorner", copyBtn).CornerRadius = UDim.new(0, 6)

clearBtn.Size = UDim2.new(0, 120, 0, 35)
clearBtn.Position = UDim2.new(0, 270, 1, -45)
clearBtn.Text = "Limpar"
clearBtn.BackgroundColor3 = Color3.fromRGB(255, 140, 0)
Instance.new("UICorner", clearBtn).CornerRadius = UDim.new(0, 6)

closeBtn.MouseButton1Click:Connect(function()
	gui:Destroy()
end)

loadBtn.MouseButton1Click:Connect(function()
	local code = textbox.Text
	loadstring(code)()
end)

copyBtn.MouseButton1Click:Connect(function()
	if setclipboard then
		setclipboard(textbox.Text)
	end
end)

clearBtn.MouseButton1Click:Connect(function()
	textbox.Text = ""
end)
