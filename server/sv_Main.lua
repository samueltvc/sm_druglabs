ESX = exports["es_extended"]:getSharedObject()

    lib.callback.register('sm:weedosprocess', function()

    local _source = source
    local Inventory = exports.ox_inventory:Inventory()
    local xPlayer = ESX.GetPlayerFromId(_source)
        if Inventory.GetItem(source, Config.Weed.WeedHarvestItem).count > 1 then
            Inventory.RemoveItem(source, Config.Weed.WeedHarvestItem, 2)
            Inventory.AddItem(source, Config.Weed.WeedProcessItem, 1)
		else
            TriggerClientEvent('ox_lib:notify', -1, { title = 'Drug System', icon= 'ban', position = 'top', description = Config.Progress.DontHaveResources})
        end
    end)

    lib.callback.register('sm:jointprocess', function()

        local _source = source
        local Inventory = exports.ox_inventory:Inventory()
        local xPlayer = ESX.GetPlayerFromId(_source)
            if Inventory.GetItem(source, Config.Weed.WeedProcessItem).count and Inventory.GetItem(source, Config.Weed.WeedProcess).count > 1 then
    
                Inventory.RemoveItem(source, Config.Weed.WeedProcessItem, 1)
                Inventory.RemoveItem(source, Config.Weed.WeedProcess, 1)
                Inventory.AddItem(source, Config.Weed.JointItem, 1)
            else
                TriggerClientEvent('ox_lib:notify', -1, { title = 'Drug System', icon= 'ban', position = 'top', description = Config.Progress.DontHaveResources})
            end
        end)

    lib.callback.register('sm:cokeharvest', function()

    local _source = source
    local Inventory = exports.ox_inventory:Inventory()
    local xPlayer = ESX.GetPlayerFromId(_source)
		if Inventory.CanCarryItem(source, Config.Coke.CokeHarvestItem, 2 ) then
            Inventory.AddItem(source, Config.Coke.CokeHarvestItem, 2)
		else
            TriggerClientEvent('ox_lib:notify', -1, { title = 'Drug System', icon= 'ban', position = 'top', description = Config.Progress.DontHaveStorage})
        end
    end)

    lib.callback.register('sm:weedharvest', function()

        local _source = source
        local Inventory = exports.ox_inventory:Inventory()
        local xPlayer = ESX.GetPlayerFromId(_source)
            if Inventory.CanCarryItem(source, Config.Weed.WeedHarvestItem, 2 ) then
                Inventory.AddItem(source, Config.Weed.WeedHarvestItem, 2)
            else
                TriggerClientEvent('ox_lib:notify', -1, { title = 'Drug System', icon= 'ban', position = 'top', description = Config.Progress.DontHaveStorage})
            end
        end)

lib.callback.register('sm:cokeprocess', function()

    local _source = source
    local Inventory = exports.ox_inventory:Inventory()
    local xPlayer = ESX.GetPlayerFromId(_source)

        if Inventory.GetItem(source, Config.Coke.CokeHarvestItem).count and Inventory.GetItem(source, Config.Coke.CokeProcess).count > 1 then
            Inventory.RemoveItem(source, Config.Coke.CokeHarvestItem, 2)
            Inventory.RemoveItem(source, Config.Coke.CokeProcess, 1)
            Inventory.AddItem(source, Config.Coke.CokeProcessItem, 1)
    else
        TriggerClientEvent('ox_lib:notify', -1, { title = 'Drug System', icon= 'ban', position = 'top', description = Config.Progress.DontHaveResources})
    end
end)

RegisterServerEvent("sm_drugslabs:buycoke")
AddEventHandler("sm_drugslabs:buycoke", function(data)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local Inventory = exports.ox_inventory:Inventory()

        if Inventory.GetItem(source, "money").count > 9999 then
        if Inventory.CanCarryItem(source, Config.Coke.CokeCard, 1) then
                Inventory.AddItem(source, Config.Coke.CokeCard, 1)
                Inventory.RemoveItem(source, 'money', 10000)
        else
            TriggerClientEvent('ox_lib:notify', -1, { title = 'Drug System', icon= 'ban', position = 'top', description = Config.Progress.DontHaveStorage})
        end
    else
        TriggerClientEvent('ox_lib:notify', -1, { title = 'Drug System', icon= 'ban', position = 'top', description = Config.Progress.DontHaveResources})
    end
end)

RegisterServerEvent("sm_drugslabs:buyweed")
AddEventHandler("sm_drugslabs:buyweed", function(data)
   
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local Inventory = exports.ox_inventory:Inventory()

        if Inventory.GetItem(source, "money").count > 9999 then
         
        if Inventory.CanCarryItem(source, Config.Weed.WeedCard, 1) then
                Inventory.AddItem(source, Config.Weed.WeedCard, 1)
                Inventory.RemoveItem(source, 'money', 10000)
        else
            TriggerClientEvent('ox_lib:notify', -1, { title = 'Drug System', icon= 'ban', position = 'top', description = Config.Progress.DontHaveStorage})
        end
    else
        TriggerClientEvent('ox_lib:notify', -1, { title = 'Drug System', icon= 'ban', position = 'top', description = Config.Progress.DontHaveResources})
    end
end)

RegisterServerEvent("sm_drugslabs:buybag")
AddEventHandler("sm_drugslabs:buybag", function(data)
   
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local Inventory = exports.ox_inventory:Inventory()

        if Inventory.GetItem(source, "money").count > 49 then
         
        if Inventory.CanCarryItem(source, Config.Coke.CokeProcess, 1) then
                Inventory.AddItem(source, Config.Coke.CokeProcess, 5)
                Inventory.RemoveItem(source, 'money', 50)
        else
            TriggerClientEvent('ox_lib:notify', -1, { title = 'Drug System', icon= 'ban', position = 'top', description = Config.Progress.DontHaveStorage})
        end
    else
        TriggerClientEvent('ox_lib:notify', -1, { title = 'Drug System', icon= 'ban', position = 'top', description = Config.Progress.DontHaveResources})
    end
end)

RegisterServerEvent("sm_drugslabs:buypaper")
AddEventHandler("sm_drugslabs:buypaper", function(data)
   
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local Inventory = exports.ox_inventory:Inventory()

        if Inventory.GetItem(source, "money").count > 49 then
         
        if Inventory.CanCarryItem(source, Config.Weed.WeedProcess, 1) then
                Inventory.AddItem(source, Config.Weed.WeedProcess, 5)
                Inventory.RemoveItem(source, 'money', 50)
        else
            TriggerClientEvent('ox_lib:notify', -1, { title = 'Drug System', icon= 'ban', position = 'top', description = Config.Progress.DontHaveStorage})
        end
    else
        TriggerClientEvent('ox_lib:notify', -1, { title = 'Drug System', icon= 'ban', position = 'top', description = Config.Progress.DontHaveResources})
    end
end)