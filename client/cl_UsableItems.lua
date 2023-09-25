ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('sm_druglabs:useWeed')
AddEventHandler('sm_druglabs:useWeed', function(source)
    lib.progressCircle({
        duration = 2000,
        label = 'Using Joint...',
        position = 'bottom',
        useWhileDead = false,
        canCancel = false,
        disable = {
            car = true,
            move = true,
        },
    })
RequestAnimSet("move_m@drunk@verydrunk")
    while not HasAnimSetLoaded("move_m@drunk@verydrunk") do
        Wait(0)
    end
    SetPedMotionBlur(cache.ped, true)
    SetPedMovementClipset(cache.ped, "MOVE_M@DRUNK@VERYDRUNK", 1000)
    StartScreenEffect("CamPushInFranklin", 10000, true)
    ShakeGameplayCam("DRUNK_SHAKE", 0.3)
    Wait(math.random(25000, 38000))
    StartScreenEffect("DrugsDrivingOut", 3000, true)
    StopScreenEffect("CamPushInFranklin")
    Wait(3000)
    StopScreenEffect("DrugsDrivingOut")
    AnimpostfxStopAll()
    ShakeGameplayCam("DRUNK_SHAKE", 0.0)
    SetPedMotionBlur(cache.ped, false)
    ResetPedMovementClipset(cache.ped, 2000)
end)

RegisterNetEvent('sm_druglabs:useCoke')
AddEventHandler('sm_druglabs:useCoke', function(source)
    lib.progressCircle({
        duration = 2000,
        label = 'Using Coke...',
        position = 'bottom',
        useWhileDead = false,
        canCancel = false,
        disable = {
            car = true,
            move = true,
        },
    })
RequestAnimSet("move_m@alien")
    while not HasAnimSetLoaded("move_m@alien") do
        Wait(0)
    end
    SetPedMovementClipset(cache.ped, "move_m@alien", 1000)
    StartScreenEffect("BeastLaunch", 10000, true)
    ShakeGameplayCam("DRUNK_SHAKE", 0.3)
    Wait(math.random(25000, 38000))
    StartScreenEffect("DrugsDrivingOut", 3000, true)
    StopScreenEffect("BeastLaunch")
    Wait(3000)
    StopScreenEffect("DrugsDrivingOut")
    AnimpostfxStopAll()
    ShakeGameplayCam("DRUNK_SHAKE", 0.0)
    ResetPedMovementClipset(cache.ped, 2000)
end)