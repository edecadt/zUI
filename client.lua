

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100)
        local hunger = 0
        local thirst = 0
        TriggerEvent('esx_status:getStatus', 'hunger', function(status)
            hunger = math.floor(status.getPercent())
        end)
        TriggerEvent('esx_status:getStatus', 'thirst', function(status)
            thirst = math.floor(status.getPercent())
        end)
        SendNUIMessage({
            show = IsPauseMenuActive(),
            armor = GetPedArmour(PlayerPedId()),
            health = (GetEntityHealth(PlayerPedId())),
            hunger = hunger,
            thirst = thirst
        })
    end
end)

RegisterCommand('armor', function (_, args)
    local ped = PlayerPedId()
    SetPedArmour(ped, tonumber(args[1]))
end)