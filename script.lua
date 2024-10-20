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
