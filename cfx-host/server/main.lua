AddEventHandler('onResourceStart', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        print('\n^1[SERVER]^3 ^5 FrostLand Initialized ! ^7\n')
    end
end)

local function Announce()
    for i = 1, 9 do
        TriggerClientEvent('chat:addMessage', -1, {
            args = { '^4[SERVER]^7 Server Restarting In 10 Minutes...' }
        })
        Wait(700)
    end
end

local function CheckTime()
    local Hour = os.date("*t").hour
    local Minute = os.date("*t").min

    if (Hour == 23 or Hour == 11) and Minute == 50 then
        Announce()
    end
end

CreateThread(function()
    while true do
        CheckTime()
        Wait(60000)
    end
end)