--sigma

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local function teleport(CFrame)
    character.HumanoidRootPart.CFrame = CFrame
    character.HumanoidRootPart.Anchored = true
end

teleport(CFrame.new(5000,5000,0))

local function enterPromoCode(promoCode)
    local args = {
        [1] = "EnterPromoCode",
        [2] = promoCode
    }

    game:GetService("ReplicatedStorage"):WaitForChild("MainEvent"):FireServer(unpack(args))
end

local promoCodes = {
    "DACARNIVAL",
    "HALLOWEEN2024",
    "RUBY",
    "pumpkins2023",
}

for _, code in ipairs(promoCodes) do
    enterPromoCode(code)
    task.wait(2)
end
