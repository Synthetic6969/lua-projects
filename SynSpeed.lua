return function()
local player = game:GetService("Players").LocalPlayer
getgenv().WalkSpeed = 16
getgenv().JumpPower = 50

--// SynSpeed
if not getgenv().SynSpeed then
    getgenv().error = rconsolewarn
    
    local oldWalkSpeed = player.Character:FindFirstChildOfClass("Humanoid").WalkSpeed
    local oldJumpPower = player.Character:FindFirstChildOfClass("Humanoid").JumpPower
	getgenv().SynSpeed = true

	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local Frame_2 = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local Underline = Instance.new("Frame")
	local Frame_3 = Instance.new("Frame")
	local WalkSpeed = Instance.new("TextLabel")
	local UIPadding = Instance.new("UIPadding")
	local Slider = Instance.new("Frame")
	local Button = Instance.new("ImageButton")
	local UICorner = Instance.new("UICorner")
	local UICorner_2 = Instance.new("UICorner")
	local Input = Instance.new("TextLabel")
	local UICorner_3 = Instance.new("UICorner")
	local JumpPower = Instance.new("TextLabel")
	local UIPadding_2 = Instance.new("UIPadding")
	local Slider_2 = Instance.new("Frame")
	local Button_2 = Instance.new("ImageButton")
	local UICorner_4 = Instance.new("UICorner")
	local UICorner_5 = Instance.new("UICorner")
	local Input_2 = Instance.new("TextLabel")
	local UICorner_6 = Instance.new("UICorner")
	local UICorner_7 = Instance.new("UICorner")
	local UICorner_8 = Instance.new("UICorner")

	--Properties:

	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = ScreenGui
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame.Size = UDim2.new(0, 300, 0, 100)
	Frame.Active = true

	Frame_2.Parent = Frame
	Frame_2.AnchorPoint = Vector2.new(0.5, 0)
	Frame_2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	Frame_2.BorderSizePixel = 0
	Frame_2.Position = UDim2.new(0.5, 0, 0, 5)
	Frame_2.Size = UDim2.new(0, 290, 0, 90)
	Frame_2.Active = true

	Title.Name = "Title"
	Title.Parent = Frame_2
	Title.AnchorPoint = Vector2.new(0.5, 0)
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0.5, 0, 0, 0)
	Title.Size = UDim2.new(1, 0, 0.200000003, 0)
	Title.Font = Enum.Font.Nunito
	Title.Text = "SynSpeed"
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextScaled = true
	Title.TextSize = 14.000
	Title.TextWrapped = true
	Title.Active = true

	Underline.Name = "Underline"
	Underline.Parent = Frame_2
	Underline.AnchorPoint = Vector2.new(0.5, 0)
	Underline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Underline.BorderSizePixel = 0
	Underline.Position = UDim2.new(0.5, 0, 0, 20)
	Underline.Size = UDim2.new(0, 120, 0, 1)
	Underline.Active = true

	Frame_3.Parent = Frame_2
	Frame_3.AnchorPoint = Vector2.new(0.5, 0)
	Frame_3.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	Frame_3.BackgroundTransparency = 1.000
	Frame_3.BorderSizePixel = 0
	Frame_3.Position = UDim2.new(0.5, 0, 0, 30)
	Frame_3.Size = UDim2.new(0, 290, 0, 60)
	Frame_3.Active = true

	WalkSpeed.Name = "WalkSpeed"
	WalkSpeed.Parent = Frame_3
	WalkSpeed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	WalkSpeed.BackgroundTransparency = 1.000
	WalkSpeed.Size = UDim2.new(0.800000012, 0, 0.5, 0)
	WalkSpeed.Font = Enum.Font.Nunito
	WalkSpeed.Text = "Walk Speed"
	WalkSpeed.TextColor3 = Color3.fromRGB(255, 255, 255)
	WalkSpeed.TextSize = 20.000
	WalkSpeed.TextWrapped = true
	WalkSpeed.TextXAlignment = Enum.TextXAlignment.Left
	WalkSpeed.Active = true

	UIPadding.Parent = WalkSpeed
	UIPadding.PaddingLeft = UDim.new(0, 15)

	Slider.Name = "Slider"
	Slider.Parent = WalkSpeed
	Slider.AnchorPoint = Vector2.new(0, 0.5)
	Slider.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
	Slider.BorderSizePixel = 0
	Slider.Position = UDim2.new(0.449999988, 0, 0.5, 0)
	Slider.Size = UDim2.new(0.400000006, 0, 0, 10)
	Slider.Active = true

	Button.Name = "Button"
	Button.Parent = Slider
	Button.AnchorPoint = Vector2.new(0, 0.5)
	Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Button.BorderSizePixel = 0
	Button.Position = UDim2.new(0.0799999982, 0, 0.5, 0)
	Button.Size = UDim2.new(0, 5, 0, 20)
	Button.Active = true

	UICorner.CornerRadius = UDim.new(0, 4)
	UICorner.Parent = Button

	UICorner_2.CornerRadius = UDim.new(0, 4)
	UICorner_2.Parent = Slider

	Input.Name = "Input"
	Input.Parent = WalkSpeed
	Input.Active = true
	Input.AnchorPoint = Vector2.new(0, 0.5)
	Input.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
	Input.BorderSizePixel = 0
	Input.Position = UDim2.new(0.899999976, 0, 0.5, 0)
	Input.Selectable = true
	Input.Size = UDim2.new(0.300000012, 0, 0.800000012, 0)
	Input.Font = Enum.Font.SourceSans
	Input.Text = "16"
	Input.TextColor3 = Color3.fromRGB(200, 200, 200)
	Input.TextSize = 14.000
	Input.Active = true

	UICorner_3.CornerRadius = UDim.new(0, 4)
	UICorner_3.Parent = Input

	JumpPower.Name = "JumpPower"
	JumpPower.Parent = Frame_3
	JumpPower.AnchorPoint = Vector2.new(0, 1)
	JumpPower.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	JumpPower.BackgroundTransparency = 1.000
	JumpPower.Position = UDim2.new(0, 0, 1, 0)
	JumpPower.Size = UDim2.new(0.800000012, 0, 0.5, 0)
	JumpPower.Font = Enum.Font.Nunito
	JumpPower.Text = "Jump Power"
	JumpPower.TextColor3 = Color3.fromRGB(255, 255, 255)
	JumpPower.TextSize = 20.000
	JumpPower.TextWrapped = true
	JumpPower.TextXAlignment = Enum.TextXAlignment.Left
	JumpPower.Active = true

	UIPadding_2.Parent = JumpPower
	UIPadding_2.PaddingLeft = UDim.new(0, 15)

	Slider_2.Name = "Slider"
	Slider_2.Parent = JumpPower
	Slider_2.AnchorPoint = Vector2.new(0, 0.5)
	Slider_2.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
	Slider_2.BorderSizePixel = 0
	Slider_2.Position = UDim2.new(0.449999988, 0, 0.5, 0)
	Slider_2.Size = UDim2.new(0.400000006, 0, 0, 10)
	Slider_2.Active = true

	Button_2.Name = "Button"
	Button_2.Parent = Slider_2
	Button_2.AnchorPoint = Vector2.new(0, 0.5)
	Button_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Button_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Button_2.BorderSizePixel = 0
	Button_2.Position = UDim2.new(0.100000001, 0, 0.5, 0)
	Button_2.Size = UDim2.new(0, 5, 0, 20)
	Button_2.Active = true

	UICorner_4.CornerRadius = UDim.new(0, 4)
	UICorner_4.Parent = Button_2

	UICorner_5.CornerRadius = UDim.new(0, 4)
	UICorner_5.Parent = Slider_2

	Input_2.Name = "Input"
	Input_2.Parent = JumpPower
	Input_2.Active = true
	Input_2.AnchorPoint = Vector2.new(0, 0.5)
	Input_2.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
	Input_2.BorderSizePixel = 0
	Input_2.Position = UDim2.new(0.899999976, 0, 0.5, 0)
	Input_2.Selectable = true
	Input_2.Size = UDim2.new(0.300000012, 0, 0.800000012, 0)
	Input_2.Font = Enum.Font.SourceSans
	Input_2.Text = "50"
	Input_2.TextColor3 = Color3.fromRGB(200, 200, 200)
	Input_2.TextSize = 14.000
	Input_2.Active = true

	UICorner_6.CornerRadius = UDim.new(0, 4)
	UICorner_6.Parent = Input_2

	UICorner_7.CornerRadius = UDim.new(0, 4)
	UICorner_7.Parent = Frame_2

	UICorner_8.CornerRadius = UDim.new(0, 4)
	UICorner_8.Parent = Frame

	-- Scripts:

	local function MGYEM_fake_script() -- Slider.Handler 
		local script = Instance.new('LocalScript', Slider)

		local Slider = script.Parent
		local SliderBtn = Slider.Button
		local Player = game:GetService("Players").LocalPlayer
		local UIS = game:GetService("UserInputService")
		local RuS = game:GetService("RunService")

		-- Properties
		local held = false
		local step = 1/200
		local percentage = 0

		function snap(number, factor)
			if factor == 0 then
				return number
			else
				return (math.floor(number/factor+0.5)*factor)
			end
		end

		UIS.InputEnded:connect(function(input, processed)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				held = false
			end
		end)

		SliderBtn.MouseButton1Down:connect(function()
			held = true
		end)

		RuS.RenderStepped:connect(function(delta)
			if held then
				local MousePos = UIS:GetMouseLocation().X
				local BtnPos = SliderBtn.Position
				local SliderSize = Slider.AbsoluteSize.X
				local SliderPos = Slider.AbsolutePosition.X
				local pos = snap((MousePos-SliderPos)/SliderSize,step)
				percentage = math.clamp(pos,0,1)
				getgenv()[script.Parent.Parent.Name] = percentage*200
				script.Parent.Parent.Input.Text = math.floor(percentage*200)
				SliderBtn.Position = UDim2.new(percentage,0,BtnPos.Y.Scale, BtnPos.Y.Offset)
			end
		end)
	end
	coroutine.wrap(MGYEM_fake_script)()
	local function QZOK_fake_script() -- Slider_2.Handler 
		local script = Instance.new('LocalScript', Slider_2)

		local Slider = script.Parent
		local SliderBtn = Slider.Button
		local Player = game:GetService("Players").LocalPlayer
		local UIS = game:GetService("UserInputService")
		local RuS = game:GetService("RunService")

		-- Properties
		local held = false
		local step = 1/500
		local percentage = 0

		function snap(number, factor)
			if factor == 0 then
				return number
			else
				return (math.floor(number/factor+0.5)*factor)
			end
		end

		UIS.InputEnded:connect(function(input, processed)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				held = false
			end
		end)

		SliderBtn.MouseButton1Down:connect(function()
			held = true
		end)

		RuS.RenderStepped:connect(function(delta)
			if held then
				local MousePos = UIS:GetMouseLocation().X
				local BtnPos = SliderBtn.Position
				local SliderSize = Slider.AbsoluteSize.X
				local SliderPos = Slider.AbsolutePosition.X
				local pos = snap((MousePos-SliderPos)/SliderSize,step)
				percentage = math.clamp(pos,0,1)
				getgenv()[script.Parent.Parent.Name] = percentage*200
				script.Parent.Parent.Input.Text = math.floor(percentage*200)
				SliderBtn.Position = UDim2.new(percentage,0,BtnPos.Y.Scale, BtnPos.Y.Offset)
			end
		end)
	end
	coroutine.wrap(QZOK_fake_script)()
	local function KSRK_fake_script() -- Frame.Drag 
		local script = Instance.new('LocalScript', Frame)

		local player = game:GetService("Players").LocalPlayer
		local gmt = getrawmetatable(game)
		local oldIndex = gmt.__index
		setreadonly(gmt, false)
		local oldNamecall = gmt.__namecall
        
        gmt.__namecall = newcclosure(function(self, ...)
            local method = getnamecallmethod()
            if self == player and string.lower(tostring(method)) == "kick" then
                rconsolewarn("There was an attempt to kick you!\n")
                return
            end
            return oldNamecall(self, ...)
        end)

		gmt.__index = newcclosure(function(self, key)
			if tostring(self) == "Humanoid" and tostring(key) == "WalkSpeed" then
				return oldWalkSpeed
			elseif tostring(self) == "Humanoid" and tostring(key) == "JumpPower" then
				return oldJumpPower
			end
			return oldIndex(self, key)
		end)

		local function setStuff()
			local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
			humanoid.WalkSpeed = getgenv().WalkSpeed
			humanoid.JumpPower = getgenv().JumpPower
            coroutine.wrap(function()
                while humanoid do
                    humanoid.WalkSpeed = getgenv().WalkSpeed
                    humanoid.JumpPower = getgenv().JumpPower
                    game:service'RunService'.RenderStepped:Wait()
                end
            end)()
		end

		xpcall(setStuff, warn, "No character D:")

		player.CharacterAdded:Connect(function(character)
            repeat wait() until character:FindFirstChildOfClass("Humanoid")
			setStuff()
		end)

		local UserInputService = game:GetService("UserInputService")

		local gui = script.Parent

		local dragging
		local dragInput
		local dragStart
		local startPos

		local function update(input)
			local delta = input.Position - dragStart
			gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end

		gui.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = gui.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
			if input.KeyCode == Enum.KeyCode.F5 then
				gui.Visible = not gui.Visible
			end
		end)

		gui.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)

		UserInputService.InputChanged:Connect(function(input)
			if input == dragInput and dragging then
				update(input)
			end
		end)
	end
	coroutine.wrap(KSRK_fake_script)()
end

--// Infinite Jump
local function Action(Object, Function) if Object ~= nil then Function(Object); end end

game:GetService("UserInputService").InputBegan:connect(function(UserInput, isTyping)
    if isTyping then return end
    if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
        Action(player.Character:FindFirstChildOfClass("Humanoid"), function(self)
            Action(self.Parent.PrimaryPart, function(self)
                self.Velocity = Vector3.new(self.Velocity.X, getgenv().JumpPower, self.Velocity.Z)
            end)
        end)
    end
end)
end
