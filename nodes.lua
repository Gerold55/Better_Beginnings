minetest.register_node("better_beginnings:wicker", {
	description = "Wicker Basket",
	tiles = {
		"wicker.png",
		"wicker.png",
		"wicker.png",
		"wicker.png",
		"wicker.png",
		"wicker.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
	on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
		local inv = meta:get_inventory()
		inv:set_size('main', 8*4)
		inv:set_size('storage', 8*1)
		meta:set_string('formspec',
			'size [9,10]'..
			'background[0,0;9,10;gui_formbg.png]'..
			'bgcolor[#00000000;false]'..
			'list[current_name;storage;0.5,1.5;8,1;]'..
			'list[current_player;main;0.5,5.5;8,4;]')
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty('storage') and inv:is_empty('storage1')
	end,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
			{-0.5, -0.5, -0.5, -0.4375, 0.5, 0.5},
			{-0.5, -0.5, 0.4375, 0.5, 0.5, 0.5},
			{0.4375, -0.5, -0.5, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, 0.5, 0.5, -0.4375},
		}
	}
})

minetest.register_node("better_beginnings:crafting_table", {
	description = "Crafting Table",
	tiles = {
		"crafting_table_top.png",
		"adv_crafting_table_bottom.png",
		"crafting_table_side.png",
		"crafting_table_side2.png",
		"adv_crafting_table_bottom.png",
		"adv_crafting_table_bottom.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
		 on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
		local inv = meta:get_inventory()
		inv:set_size('main', 8*4)
		inv:set_size('storage', 8*1)
		meta:set_string('formspec',
			'size[8,7.5;]'..
			'list[current_player;main;0,3.5;8,4;]'..
			'list[current_player;craft;3,0;3,3;]'..
			'list[current_player;craftpreview;7,1;1,1;]')
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty('storage') and inv:is_empty('storage1')
	end,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		}
	}
})

minetest.register_node("better_beginnings:adv_crafting_table", {
	description = "Advanced Crafting Table",
	tiles = {
		"adv_crafting_table_top.png",
		"adv_crafting_table_bottom.png",
		"adv_crafting_table_side.png",
		"adv_crafting_table_side.png",
		"adv_crafting_table_side.png",
		"adv_crafting_table_side.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
		 on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
		local inv = meta:get_inventory()
		inv:set_size('main', 8*4)
		inv:set_size('adv_craft', 4*1)
		meta:set_string('formspec',
			'size[8,7.5;]'..
			'list[current_player;main;0,3.5;8,4;]'..
			'list[current_player;craft;3,0;3,3;]'..
			'list[current_player;adv_craft;1,1;4,1;]'..
			'list[current_player;craftpreview;7,1;1,1;]')
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty('adv_craft') and inv:is_empty('storage1')
	end,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.25, -0.5, 0.5, 0.5, 0.5}, -- NodeBox1
			{-0.5, -0.5, 0.25, -0.25, 0.25, 0.5}, -- NodeBox2
			{-0.5, -0.5, -0.5, -0.25, 0.25, -0.25}, -- NodeBox3
			{0.25, -0.5, 0.25, 0.5, 0.25, 0.5}, -- NodeBox4
			{0.25, -0.5, -0.5, 0.5, 0.25, -0.25}, -- NodeBox5
		}
	}
})

minetest.register_node("better_beginnings:brick_oven", {
	description = "Brick Oven",
		tiles = {
		"default_brick.png",
		"default_brick.png",
		"default_brick.png",
		"default_brick.png",
		"default_brick.png",
		"brick.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = 'facedir',
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}, -- NodeBox1
		}
	}
})

minetest.override_item("default:wood", {
    description = "Wooden Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"default_wood.png"},
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
    after_dig_node = function(pos, oldnode, oldmeta, digger)
        local wield = digger:get_wielded_item():get_name()
        if minetest.get_item_group(wield, "hatchet") == 0 and minetest.get_item_group(wield, "axe") == 0 then
            digger:set_hp(digger:get_hp() -6, "Dug wood without hatchet or axe")
        end
    end,
})

minetest.override_item("default:tree", {
    description = "Tree",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"default_tree_top.png", "default_tree_top.png", "default_tree.png"},
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
    after_dig_node = function(pos, oldnode, oldmeta, digger)
        local wield = digger:get_wielded_item():get_name()
        if minetest.get_item_group(wield, "hatchet") == 0 and minetest.get_item_group(wield, "axe") == 0 then
            digger:set_hp(digger:get_hp() -6, "Dug tree without hatchet or ax")
        end
    end,
})

minetest.override_item("default:junglewood", {
    description = "Jungle Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"default_junglewood.png"},
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
    after_dig_node = function(pos, oldnode, oldmeta, digger)
        local wield = digger:get_wielded_item():get_name()
        if minetest.get_item_group(wield, "hatchet") == 0 and minetest.get_item_group(wield, "axe") == 0 then
            digger:set_hp(digger:get_hp() -6, "Dug wood without hatchet or ax")
        end
    end,
})

minetest.override_item("default:jungletree", {
    description = "Jungle Tree",
	paramtype2 = "facedir",
	place_param2 = 0,
		tiles = {"default_jungletree_top.png", "default_jungletree_top.png", "default_jungletree.png"},
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
    after_dig_node = function(pos, oldnode, oldmeta, digger)
        local wield = digger:get_wielded_item():get_name()
        if minetest.get_item_group(wield, "hatchet") == 0 and minetest.get_item_group(wield, "axe") == 0 then
            digger:set_hp(digger:get_hp() -6, "Dug tree without hatchet or ax")
        end
    end,
})

minetest.override_item("default:acacia_wood", {
    description = "Acacia Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"default_acacia_wood.png"},
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
    after_dig_node = function(pos, oldnode, oldmeta, digger)
        local wield = digger:get_wielded_item():get_name()
        if minetest.get_item_group(wield, "hatchet") == 0 and minetest.get_item_group(wield, "axe") == 0 then
            digger:set_hp(digger:get_hp() -6, "Dug wood without hatchet or ax")
        end
    end,
})

minetest.override_item("default:acacia_tree", {
    description = "Acacia Tree",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"default_acacia_tree_top.png", "default_acacia_tree_top.png", "default_acacia_tree.png"},
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
    after_dig_node = function(pos, oldnode, oldmeta, digger)
        local wield = digger:get_wielded_item():get_name()
        if minetest.get_item_group(wield, "hatchet") == 0 and minetest.get_item_group(wield, "axe") == 0 then
            digger:set_hp(digger:get_hp() -6, "Dug tree without hatchet or ax")
        end
    end,
})

minetest.override_item("default:pine_wood", {
    description = "Pine Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"default_pine_wood.png"},
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
    after_dig_node = function(pos, oldnode, oldmeta, digger)
        local wield = digger:get_wielded_item():get_name()
        if minetest.get_item_group(wield, "hatchet") == 0 and minetest.get_item_group(wield, "axe") == 0 then
            digger:set_hp(digger:get_hp() -6, "Dug wood without hatchet or ax")
        end
    end,
})

minetest.override_item("default:pine_tree", {
    description = "Pine Tree",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"default_pine_tree_top.png", "default_pine_tree_top.png", "default_pine_tree.png"},
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
    after_dig_node = function(pos, oldnode, oldmeta, digger)
        local wield = digger:get_wielded_item():get_name()
        if minetest.get_item_group(wield, "hatchet") == 0 and minetest.get_item_group(wield, "axe") == 0 then
            digger:set_hp(digger:get_hp() -6, "Dug tree without hatchet or ax")
        end
    end,
})

minetest.override_item("default:aspen_wood", {
    description = "Aspen Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"default_aspen_wood.png"},
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
    after_dig_node = function(pos, oldnode, oldmeta, digger)
        local wield = digger:get_wielded_item():get_name()
        if minetest.get_item_group(wield, "hatchet") == 0 and minetest.get_item_group(wield, "axe") == 0 then
            digger:set_hp(digger:get_hp() -6, "Dug wood without hatchet or ax")
        end
    end,
})

minetest.override_item("default:aspen_tree", {
    description = "Aspen Tree",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"default_aspen_tree_top.png", "default_aspen_tree_top.png", "default_aspen_tree.png"},
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
    after_dig_node = function(pos, oldnode, oldmeta, digger)
        local wield = digger:get_wielded_item():get_name()
        if minetest.get_item_group(wield, "hatchet") == 0 and minetest.get_item_group(wield, "axe") == 0 then
            digger:set_hp(digger:get_hp() -6, "Dug tree without hatchet or ax")
        end
    end,
})

sfinv.override_page("sfinv:crafting", {
   title = "Crafting",
   get = function(self, player, context)
      return sfinv.make_formspec(player, context, [[
            list[current_player;craft;2,1;2,1;0]
			list[current_player;craft;2,2;2,1;3]
            list[current_player;craftpreview;6,1.5;1,1;]
            image[4.75,1.5;1,1;gui_furnace_arrow_bg.png^[transformR270]
            listring[current_player;main]
            listring[current_player;craft]
            image[0,4.75;1,1;gui_hb_bg.png]
            image[1,4.75;1,1;gui_hb_bg.png]
            image[2,4.75;1,1;gui_hb_bg.png]
            image[3,4.75;1,1;gui_hb_bg.png]
            image[4,4.75;1,1;gui_hb_bg.png]
            image[5,4.75;1,1;gui_hb_bg.png]
            image[6,4.75;1,1;gui_hb_bg.png]
            image[7,4.75;1,1;gui_hb_bg.png]
         ]], true)
   end
})
