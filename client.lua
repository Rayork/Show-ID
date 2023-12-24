ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

exports.ox_target:addGlobalPlayer({
    {
        name = 'id',
        icon = 'fa-solid fa-user',
        label = 'ID',
        onSelect = function(data)
            local targetEntity = data.entity
            
            if DoesEntityExist(targetEntity) and IsEntityAPed(targetEntity) then
                local playerId = GetPlayerServerId(NetworkGetEntityOwner(targetEntity))
                ESX.ShowNotification(string.format("Targeted Player ID: %d", playerId))
            else
                print("No player targeted.")
            end
        end
    },
})

