minetest.register_craft({
	output = 'better_beginnings:flint_hatchet',
	recipe = {
	{'default:flint','default:flint', ''},
	{'default:flint', 'better_beginnings:leather_strip', ''},
	{'', 'default:stick', ''},
	}
})

minetest.register_craft({
	output = 'better_beginnings:flint_hatchet',
	recipe = {
	{'','default:flint', 'default:flint'},
	{'', 'better_beginnings:leather_strip', 'default:flint'},
	{'', 'default:stick', ''},
	}
})

minetest.register_craft({
	output = 'better_beginnings:flint_knife',
	recipe = {
	{'','', ''},
	{'', '', 'default:flint'},
	{'', 'default:stick', ''},
	}
})

minetest.register_craft({
	output = 'better_beginnings:flint_knife',
	recipe = {
	{'','', ''},
	{'default:flint', '', ''},
	{'', 'default:stick', ''},
	}
})

minetest.register_craft({
	output = 'better_beginnings:bone_knife',
	recipe = {
	{'','', ''},
	{'better_beginnings:bone_shard', '', ''},
	{'', 'default:stick', ''},
	}
})

minetest.register_craft({
	output = 'better_beginnings:bone_knife',
	recipe = {
	{'','', ''},
	{'', '', 'better_beginnings:bone_shard'},
	{'', 'default:stick', ''},
	}
})

minetest.register_craft({
	output = 'better_beginnings:iron_knife',
	recipe = {
	{'','', ''},
	{'better_beginnings:iron_nugget', '', ''},
	{'', 'default:stick', ''},
	}
})

minetest.register_craft({
	output = 'better_beginnings:iron_knife',
	recipe = {
	{'','', ''},
	{'', '', 'better_beginnings:iron_nugget'},
	{'', 'default:stick', ''},
	}
})

minetest.register_craft({
	output = 'better_beginnings:gold_knife',
	recipe = {
	{'','', ''},
	{'better_beginnings:gold_nugget', '', ''},
	{'', 'default:stick', ''},
	}
})

minetest.register_craft({
	output = 'better_beginnings:gold_knife',
	recipe = {
	{'','', ''},
	{'', '', 'better_beginnings:gold_nugget'},
	{'', 'default:stick', ''},
	}
})

minetest.register_craft({
	output = 'better_beginnings:diamond_knife',
	recipe = {
	{'','', ''},
	{'better_beginnings:diamond_nugget', '', ''},
	{'', 'default:stick', ''},
	}
})

minetest.register_craft({
	output = 'better_beginnings:diamond_knife',
	recipe = {
	{'','', ''},
	{'', '', 'better_beginnings:diamond_nugget'},
	{'', 'default:stick', ''},
	}
})

minetest.register_craft({
	output = "better_beginnings:diamond_nugget 9",
	recipe = {
	{'','', ''},
	{'', '', ''},
	{'', '', 'default:diamond'},
	}
})

minetest.register_craft({
	output = "better_beginnings:gold_nugget 9",
	recipe = {
	{'','', ''},
	{'', '', ''},
	{'', '', 'default:gold_lump'},
	}
})

minetest.register_craft({
	output = "better_beginnings:iron_nugget 9",
	recipe = {
	{'','', ''},
	{'', '', ''},
	{'', '', 'default:iron_lump'},
	}
})

minetest.register_craft({
	output = "better_beginnings:crafting_table",
	recipe = {
	{'','', ''},
	{'', 'default:wood', 'default:wood'},
	{'', 'default:wood', 'default:wood'},
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "better_beginnings:adv_crafting_table",
	recipe = {"better_beginnings:crafting_table"},
})

minetest.register_craft({
	type = "shapeless",
	output = "better_beginnings:roasting_stick",
	recipe = {"default:stick"},
})

minetest.register_craft({
	type = "shapeless",
	output = "better_beginnings:leather_strip",
	recipe = {"better_beginnings:leather", "better_beginnings:flint_knife"},
})

minetest.register_craft({
	type = "shapeless",
	output = "better_beginnings:leather_strip",
	recipe = {"better_beginnings:leather", "better_beginnings:gold_knife"},
})

minetest.register_craft( {
	type = "shapeless",
	output = "better_beginnings:leather_strip",
	recipe = {"better_beginnings:leather", "better_beginnings:iron_knife"},
})

minetest.register_craft( {
	type = "shapeless",
	output = "better_beginnings:leather_strip",
	recipe = {"better_beginnings:leather", "better_beginnings:diamond_knife"},
})

minetest.register_craft({
	output = "default:diamond",
	recipe = {
	{'better_beginnings:diamond_nugget','better_beginnings:diamond_nugget', 'better_beginnings:diamond_nugget'},
	{'better_beginnings:diamond_nugget', 'better_beginnings:diamond_nugget', 'better_beginnings:diamond_nugget'},
	{'better_beginnings:diamond_nugget', 'better_beginnings:diamond_nugget', 'better_beginnings:diamond_nugget'},
	}
})

minetest.register_craft({
	output = "default:gold_lump",
	recipe = {
	{'better_beginnings:gold_nugget', 'better_beginnings:gold_nugget', 'better_beginnings:gold_nugget'},
	{'better_beginnings:gold_nugget', 'better_beginnings:gold_nugget', 'better_beginnings:gold_nugget'},
	{'better_beginnings:gold_nugget', 'better_beginnings:gold_nugget', 'better_beginnings:gold_nugget'},
	}
})

minetest.register_craft({
	output = "default:iron_lump",
	recipe = {
	{'better_beginnings:iron_nugget', 'better_beginnings:iron_nugget', 'better_beginnings:iron_nugget'},
	{'better_beginnings:iron_nugget', 'better_beginnings:iron_nugget', 'better_beginnings:iron_nugget'},
	{'better_beginnings:iron_nugget', 'better_beginnings:iron_nugget', 'better_beginnings:iron_nugget'},
	}
})

minetest.register_craft({
	output = "default:flint",
	recipe = {
	{'','', ''},
	{'', 'default:gravel', 'default:gravel'},
	{'', 'default:gravel', 'default:gravel'},
	}
})

minetest.register_craft({
	output = "default:flint",
	recipe = {
	{'','', ''},
	{'default:gravel', 'default:gravel', ''},
	{'default:gravel', 'default:gravel', ''},
	}
})

minetest.register_craft({
	output = "default:flint",
	recipe = {
	{'default:gravel','default:gravel', ''},
	{'default:gravel', 'default:gravel', ''},
	{'', '', ''},
	}
})

minetest.register_craft({
	output = "default:flint",
	recipe = {
	{'','default:gravel', 'default:gravel'},
	{'', 'default:gravel', 'default:gravel'},
	{'', '', ''},
	}
})