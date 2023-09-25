OX INSTALL QUIDE

1. Download all dependencies!
Dependencies:
	ox_inventory | https://github.com/overextended/ox_inventory
	ox_lib | https://github.com/overextended/ox_lib
	ox_target | https://github.com/overextended/ox_target

2. Add Images to your inventory
	ox_inventory > web > build > images
	Paste images from folder images to ox_inventory > web > build > img

3. Add Items to your inventory
	ox_inventory > data> items.lua

	['coke_raw'] = {
		label = 'Coke Raw',
		description = "",
		weight = 15,
		stack = true
	},

	['coke_bag'] = {
		label = 'Coke Bag',
		description = "",
		weight = 25,
		stack = true
	},

	['coke_card'] = {
		label = 'Access Card',
		description = "Access Card for Coke Lab",
		weight = 50,
		stack = true
	},

	['plastic_bag'] = {
		label = 'Plastic Bag',
		description = "",
		weight = 10,
		stack = true
	},

	['weed_bud'] = {
		label = 'Weed Bud',
		description = "",
		weight = 15,
		stack = true
	},

	['weed'] = {
		label = 'Weed',
		description = "",
		weight = 25,
		stack = true,
		close = true
	},

	['papirky'] = {
		label = 'Weed Roller',
		description = "",
		weight = 10,
		stack = true
	},

	['joint'] = {
		label = 'Weed Joint',
		description = "",
		weight = 1,
		stack = true
	},

	['weed_card'] = {
		label = 'Access Card',
		description = "Access Card for Coke Lab",
		weight = 50,
		stack = true
	},


4. add ensure sm_druglabs into your server.cfg (make sure to start it after ox_lib and your target system!)

5. Enjoy your drugs!