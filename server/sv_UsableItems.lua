ESX = exports["es_extended"]:getSharedObject()
local Inventory = exports.ox_inventory:Inventory()

--WEED--
ESX.RegisterUsableItem(Config.Weed.JointItem, function(source)
    local src = source

    if Inventory.GetItem(source, Config.Weed.JointItem).count > 0 then
    TriggerClientEvent('sm_druglabs:useWeed', src)
    local _source = source
    Inventory.RemoveItem(source, Config.Weed.JointItem, 1)
    else
    TriggerClientEvent('ox_lib:notify', -1, { title = 'Drug System', icon= 'ban', position = 'top', description = Config.Progress.DontHaveResources})
    end
end)
--[[XANAX
RegisterUsableItem(Config.XanaxItem, function(source)
RequestAnimSet("move_m@drunk@verydrunk")
        while not HasAnimSetLoaded("move_m@drunk@verydrunk") do
            Wait(0)
        end
        SetPedMotionBlur(cache.ped, true)
        SetPedMovementClipset(cache.ped, "MOVE_M@DRUNK@VERYDRUNK", 1000)
        StartScreenEffect("DeadlineNeon", 10000, true)
        ShakeGameplayCam("DRUNK_SHAKE", 0.3)
        Wait(math.random(25000, 38000))
        StartScreenEffect("DrugsDrivingOut", 3000, true)
        StopScreenEffect("DeadlineNeon")
        Wait(3000)
        StopScreenEffect("DrugsDrivingOut")
        AnimpostfxStopAll()
        ShakeGameplayCam("DRUNK_SHAKE", 0.0)
        SetPedMotionBlur(cache.ped, false)
        ResetPedMovementClipset(cache.ped, 2000)
end)
--ECSTACY--
RegisterUsableItem(Config.EcstacyItem, function(source)
RequestAnimSet("move_m@drunk@verydrunk")
    while not HasAnimSetLoaded("move_m@drunk@verydrunk") do
        Wait(0)
    end
    SetPedMotionBlur(cache.ped, true)
    SetPedMovementClipset(cache.ped, "MOVE_M@DRUNK@VERYDRUNK", 1000)
    StartScreenEffect("DeathFailMichaelIn", 10000, true)
    ShakeGameplayCam("DRUNK_SHAKE", 0.3)
    Wait(math.random(25000, 38000))
    StartScreenEffect("DrugsDrivingOut", 3000, true)
    StopScreenEffect("DeathFailMichaelIn")
    Wait(3000)
    StopScreenEffect("DrugsDrivingOut")
    AnimpostfxStopAll()
    ShakeGameplayCam("DRUNK_SHAKE", 0.0)
    SetPedMotionBlur(cache.ped, false)
    ResetPedMovementClipset(cache.ped, 2000)
end)--]]
--COKE--
ESX.RegisterUsableItem(Config.Coke.CokeHarvestItem, function(source)
    local src = source

    if Inventory.GetItem(source, Config.Coke.CokeHarvestItem).count > 0 then
    TriggerClientEvent('sm_druglabs:useCoke', src)
    local _source = source
    Inventory.RemoveItem(source, Config.Coke.CokeHarvestItem, 1)
    else
    TriggerClientEvent('ox_lib:notify', -1, { title = 'Drug System', icon= 'ban', position = 'top', description = Config.Progress.DontHaveResources})
    end
end)
--