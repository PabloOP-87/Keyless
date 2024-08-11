game.StarterGui:SetCore('SendNotification', { Title = 'Notification'; Text = 'Group Chest Claimed!'; })
game:GetService("ReplicatedStorage"):WaitForChild("GroupChestRemotes"):WaitForChild("ClaimChest"):InvokeServer()

local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
 
local PhantomForcesWindow = Library:NewWindow("Free UGC Clicker")
 
local KillingCheats = PhantomForcesWindow:NewSection("Main")

local autoClick = false
local autoSpin = false
local autoClaimGifts = false

KillingCheats:CreateToggle("Auto Click", function(value)
    autoClick = value
    while autoClick do
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Click"):FireServer()
    wait(0.001)
end
end)

KillingCheats:CreateToggle("Auto Spin", function(value)
    autoSpin = value
    while autoSpin do
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Lucky wheel"):WaitForChild("Spin"):InvokeServer()
wait(3)
    end
end)

KillingCheats:CreateToggle("Auto Claim Gifts", function(value)
    autoClaimGifts = value
    while autoClaimGifts do
        local args = {
            [1] = 300
        }
        
        for i = 1, 12 do
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Gifts"):WaitForChild("Claim"):FireServer(unpack(args))
            args[1] = args[1] + 300
        end
    wait(5)
end
end)

KillingCheats:CreateButton("Redeem Codes", function()
local args = {
    [1] = "Dominus"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("PlayerSettings"):WaitForChild("RedeemCode"):FireServer(unpack(args))
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
    game.StarterGui:SetCore('SendNotification', { Title = 'Anti-AFK activated!'; Text = 'Enjoy!'; })
    end)

local KillingCheats = PhantomForcesWindow:NewSection("YT: Antony Is Good")

KillingCheats:CreateButton("Copy YouTube link", function()
        local link = "https://www.youtube.com/@Antonimuses69"
    
        local function copyLink()
            setclipboard(link)
            print("Youtube link copied to clipboard!")
        end
        
        copyLink()
    end)