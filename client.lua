
Citizen.CreateThread(function()
    while true do
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
        Citizen.Wait(1000)
    end
end)

