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
		"crafting_table_bottom.png",
		"crafting_table_side3.png",
		"crafting_table_side2.png",
		"crafting_table_side3.png",
		"crafting_table_side.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
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

minetest.register_on_dignode(function(pos, oldnode, digger)
    if oldnode.name == "default:tree" or oldnode.name == "default:acacia_tree" or oldnode.name == "default:aspen_tree" or oldnode.name == "default:jungletree" or oldnode.name == "default:pine_tree" or oldnode.name == "default:wood" or oldnode.name == "default:acacia_wood" or oldnode.name == "default:aspen_wood" or oldnode.name == "default:junglewood" or oldnode.name == "default:pine_wood" then
    local wield = digger:get_wielded_item():get_name()
        if minetest.get_item_group(wield, "hatchet") == 0 and minetest.get_item_group(wield, "axe") == 0 then
                    digger:get_inventory():remove_item('main', oldnode)
            digger:set_hp(digger:get_hp() -2, "Dug wood without hatchet or axe")
                    minetest.set_node(pos, oldnode)
        end
    end return
end)