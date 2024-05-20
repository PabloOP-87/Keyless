--new click for ugc game source made by olailei

game.StarterGui:SetCore('SendNotification', { Title = 'Stealling your acc...'; Text = ''; })

task.wait(2)

game.StarterGui:SetCore('SendNotification', { Title = 'Done! ty for ur robux lol'; Text = ''; })

local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
 
local PhantomForcesWindow = Library:NewWindow("FREE UGCS CLICKER")
 
local KillingCheats = PhantomForcesWindow:NewSection("Main")
 
KillingCheats:CreateToggle("Auto Click", function(value)
while wait(0.01) do
game:GetService("ReplicatedStorage").Remotes.Click:FireServer()
end
end)

KillingCheats:CreateToggle("Auto Spin Wheel", function(value)
while wait(1) do
game:GetService("ReplicatedStorage").Remotes.SpinWheel:FireServer()
end
end)

KillingCheats:CreateButton("Claim Daily Reward", function()
game:GetService("ReplicatedStorage").Remotes.ClaimDailyChest:FireServer()
end)

KillingCheats:CreateButton("goto 1.4x zone", function()
    local function teleportToNamedPart(partName)
        local parts = game.Workspace:GetDescendants()
        for _, part in ipairs(parts) do
            if part:IsA("Part") and part.Name == partName then
                game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(part.CFrame)
            end
        end
    end
    
    teleportToNamedPart("AfkZone")
end)

KillingCheats:CreateButton("Anti AFK", function()
    while not game:IsLoaded() do wait() end
    repeat wait() until game.Players.LocalPlayer.Character
    Players = game:GetService("Players")
    local GC = getconnections or get_signal_cons
    if GC then
        for i,v in pairs(GC(Players.LocalPlayer.Idled)) do
            if v["Disable"] then v["Disable"](v)
            elseif v["Disconnect"] then v["Disconnect"](v)
            end
        end
    else
      Players.LocalPlayer.Idled:Connect(function()
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
      end)
    end
    game.StarterGui:SetCore('SendNotification', { Title = 'Fluxus > Arceus X'; Text = 'Anti-AFK activated!'; })
    end)

local KillingCheats = PhantomForcesWindow:NewSection("Credits")

KillingCheats:CreateButton("made by Kai Viado", function()
print("dont skid my source")
end)