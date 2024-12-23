local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local GUI = Mercury:Create{
    Name = "flee the facility Internal v1.1 (soon anothor update)",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "Best Flee the facility GUI"
}

GUI:Notification{
	Title = "Update:",
	Text = "Add on discord for suggestions discord: bedra#3812",
	Duration = 5,
	Callback = function() end
}

GUI:Credit{
	Name = "bedra#3812",
	Description = "Made by",
	V3rm = "bedra45",
	Discord = "bedra#3812"
}

local Tab6 = GUI:Tab{
	Name = "Player Stuff",
	Icon = "rbxassetid://8569322835"
}

Tab6:Button{
	Name = "Respawn",
	Description = nil,
	Callback = function()
local plr = game.Players.LocalPlayer
plr.Character:Destroy()
	    end
}

Tab6:Button{
	Name = "FixCam",
	Description = nil,
	Callback = function()
local player = game.Players.LocalPlayer

	workspace.CurrentCamera.CameraSubject = player.Character:FindFirstChildWhichIsA('Humanoid')
	workspace.CurrentCamera.CameraType = "Custom"
	player.CameraMinZoomDistance = 0.5
	player.CameraMaxZoomDistance = math.huge
	player.CameraMode = "Classic"
	player.Character.Head.Anchored = false
	    end
}

Tab6:Slider{
	Name = "WalkSpeed",
	Default = 50,
	Min = 0,
	Max = 100,
	Callback = function(value)
	    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
	    end
}

Tab6:Slider{
	Name = "JumpPower",
	Default = 50,
	Min = 0,
	Max = 100,
	Callback = function(value)
	    game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
	    end
}

Tab6:Toggle{
	Name = "HitBox",
	StartingState = false,
	Description = nil,
	Callback = function(state)
if state == true then
for i,v in pairs(game.Players:GetChildren()) do
if v:IsA("Player") and v.Name ~= game.Players.LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(6.5,6.5,6.5)
v.Character.HumanoidRootPart.Transparency = 0.8
end)
end
end
else
for i,v in pairs(game.Players:GetChildren()) do
if v:IsA("Player") and v.Name ~= game.Players.LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(2,2,1)
v.Character.HumanoidRootPart.Transparency = 1
end)
end
end
end
	    end
}

local Tab = GUI:Tab{
	Name = "Visuals",
	Icon = "rbxassetid://8569322835"
}

Tab:Toggle{
	Name = "Player ESP",
	StartingState = false,
	Description = nil,
	Callback = function(state)
if state == true then
	for i,v in pairs(game.Players:GetChildren()) do
		if v:IsA("Player") and v.Name ~= game.Players.LocalPlayer.Name then
			pcall(function()
				local transparency = 0.5
				local Folder = Instance.new("Folder",v.Character)
				Folder.Name = v.Name .. "'s ESP"
				--Head
				local Head = Instance.new("BoxHandleAdornment",Folder)
				Head.AlwaysOnTop = true
				Head.Adornee = v.Character.Head
				Head.ZIndex = 1
				Head.Name = "Head"
				Head.Transparency = transparency
				Head.Size = v.Character.Head.Size
				--Torso
				local Torso = Instance.new("BoxHandleAdornment",Folder)
				Torso.AlwaysOnTop = true
				Torso.Adornee = v.Character.Torso
				Torso.ZIndex = 1
				Torso.Name = "Torso"
				Torso.Transparency = transparency
				Torso.Size = v.Character.Torso.Size
				--Left Arm
				local LeftArm = Instance.new("BoxHandleAdornment",Folder)
				LeftArm.AlwaysOnTop = true
				LeftArm.Adornee = v.Character["Left Arm"]
				LeftArm.ZIndex = 1
				LeftArm.Name = "LeftArm"
				LeftArm.Transparency = transparency
				LeftArm.Size = v.Character["Left Arm"].Size
				--Right Arm
				local RightArm = Instance.new("BoxHandleAdornment",Folder)
				RightArm.AlwaysOnTop = true
				RightArm.Adornee = v.Character["Right Arm"]
				RightArm.ZIndex = 1
				RightArm.Name = "RightArm"
				RightArm.Transparency = transparency
				RightArm.Size = v.Character["Right Arm"].Size
				--Right Leg
				local RightLeg = Instance.new("BoxHandleAdornment",Folder)
				RightLeg.AlwaysOnTop = true
				RightLeg.Adornee = v.Character["Right Leg"]
				RightLeg.ZIndex = 1
				RightLeg.Name = "RightLeg"
				RightLeg.Transparency = transparency
				RightLeg.Size = v.Character["Right Leg"].Size
				--Left Leg
				local LeftLeg = Instance.new("BoxHandleAdornment",Folder)
				LeftLeg.AlwaysOnTop = true
				LeftLeg.Name = "LeftLeg"
				LeftLeg.Adornee = v.Character["Left Leg"]
				LeftLeg.ZIndex = 1
				LeftLeg.Transparency = transparency
				LeftLeg.Size = v.Character["Left Leg"].Size
				--Colors if beast or not
				getgenv().LoopBeastColor = game.RunService.Stepped:Connect(function()
				if v.TempPlayerStatsModule.IsBeast.Value == true then
					Head.Color3 = Color3.fromRGB(205, 98, 152)
					Torso.Color3 = Color3.fromRGB(205, 98, 152)
					LeftArm.Color3 = Color3.fromRGB(205, 98, 152)
					RightArm.Color3 = Color3.fromRGB(205, 98, 152)
					RightLeg.Color3 = Color3.fromRGB(205, 98, 152)
					LeftLeg.Color3 = Color3.fromRGB(205, 98, 152)
				elseif v.TempPlayerStatsModule.IsBeast.Value == false then
					Head.Color3 = Color3.new(225,1,1)
					Torso.Color3 = Color3.new(1,1,1)
					LeftArm.Color3 = Color3.new(1,1,1)
					RightArm.Color3 = Color3.new(1,1,1)
					RightLeg.Color3 = Color3.new(1,1,1)
					LeftLeg.Color3 = Color3.new(1,1,1)
				end
				end)
        --[[
        --BillboardGui
        local BillboardGui = Instance.new("BillboardGui",Folder)
        BillboardGui.AlwaysOnTop = true
        BillboardGui.Enabled = true
        BillboardGui.Adornee = v.Character.Head
        BillboardGui.Size = UDim2.new(0,100,0,100)
        --NameTag
        local NameTag = Instance.new("TextLabel",BillboardGui)
        NameTag.BackgroundTransparency = 1
        NameTag.Size = UDim2.new(0,100,0,10)
        if v.TempPlayerStatsModule.IsBeast.Value == true then
        NameTag.TextColor3 = Color3.new(1,0,0)
        elseif v.TempPlayerStatsModule.IsBeast.Value == false then
        NameTag.TextColor3 = Color3.new(1,1,1)
        end
        NameTag.ZIndex = 10
        NameTag.Visible = true
        NameTag.TextSize = 20
        NameTag.Text = "Name: " .. v.Name
        ]]
			end)
		end
	end
else
getgenv().LoopBeastColor:Disconnect()
for i,v in pairs(game.Players:GetChildren()) do
    if v:IsA("Player") then
   for i,e in pairs(v.Character:GetChildren()) do
   if e:IsA("Folder") then
       pcall(function()
       e:Destroy()
       end)
end
end
end
end

end
end
}

Tab:Toggle{
	Name = "Door ESP",
	StartingState = false,
	Description = nil,
	Callback = function(state)
if state == true then
getgenv().DoorESP = false
	spawn(function()
		--single doors
		for i,v in pairs(workspace:GetDescendants()) do
			if v.Name == "SingleDoor" then
				pcall(function()
					local ESP = Instance.new("Highlight")
					ESP.Parent = v.Door
				end)

			end
		end
		wait(1)

		for i,v in pairs(workspace:GetDescendants()) do
			if v.Name == "SingleDoor" then
				spawn(function()
					while true do
						pcall(function()
							if v.DoorTrigger.ActionSign.Value == 11 then
								v.Door.Highlight.FillColor = Color3.new(0,1,0)
							elseif v.DoorTrigger.ActionSign.Value == 10 then
								v.Door.Highlight.FillColor = Color3.new(1,0,0)
							end
						end)
						if getgenv().DoorESP == true then
						    break;
						end
						wait(0.1)
					end
				end)
				
				
			end
		end
		
	end)
	--double doors
	spawn(function()
		for i,v in pairs(workspace:GetDescendants()) do
			if v.Name == "DoubleDoor" then
				pcall(function()
					local ESP = Instance.new("Highlight")
					ESP.Parent = v
				end)

			end
		end
		wait(1)

		for i,v in pairs(workspace:GetDescendants()) do
			if v.Name == "DoubleDoor" then
				spawn(function()
					while true do
						pcall(function()
							if v.DoorTrigger.ActionSign.Value == 11 then
								v.Highlight.FillColor = Color3.new(0,1,0)
							elseif v.DoorTrigger.ActionSign.Value == 10 then
								v.Highlight.FillColor = Color3.new(1,0,0)
							end
						end)
                        if getgenv().DoorESP == true then
                             print("Stopped itLop!2")
                             break;
                        end
                        wait(0.1)
					end
				end)
			end
		end
	end)
else
getgenv().DoorESP = true
	--signle door
	for i,v in pairs(workspace:GetDescendants()) do
		if v.Name == "SingleDoor" then
			pcall(function()
				v.Door.Highlight:Destroy()
			end)

		end
	end

	--double doors
	for i,v in pairs(workspace:GetDescendants()) do
		if v.Name == "DoubleDoor" then
			pcall(function()
				v.Highlight:Destroy()
			end)

		end
	end
end
    end
}

Tab:Toggle{
	Name = "Computer ESP",
	StartingState = false,
	Description = nil,
	Callback = function(state)
if state == true then
getgenv().StopComputerESP = false
for i,v in pairs(workspace:GetDescendants()) do 
    if v.Name == "ComputerTable" then
        pcall(function()
        local ESP = Instance.new("Highlight",v)
        end)
    end
end

spawn(function()
while true do
for i,v in pairs(workspace:GetDescendants()) do
    if v.Name == "ComputerTable" then
        if v.Screen.BrickColor == BrickColor.new("Bright blue") then
            pcall(function()
          v.Highlight.FillColor = Color3.new(0,0,1)
            end)
        elseif v.Screen.BrickColor == BrickColor.new("Dark green") then
            pcall(function()
          v.Highlight.FillColor = Color3.new(0,1,0)
            end)
        end
        if getgenv().StopComputerESP == true then
          print("Stopped itLop!PC")
          break;
        end
    end
end
wait(1)
end
end)
else
getgenv().StopComputerESP = true
for i,v in pairs(workspace:GetDescendants()) do 
    if v.Name == "ComputerTable" then
        pcall(function()
        v.Highlight:Destroy()
        end)
    end
end
end
	    end
}

Tab:Toggle{
	Name = "FreezePod ESP",
	StartingState = false,
	Description = nil,
	Callback = function(state)
if state == true then
for i,v in pairs(workspace:GetDescendants()) do 
    if v.Name == "FreezePod" then
        pcall(function()
        local ESP = Instance.new("Highlight",v)
        end)
    end
end
else
for i,v in pairs(workspace:GetDescendants()) do 
    if v.Name == "FreezePod" then
        pcall(function()
        v.Highlight:Destroy()
        end)
    end
end
end
	    end
}



local Tab2 = GUI:Tab{
	Name = "Beast",
	Icon = "rbxassetid://8569322835"
}
Tab2:Button{
	Name = "Inf Stamina",
	Description = nil,
	Callback = function()
if game.Players.LocalPlayer.TempPlayerStatsModule.IsBeast.Value == true then
game.UserInputService.InputBegan:Connect(function(key)
if key.KeyCode == Enum.KeyCode.Q then
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 30
end
end)

game.UserInputService.InputEnded:Connect(function(key)
if key.KeyCode == Enum.KeyCode.Q then
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end
end)

pcall(function()
game.Players.LocalPlayer.Character.PowersLocalScript:Destroy()    
end)
else
GUI:Notification{
	Title = "Alert!",
	Text = "Your not the beast >:((",
	Duration = 5,
	Callback = function() end
}
end
	    end
}

Tab2:Button{
	Name = "No Slow",
	Description = nil,
	Callback = function()
if game.Players.LocalPlayer.TempPlayerStatsModule.IsBeast.Value == true then
pcall(function()
game.Players.LocalPlayer.Character.PowersLocalScript:Destroy()
end)
else
GUI:Notification{
	Title = "Alert!",
	Text = "Your not the beast >:((",
	Duration = 5,
	Callback = function() end
}
end
	end
}

Tab2:Button{
	Name = "Enable Crawl",
	Description = nil,
	Callback = function()
if game.Players.LocalPlayer.TempPlayerStatsModule.IsBeast.Value == true then
game:GetService("Players").LocalPlayer.TempPlayerStatsModule.DisableCrawl.Value = false
else
GUI:Notification{
	Title = "Alert!",
	Text = "Your not the beast >:((",
	Duration = 5,
	Callback = function() end
}
end
	end
}

Tab2:Button{
	Name = "Remove Sounds and Glow",
	Description = nil,
	Callback = function()
if game.Players.LocalPlayer.TempPlayerStatsModule.IsBeast.Value == true then
for i,v in pairs(game.Players.LocalPlayer.Character.Hammer.Handle:GetChildren()) do
    if v:IsA("Sound") then
        pcall(function()
        v:Destroy()
        end)
    end
end

pcall(function()
game.Players.LocalPlayer.Character.Gemstone.Handle.PointLight:Destroy()
end)
else
GUI:Notification{
	Title = "Alert!",
	Text = "Your not the beast >:((",
	Duration = 5,
	Callback = function() end
}
end
end
}

Tab2:Button{
	Name = "Bug Game Forever",
	Description = nil,
	Callback = function()
if game.Players.LocalPlayer.TempPlayerStatsModule.IsBeast.Value == true then
game.Players.LocalPlayer.Character:Destroy()
else
GUI:Notification{
	Title = "Alert!",
	Text = "Your not the beast >:((",
	Duration = 5,
	Callback = function() end
}
end
	end
}

Tab2:Toggle{
	Name = "Auto tie",
	StartingState = false,
	Description = nil,
	Callback = function(state)
if state == true then
if game.Players.LocalPlayer.TempPlayerStatsModule.IsBeast.Value == true then
getgenv().StopTheShit = false
while wait() do
if game:GetService("Players").LocalPlayer.TempPlayerStatsModule.IsBeast.Value == true then
local Players = game:GetService("Players")
local lp = Players.LocalPlayer

local function GetClosestPlayer()
   local target = nil
   local distance = math.huge
 
   for i,v in next, Players:GetPlayers() do
       if v and v ~= lp and v.Character and v.Character:FindFirstChildOfClass('Humanoid') and v.Character:FindFirstChildOfClass('Humanoid').RootPart then
           local plrdist = lp:DistanceFromCharacter(v.Character:FindFirstChildOfClass('Humanoid').RootPart.CFrame.p)
           if plrdist < distance then
               target = v
               distance = plrdist
           end
       end
   end
 
   return target
end

print(GetClosestPlayer().Name)
local args = {
    [1] = "HammerTieUp",
    [2] = GetClosestPlayer().Character.Torso,
    [3] = GetClosestPlayer().Character.HumanoidRootPart.Position
}

game:GetService("Players").LocalPlayer.Character.Hammer.HammerEvent:FireServer(unpack(args))
end
if getgenv().StopTheShit == true then
    break;
end
end
else
GUI:Notification{
	Title = "Alert!",
	Text = "Your not the beast>:(",
	Duration = 3,
	Callback = function() end
}
end
else
getgenv().StopTheShit = true
end
	    end
}

local Tab3 = GUI:Tab{
	Name = "Non Beast",
	Icon = "rbxassetid://8569322835"
}
Tab3:Button{
	Name = "Q to sprint forever",
	Description = nil,
	Callback = function()
game.UserInputService.InputBegan:Connect(function(key)
if key.KeyCode == Enum.KeyCode.Q then
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 30
end
end)

game.UserInputService.InputEnded:Connect(function(key)
if key.KeyCode == Enum.KeyCode.Q then
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end
end)

pcall(function()
game.Players.LocalPlayer.Character.PowersLocalScript:Destroy()    
end)
	    end
}

Tab3:Button{
	Name = "No error on hack",
	Description = nil,
	Callback = function()
spawn(function()
while wait() do
game.ReplicatedStorage.RemoteEvent:FireServer("SetPlayerMinigameResult",true)
end
end)
	    end
}

local Tab5 = GUI:Tab{
	Name = "Misc",
	Icon = "rbxassetid://8569322835"
}

Tab5:Button{
	Name = "Close trade GUI",
	Description = nil,
	Callback = function()
if game.PlaceId == 1738581510 then
	    game:GetService("Players").LocalPlayer.PlayerGui.MenusScreenGui.TradingMenuWindow.Visible = false

GUI:Notification{
	Title = "Alert!",
	Text = "Visual scam wont work if u close the gui while doing the visual scam.",
	Duration = 5,
	Callback = function() end
}
else
GUI:Notification{
	Title = "Alert!",
	Text = "Your not in the trading server Join it!! >:(",
	Duration = 3,
	Callback = function() end
}
end
	    end
}

Tab5:Button{
	Name = "Visual Scam",
	Description = nil,
	Callback = function()
if game.PlaceId == 1738581510 then
firesignal(game:GetService("Players").LocalPlayer.PlayerGui.MenusScreenGui.TradingMenuWindow.TopBar.CloseButton.MouseButton1Click)
wait(3)
game:GetService("Players").LocalPlayer.PlayerGui.MenusScreenGui.TradingMenuWindow.Visible = true
else
GUI:Notification{
	Title = "Alert!",
	Text = "Your not in the trading server Join it!! >:(",
	Duration = 3,
	Callback = function() end
}
end
	    end
}

Tab5:Textbox{
	Name = "Send trade",
	Callback = function(text)
local args = {
    [1] = "SendTradeRequest",
    [2] = game.Players[text].UserId
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
     end
}

Tab5:Button{
	Name = "Inf Credits (Only works on Bundles)",
	Description = nil,
	Callback = function()
	    print("This only works on bundles")
while wait() do
game:GetService("Players").LocalPlayer.SavedPlayerStatsModule.Credits.Value = 10000000000
end
	    end
}

local MyDropdown = Tab5:Dropdown{
	Name = "Buy unavailable bundles (go to shop to buy it)",
	StartingText = "Select...",
	Description = nil,
	Items = {
		{"2ndAniversaryBundle (Rarest)",1},
		{"AnniversaryClassicBundle",2},	
		{"SpookySweetsBundle",3}
	},
	Callback = function(item)
if item == 1 then
game:GetService("Players").LocalPlayer.PlayerGui.MenusScreenGui.ShopMenuWindow.Body.SideBarTabsFrame.BuyBundleButton2.LocalScript.Enabled = true
game:GetService("Players").LocalPlayer.PlayerGui.MenusScreenGui.ShopMenuWindow.Body.SideBarTabsFrame.BuyBundleButton2.Visible = true

local hi = require(game:GetService("ReplicatedStorage").DeveloperProductIds);

hi["RedNutcrackerBundle"] = 592709755
elseif item == 2 then
game:GetService("Players").LocalPlayer.PlayerGui.MenusScreenGui.ShopMenuWindow.Body.SideBarTabsFrame.BuyBundleButton2.LocalScript.Enabled = true
game:GetService("Players").LocalPlayer.PlayerGui.MenusScreenGui.ShopMenuWindow.Body.SideBarTabsFrame.BuyBundleButton2.Visible = true

local hi = require(game:GetService("ReplicatedStorage").DeveloperProductIds);

hi["RedNutcrackerBundle"] = 307455363
elseif item == 3 then
game:GetService("Players").LocalPlayer.PlayerGui.MenusScreenGui.ShopMenuWindow.Body.SideBarTabsFrame.BuyBundleButton2.LocalScript.Enabled = true
game:GetService("Players").LocalPlayer.PlayerGui.MenusScreenGui.ShopMenuWindow.Body.SideBarTabsFrame.BuyBundleButton2.Visible = true

local hi = require(game:GetService("ReplicatedStorage").DeveloperProductIds);

hi["RedNutcrackerBundle"] = 1111394671
end
	    return
	    end
}
