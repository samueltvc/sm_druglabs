ESX = exports["es_extended"]:getSharedObject()

--------------------------------------------------------------------------------------------------------------------

exports['qtarget']:AddBoxZone("card", Config.Market.Position, 3.0, 6.0, {
    name="card",
    heading=272,
    debugPoly = false   ,
    minZ=13.0,
    maxZ=14.4,
}, {
    options = {
        {
            event = "sm_heist:cardmarket",
            icon = "fa-solid fa-user-secret",
            label = Config.Progress.MarketTalk,
        },
    },
    distance = 2.0
})

--------------------------------------------------------------------------------------------------------------------

RegisterNetEvent('sm_heist:cardmarket', function()
    lib.progressBar({
		duration = 2000,
		label = Config.Progress.MarketTalking,
		position = 'bottom',
		useWhileDead = false,
		canCancel = false,
		anim = {
			dict = 'misscarsteal4@actor',
			clip = 'actor_berating_loop'
		},
		disable = {
			move = true,
			car = false
		},
	})
    lib.registerContext({
        id = 'bm',
        title = 'Card System',
        onExit = function()
        end,
        options = {
            {
                title = Config.Progress.CokeCardLabel,
                icon = 'fa-solid fa-credit-card',
                onSelect = function(args)
                    Wait(500)
                end,
                event = 'sm_heist:buyed'     
            },
            {
                title = Config.Progress.WeedCardLabel,
                icon = 'fa-solid fa-credit-card',
                onSelect = function(args)
                    Wait(500)
                end,
                event = 'sm_heist:buyedweed'     
            },
            {
                title = Config.Progress.WeedRollerLabel,
                icon = 'fa-solid fa-cannabis',
                onSelect = function(args)
                    Wait(500)
                end,
                event = 'sm_drugslabs:buypaper'     
            },
            {
                title = Config.Progress.PlasticBagLabel,
                icon = 'fa-solid fa-leaf',
                onSelect = function(args)
                    Wait(500)
                end,
                event = 'sm_drugslabs:buybag'     
            }
        }
    })
    lib.showContext('bm')
end)

RegisterNetEvent("sm_heist:buyed")
AddEventHandler("sm_heist:buyed", function()
        lib.progressBar({
            duration = 2000,
            label = Config.Progress.Buyed,
            position = 'bottom',
            useWhileDead = false,
            canCancel = false,
            anim = {
                dict = 'misscarsteal4@actor',
                clip = 'actor_berating_loop'
            },
            disable = {
                move = true,
                car = false
            },
        })
    ClearPedTasksImmediately(playerPed)
    local TSC = TriggerServerEvent
    Wait(500)
    TSC('sm_drugslabs:buycoke')
end)

RegisterNetEvent("sm_drugslabs:buypaper")
AddEventHandler("sm_drugslabs:buypaper", function()
        lib.progressBar({
            duration = 2000,
            label = Config.Progress.Buyed,
            position = 'bottom',
            useWhileDead = false,
            canCancel = false,
            anim = {
                dict = 'misscarsteal4@actor',
                clip = 'actor_berating_loop'
            },
            disable = {
                move = true,
                car = false
            },
        })
    ClearPedTasksImmediately(playerPed)
    local TSC = TriggerServerEvent
    Wait(500)
    TSC('sm_drugslabs:buypaper')
end)

RegisterNetEvent("sm_drugslabs:buybag")
AddEventHandler("sm_drugslabs:buybag", function()
        lib.progressBar({
            duration = 2000,
            label = Config.Progress.Buyed,
            position = 'bottom',
            useWhileDead = false,
            canCancel = false,
            anim = {
                dict = 'misscarsteal4@actor',
                clip = 'actor_berating_loop'
            },
            disable = {
                move = true,
                car = false
            },
        })
    ClearPedTasksImmediately(playerPed)
    local TSC = TriggerServerEvent
    Wait(500)
    TSC('sm_drugslabs:buybag')
end)

Citizen.CreateThread(function()
    RequestModel(0x040EABE3)
    local spawnedNpc = CreatePed(4, 0x040EABE3, Config.Market.Position, false, false)
    SetEntityInvincible(spawnedNpc, true)
    FreezeEntityPosition(spawnedNpc, true)
    SetBlockingOfNonTemporaryEvents(spawnedNpc, true)
end)

RegisterNetEvent("sm_heist:buyedweed")
AddEventHandler("sm_heist:buyedweed", function()
        lib.progressBar({
            duration = 2000,
            label = Config.Progress.Buyed,
            position = 'bottom',
            useWhileDead = false,
            canCancel = false,
            anim = {
                dict = 'misscarsteal4@actor',
                clip = 'actor_berating_loop'
            },
            disable = {
                move = true,
                car = false
            },
        })
    ClearPedTasksImmediately(playerPed)
    local TSC = TriggerServerEvent
    Wait(500)
    TSC('sm_drugslabs:buyweed')
end)

--------------------------------------------------------------------------------------------------------------------