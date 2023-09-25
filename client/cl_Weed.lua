ESX = exports["es_extended"]:getSharedObject()
local conditionsMet = false
local ox_inventory = exports.ox_inventory

ProgressBar = function(duration, label)
    if Config.ProgressBar == "ox_lib" then
        lib.progressBar({
            duration = duration,
            label = label,
            useWhileDead = false,
            canCancel = false
        })
    elseif Config.ProgresBars == "qbcore" then
        QBCore.Functions.Progressbar(label, label, duration, false, true, {
        }, {}, {}, {}, function()
        end)
        Wait(duration)
    elseif Config.ProgressBar == "progressBars" then
        exports['progressBars']:startUI(duration, label)
        Wait(duration)
    end
end

AddEventHandler("sm_weed", function()
    HarvestWeed()
end)

AddEventHandler("sm_wout", function()
    Teleportwout()
end)

AddEventHandler("sm_win", function()
    CardWeed()
    Teleportwin()
end)

AddEventHandler("sm_jointprocess", function(xCannabis)
    ProcessJoint()
end)

function Teleportwin()
    if conditionsMet then
    local playerPed = PlayerPedId()
    DoScreenFadeOut(1000)
    lib.progressCircle({
        duration = 2000,
        position = 'bottom',
        label = 'Entering...',
        useWhileDead = false,
        canCancel = false,
        disable = {
            car = true,
            move = true,
        },
    })
    SetEntityCoords(playerPed, Config.Weed.LeaveWeedlab)
    SetEntityHeading(playerPed, 184.251)
    DoScreenFadeIn(1000)
        else 
            lib.notify({
                title = 'Weed System',
                position = 'top',
                description = Config.Progress.WeedCardDeclained,
                type = 'error'
            })
        end
end

function Teleportwout()
    local playerPed = PlayerPedId()
    DoScreenFadeOut(1000)
    lib.progressCircle({
        duration = 2000,
        position = 'bottom',
        label = 'Leaving...',
        useWhileDead = false,
        canCancel = false,
        disable = {
            car = true,
            move = true,
        },
    })
    SetEntityCoords(playerPed, Config.Weed.EnterWeedlab)
    SetEntityHeading(playerPed, 76.535)
    DoScreenFadeIn(1000)
end

function CardWeed()
    local hasItem = ox_inventory:Search('count', Config.Weed.WeedCard)
    if hasItem >= 1 then
        conditionsMet = true
        else
            conditionsMet = false
        end
    end

    function ProcessJoint()
        lib.progressCircle({
            duration = 6500,
            position = 'bottom',
            label = Config.Progress.ProcessJointLabel,
            useWhileDead = false,
            canCancel = false,
            disable = {
                car = true,
                move = true,
            },
            anim = {
                dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
                clip = 'machinic_loop_mechandplayer',
            },
            prop = {
                model = `bkr_prop_weed_bud_01a`,
                pos = vec3(0.03, 0.03, 0.02),
                rot = vec3(0.0, 0.0, -1.5)
            },
        })
        Wait(500)
        lib.callback('sm:jointprocess')
        end

        AddEventHandler("sm_weedprocess2", function(xCannabis)
            ProcessWeed()
        end)
    
        function ProcessWeed()
            lib.progressCircle({
                duration = 6500,
                position = 'bottom',
                label = Config.Progress.ProcessWeedLabel,
                useWhileDead = false,
                canCancel = false,
                disable = {
                    car = true,
                    move = true,
                },
                anim = {
                    dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
                    clip = 'machinic_loop_mechandplayer',
                },
                prop = {
                    model = `bkr_prop_weed_bud_01a`,
                    pos = vec3(0.03, 0.03, 0.02),
                    rot = vec3(0.0, 0.0, -1.5)
                },
            })
            Wait(500)
            lib.callback('sm:weedosprocess')
            end

            function HarvestWeed()
                lib.progressCircle({
                    duration = 6500,
                    position = 'bottom',
                    label = Config.Progress.HarvestWeedLabel,
                    useWhileDead = false,
                    canCancel = false,
                    disable = {
                        car = true,
                        move = true,
                    },
                    anim = {
                        dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
                        clip = 'machinic_loop_mechandplayer',
                    },
                    prop = {
                        model = `bkr_prop_weed_bud_01a`,
                        pos = vec3(0.03, 0.03, 0.02),
                        rot = vec3(0.0, 0.0, -1.5)
                    },
                })
                Wait(500)
                lib.callback('sm:weedharvest')
            end
    ------------------------------ PROCESS WEED ------------------------------

	exports['qtarget']:AddTargetModel({716763602}, {
		options = {
			{
				event = "sm_weed",
				icon = "fa-solid fa-cannabis",
				label = Config.Progress.CollectWeed,
			},
		},
		distance = 6.0
	})

    exports['qtarget']:AddBoxZone("weedproccess", vector3(1038.403, -3205.849, -38.983), 2.0, 1.0, {
        name="weedproccess",
        heading=175,
        debugPoly = false,
        minZ=13.0,
        maxZ=14.4,
    }, {
        options = {
            {
                event = "sm_weedprocess2",
                icon = "fa-solid fa-hand",
                label = Config.Progress.ProcessWeed,
            },
        },
        distance = 2.0
    })

    exports['qtarget']:AddBoxZone("jointproccess", vector3(1036.342, -3202.90, -38.98), 2.0, 1.0, {
        name="jointproccess",
        heading=90,
        debugPoly = false,
        minZ=13.0,
        maxZ=14.4,
    }, {
        options = {
            {
                event = "sm_jointprocess",
                icon = "fa-solid fa-hand",
                label = Config.Progress.ProcessJoint,
            },
        },
        distance = 2.0
    })

    

exports['qtarget']:AddBoxZone("laborkaian", Config.Weed.EnterWeedlab, 1.5, 1.5, {
    name="laborkaian",
    heading=28,
    debugPoly = false,
    minZ=13.0,
    maxZ=14.4,
}, {
    options = {
        {
            event = "sm_win",
            icon = "fa-solid fa-hand",
            label = "Get In",
        },
    },
    distance = 2.0
})

exports['qtarget']:AddBoxZone("laborkaoaut", Config.Weed.LeaveWeedlab, 1.5, 1.5, {
    name="laborkaoaut",
    heading=28,
    debugPoly = false,
    minZ=13.0,
    maxZ=14.4,
}, {
    options = {
        {
            event = "sm_wout",
            icon = "fa-solid fa-hand",
            label = "Get Out",
        },
    },
    distance = 2.0
})
----------------------------------------------------