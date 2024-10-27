local ReplicatedStorage = game:GetService("ReplicatedStorage")
local FundsRemoteFunction = ReplicatedStorage.Transactions.ClientToServer:GetFunds

-- Function to request 5 million
local function requestMoney()
    local success, result = pcall(function()
        return FundsRemoteFunction:InvokeServer(5000000)  -- Request 5 million from server
    end)

    if success then
        print("Funds requested successfully.")
    else
        warn("Failed to request funds: " .. tostring(result))
    end
end

-- Call the function to request the money
requestMoney()
