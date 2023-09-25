ESX = exports["es_extended"]:getSharedObject()

local conditionsMet = false
local ox_inventory = exports.ox_inventory

exports['qtarget']:AddBoxZone("laborkain", Config.Coke.EnterCokelab, 1.5, 1.5, {
    name="laborkain",
    heading=28,
    debugPoly = false,
    minZ=13.0,
    maxZ=14.4,
}, {
    options = {
        {
            event = "sm_in",
            icon = "fa-solid fa-hand",
            label = "Get In",
        },
    },
    distance = 2.0
})

exports['qtarget']:AddBoxZone("laborkaout", Config.Coke.LeaveCokelab, 1.5, 1.5, {
    name="laborkaout",
    heading=28,
    debugPoly = false,
    minZ=13.0,
    maxZ=14.4,
}, {
    options = {
        {
            event = "sm_out",
            icon = "fa-solid fa-hand",
            label = "Get Out",
        },
    },
    distance = 2.0
})

-------------------------------------------------------------------------------------------------

exports['qtarget']:AddBoxZone("cokespracovani2", vector3(1092.90625, -3195.3999023438, -39.593874359131), 1.5, 7.5, {
    name="cokespracovani2",
    heading=0,
    debugPoly = false,
    minZ=13.0,
    maxZ=14.0,
}, {
    options = {
        {
            event = "sm_coke",
            icon = "fa-solid fa-hand",
            label = Config.Progress.CollectCoke,
        },
    },
    distance = 2.0
})

  -------------------------------- HARVEST COKE ------------------------------

    AddEventHandler("sm_coke", function()
        HarvestCoke2()
    end)

    AddEventHandler("sm_out", function()
        Teleportout()
    end)

    AddEventHandler("sm_in", function()
        CardCoke()
        Teleportin()
    end)

    function Teleportin()
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
        SetEntityCoords(playerPed, 1088.78, -3188.49, -39.50)
        SetEntityHeading(playerPed, 184.251)
        DoScreenFadeIn(1000)
            else 
                lib.notify({
                    title = 'Coke System',
                    position = 'top',
                    description = Config.Coke.CokeCardDeclained,
                    type = 'error'
                })
            end
    end

    function Teleportout()
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
        SetEntityCoords(playerPed, 194.47, -3209.47, 5.79)
        SetEntityHeading(playerPed, 76.535)
        DoScreenFadeIn(1000)
    end

    function HarvestCoke2()

        lib.progressCircle({
            duration = 6500,
            position = 'bottom',
            label = Config.Progress.HarvestCokeLabel,
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
        })
        Wait(500)
        lib.callback('sm:cokeharvest')
    end
    ------------------------------ PROCESS COKE ------------------------------

    exports['qtarget']:AddBoxZone("cokespracovani2", vector3(1098.8564453125, -3194.2810058594, -39.70489349365), 1.5, 1.0, {
        name="cokespracovani2",
        heading=172,
        debugPoly = false,
        minZ=13.0,
        maxZ=14.0,
    }, {
        options = {
            {
                event = "sm_cokeprocess",
                icon = "fa-solid fa-hand",
                label = Config.Progress.ProcessCoke,
            },
        },
        distance = 2.0
    })


    function CardCoke()
        local hasItem = ox_inventory:Search('count', Config.Coke.CokeCard)
        if hasItem >= 1 then
            conditionsMet = true
            else
                conditionsMet = false
            end
        end

        AddEventHandler("sm_cokeprocess", function(xCannabis)
            ProcessCoke2()
        end)
    
        function ProcessCoke2()
            lib.progressCircle({
                duration = 6500,
                position = 'bottom',
                label = Config.Progress.ProcessCokeLabel,
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
                    model = `prop_meth_bag_01`,
                    pos = vec3(0.03, 0.03, 0.02),
                    rot = vec3(0.0, 0.0, -1.5)
                },
            })
            Wait(500)
            lib.callback('sm:cokeprocess')
        end
