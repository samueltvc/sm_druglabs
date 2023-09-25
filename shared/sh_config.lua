Config = {}

Config.Weed = {
 WeedHarvestItem = "weed_bud",
 WeedProcessItem = "weed",
 WeedProcess = "papirky",
 JointItem = "joint", -- usableitem, selling item
 WeedCard = "weed_card",
 EnterWeedlab = vector3(-3418.356, 963.872, 11.935),
 LeaveWeedlab = vector3(1066.402, -3183.525, -39.163),
}

Config.Coke = {
 CokeHarvestItem = "coke_raw", -- usableitem
 CokeProcessItem = "coke_bag", -- selling item
 CokeProcess = "plastic_bag",
 CokeCard = "coke_card",
 EnterCokelab = vector3(2696.389, 1664.539, 24.59),
 LeaveCokelab = vector3(1088.732, -3187.461, -38.99)
}

Config.Market = {
 Position = vector4(-229.166, -1118.146, 22.028, 250.039),
}

Config.Progress = {
    -------- COKE --------
 CollectCoke = "Collect Cocaine",
 HarvestCokeLabel = "You are collecting cocaine...",
 ProcessCoke = "Procces Cocaine",
 ProcessCokeLabel = "Proccessing Cocaine..",
 CokeCardDeclained = "You dont have the Access Card!", 
    -------- WEED --------
 CollectWeed = "Collect Weed",
 HarvestWeedLabel = "You are harvesting weed...",
 ProcessWeed = "Proccess Weed",
 ProcessWeedLabel = "You are processing weed...",
 ProcessJoint = "Proccess Joint",
 ProcessJointLabel = "You are processing weed to joint...",
 WeedCardDeclained = "You dont have the Access Card!",
    -------- MARKET --------
 MarketTalk = "Talk to Guy",
 MarketTalking = "Talking to Guy...",
 CokeCardLabel = "Coke Access Card - 10,000$",
 WeedCardLabel = "Weed Access Card - 10,000$",
 PlasticBagLabel = "Plastic Bag - 50$",
 WeedRollerLabel = "Paper Roller - 50$",
 Buyed = "Buying from the guy...",
    -------- OTHERS --------
 DontHaveResources = "You dont have enough resources!",
 DontHaveStorage = "You dont have Storage in Inventory!",
}