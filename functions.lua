minetest.override_item("default:axe_steel", {
	description = "Steel Axe",
	inventory_image = "default_tool_steelaxe.png",
	groups = {axe = 1},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.50, [2]=1.40, [3]=1.00}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("better_beginnings:flint_hatchet", {
	description = "Flint Hatchet",
	inventory_image = "flint_hatchet.png",
	groups = {hatchet=1},
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		damage_groups = {fleshy=7},
	},
	sound = {breaks = "default_tool_breaks"},
})