exports.ox_target:addGlobalPlayer({
    {
        event = "search",
        icon = 'fa-solid fa-person',
        label = 'Perquisisci',
        num = 1
    },
})

local autisticedoardo = false

RegisterNetEvent('search')
AddEventHandler('search', function(data)
    local playerPed = GetPlayerPed(-1)  
    
    if DoesEntityExist(playerPed) and not IsEntityDead(playerPed) then
        local weaponHash = GetSelectedPedWeapon(playerPed)
        
        if weaponHash ~= GetHashKey("WEAPON_UNARMED") then
            autisticedoardo = true
            exports.ox_inventory:openInventory('player', GetPlayerServerId(NetworkGetPlayerIndexFromPed(data.entity)))
            if autisticedoardo == true then
                ExecuteCommand('me ~r~Stai Perquisendo il Giocatore')
            else
                ESX.ShowNotification('Non puoi perquisirlo')
            end
        else
            
        end
    else
        
    end
end)