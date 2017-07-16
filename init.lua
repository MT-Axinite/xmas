--xmas decor for Minetest 0.4
--By KasBrick

--Gift is a fork of more_chests of CraigyDavi (https://github.com/davisonio/minetest-more_chests)
--License WTFPL (code & textures)



--Sugar Cane

minetest.register_craftitem("xmas:sugar_cane", {
	description = "Christmas Sugar Cane",
	inventory_image = "xmas_sugar_cane.png",
	on_use = minetest.item_eat(1),
})

minetest.register_craftitem("xmas:sugar", {
	description = "Sugar",
	inventory_image = "sugar.png",
})

minetest.register_craft({
	output = "xmas:sugar_cane",
	recipe = {
		{"xmas:sugar","dye:red","xmas:sugar",},
		{"dye:red","","dye:red"},
		{"","","xmas:sugar"}
}
})

minetest.register_craft({
	type = "shapeless",
	output = "xmas:sugar 3",
	recipe = {"default:papyrus"}
})

--Garlands

minetest.register_node("xmas:garland", {
      description = "Garland",
      drawtype = "nodebox",
      tiles = {"xmas_garland.png"},
      inventory_image = "xmas_garland.png",
      wield_image = "xmas_garland.png",
      paramtype = "light",
      paramtype2 = 'facedir',
      sunlight_propagates = true,
      walkable = false,
      groups = {snappy = 2, dig_immediate = 3},
      node_box = {
	 type = "fixed",
	 fixed = {-0.5, 0.5, 0.4, 0.5, -0.5, 0.475}
      },
      selection_box = {
	 type = "fixed",
	 fixed = {-0.5, 0.5, 0.4, 0.5, -0.5, 0.475}
      },
})

minetest.register_craft({
	output = "xmas:garland",
	recipe = {
		{"default:pine_needles", "wool:red","default:pine_needles"}
	}
})

minetest.register_node("xmas:golden_garland", {
      description = "Golden Garland",
      drawtype = "nodebox",
      tiles = {"xmas_golden_garland.png"},
      inventory_image = "xmas_golden_garland.png",
      wield_image = "xmas_golden_garland.png",
      paramtype = "light",
      paramtype2 = 'facedir',
      sunlight_propagates = true,
      walkable = false,
      groups = {snappy = 2, dig_immediate = 3},
      node_box = {
	 type = "fixed",
	 fixed = {-0.5, 0.5, 0.4, 0.5, -0.5, 0.475}
      },
      selection_box = {
	 type = "fixed",
	 fixed = {-0.5, 0.5, 0.4, 0.5, -0.5, 0.475}
      },
})

minetest.register_craft({
	output = "xmas:golden_garland",
	recipe = {
		{"xmas:garland", "default:gold_lump"}
	}
})

minetest.register_node("xmas:light_garland", {
      description = "Light Garland",
      drawtype = "nodebox",
      tiles = {"xmas_light_garland.png"},
      inventory_image = "xmas_light_garland.png",
      wield_image = "xmas_light_garland.png",
      paramtype = "light",
      paramtype2 = 'facedir',
      sunlight_propagates = true,
      walkable = false,
      light_source = default.LIGHT_MAX,
      groups = {snappy = 2, dig_immediate = 3},
      node_box = {
	 type = "fixed",
	 fixed = {-0.5, 0.5, 0.4, 0.5, -0.5, 0.475}
      },
      selection_box = {
	 type = "fixed",
	 fixed = {-0.5, 0.5, 0.4, 0.5, -0.5, 0.475}
      },
})

minetest.register_craft({
	output = "xmas:light_garland",
	recipe = {
		{"default:mese_crystal_fragment", "default:mese_crystal_fragment","default:mese_crystal_fragment"}
	}
})

--Stars

minetest.register_node("xmas:star", {
	description = "Christmas Star",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"xmas_star.png"},
	inventory_image = "xmas_star.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.2, -0.2, -0.2, 0.2, 0,2, 0.2}
	},
	groups = {snappy = 2, dig_immediate = 3},
})

minetest.register_craft({
	output = "xmas:star",
	recipe = {
		{"", "default:gold_lump",""},
		{"default:gold_lump", "default:gold_lump","default:gold_lump"},
		{"", "default:gold_lump",""}
	}
})

minetest.register_node("xmas:light_star", {
	description = "Light Christmas Star",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"xmas_star.png"},
	inventory_image = "xmas_star.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	light_source = default.LIGHT_MAX,
	selection_box = {
		type = "fixed",
		fixed = {-0.2, -0.2, -0.2, 0.2, 0,2, 0.2}
	},
	groups = {snappy = 2, dig_immediate = 3},
})

minetest.register_craft({
	output = "xmas:light_star",
	recipe = {
		{"xmas:star", "default:mese_crystal_fragment",""}
	}
})

--Balls

minetest.register_node("xmas:ball_red", {
	description = "Red Christmas Ball",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"xmas_ball_red.png"},
	inventory_image = "xmas_ball_red.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.2, -0.2, -0.2, 0.2, 0,2, 0.2}
	},
	groups = {snappy = 2, dig_immediate = 3},
})

minetest.register_craft({
	output = "xmas:ball_red",
	recipe = {
		{"default:glass", "dye:red"}
	}
})

minetest.register_node("xmas:ball_blue", {
	description = "Blue Christmas Ball",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"xmas_ball_blue.png"},
	inventory_image = "xmas_ball_blue.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.2, -0.2, -0.2, 0.2, 0,2, 0.2}
	},
	groups = {snappy = 2, dig_immediate = 3},
})

minetest.register_craft({
	output = "xmas:ball_blue",
	recipe = {
		{"default:glass", "dye:blue"}
	}
})

--Needles

minetest.register_node("xmas:pine_needles_frozen",{
	description = "Frozen Pine Needles",
	drawtype = "allfaces_optional",
	visual_scale = 1.3,
	tiles = {"default_pine_needles_frozen.png"},
	waving = 1,
	paramtype = "light",
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = default.after_place_leaves,
})

minetest.register_craft({
	output = "xmas:pine_needles_frozen",
	recipe = {
		{"default:pine_needles", "default:snow"}
	}
})


--Christmas Stocking

minetest.register_node("xmas:xmas_stocking", {
      description = "Red Chrismas Stocking",
      drawtype = "nodebox",
      tiles = {"xmas_stocking.png"},
      inventory_image = "xmas_stocking.png",
      wield_image = "xmas_stocking.png",
      paramtype = "light",
      paramtype2 = 'facedir',
      sunlight_propagates = true,
      walkable = false,
      groups = {snappy = 2, dig_immediate = 3},
      node_box = {
	 type = "fixed",
	 fixed = {-0.5, 0.5, 0.4, 0.5, -0.5, 0.475}
      },
      selection_box = {
	 type = "fixed",
	 fixed = {-0.5, 0.5, 0.4, 0.5, -0.5, 0.475}
      },
})

minetest.register_craft({
	output = "xmas:xmas_stocking",
	recipe = {
		{"","","wool:white"},
		{"","","wool:red"},
		{"wool:white","wool:red","wool:white"}
	}
})

minetest.register_node("xmas:xmas_stocking_green", {
      description = "Green Chrismas Stocking",
      drawtype = "nodebox",
      tiles = {"xmas_stocking_green.png"},
      inventory_image = "xmas_stocking_green.png",
      wield_image = "xmas_stocking_green.png",
      paramtype = "light",
      paramtype2 = 'facedir',
      sunlight_propagates = true,
      walkable = false,
      groups = {snappy = 2, dig_immediate = 3},
      node_box = {
	 type = "fixed",
	 fixed = {-0.5, 0.5, 0.4, 0.5, -0.5, 0.475}
      },
      selection_box = {
	 type = "fixed",
	 fixed = {-0.5, 0.5, 0.4, 0.5, -0.5, 0.475}
      },
})

minetest.register_craft({
	output = "xmas:xmas_stocking_green",
	recipe = {
		{"","","wool:white"},
		{"","","wool:dark_green"},
		{"wool:white","wool:dark_green","wool:white"}
	}
})

--Gift

local function has_locked_chest_privilege(meta, player)
	local name = player:get_player_name()
	local shared = " "..meta:get_string("offered").." "
	if name == meta:get_string("owner") then
		return true
	elseif shared:find(" "..name.." ") then

		return true
	else
		return false
	end
end

local function get_formspec(string)
	return "size[8,10]"..
		"list[current_name;main;0,0;8,4;]"..
		"list[current_player;main;0,5;8,4;]"..
		"field[.25,9.5;6,1;shared;Shared with (separate names with spaces):;"..string.."]"..
		"button[6,9;2,1;submit;submit]"
end

minetest.register_node("xmas:gift", {
	description = "Gift",
	tiles = {"gift_top.png", "gift_side.png", "gift_side.png",
		"gift_side.png", "gift_side.png", "gift_side.png"},
	paramtype2 = "facedir",
	groups = {snappy = 2, dig_immediate = 3},

	legacy_facedir_simple = true,
	sounds = default.node_sound_wood_defaults(),
	after_place_node = function(pos, placer)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "gift (owned by "..
				meta:get_string("owner")..")")
	end,
	on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("formspec", get_formspec(""))
		meta:set_string("infotext", "gift")
		meta:set_string("owner", "")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*4)
	end,
	can_dig = function(pos,player)
		local meta = minetest.env:get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
	allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		local meta = minetest.env:get_meta(pos)
		if not has_locked_chest_privilege(meta, player) then
			minetest.log("action", player:get_player_name()..
					" tried to access a gift belonging to "..
					meta:get_string("owner").." at "..
					minetest.pos_to_string(pos))
			return 0
		end
		return count
	end,
    allow_metadata_inventory_put = function(pos, listname, index, stack, player)
		local meta = minetest.env:get_meta(pos)
		if not has_locked_chest_privilege(meta, player) then
			minetest.log("action", player:get_player_name()..
					" tried to access a gift belonging to "..
					meta:get_string("owner").." at "..
					minetest.pos_to_string(pos))
			return 0
		end
		return stack:get_count()
	end,
    allow_metadata_inventory_take = function(pos, listname, index, stack, player)
		local meta = minetest.env:get_meta(pos)
		if not has_locked_chest_privilege(meta, player) then
			minetest.log("action", player:get_player_name()..
					" tried to access a gift belonging to "..
					meta:get_string("owner").." at "..
					minetest.pos_to_string(pos))
			return 0
		end
		return stack:get_count()
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff in gift at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff to gift at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" takes stuff from gift at "..minetest.pos_to_string(pos))
	end,
	on_receive_fields = function(pos, formspec, fields, sender)
		local meta = minetest.env:get_meta(pos);
		if fields.shared then
			if meta:get_string("owner") == sender:get_player_name() then
				meta:set_string("offered", fields.shared);
				meta:set_string("formspec", get_formspec(fields.shared))
			end
		end
	end,
})

minetest.register_craft({
	output = 'xmas:gift',
	recipe = {
		{'default:paper','default:paper','default:paper'},
		{'default:paper','default:chest_locked','default:paper'},
		{'default:paper','default:paper','default:paper'}
	}
})

--Medium Gift

minetest.register_node("xmas:medium_gift", {
	description = "Medium Gift",
	tiles = {"medium_gift_top.png", "medium_gift_side.png", "medium_gift_side.png",
		"medium_gift_side.png", "medium_gift_side.png", "medium_gift_side.png"},
	paramtype = 'light',
	paramtype2 = "facedir",
	sunlight_propagates = true,
	groups = {snappy = 2, dig_immediate = 3},
	drawtype = 'nodebox',
node_box = {
		type = 'fixed',
		fixed = {
			{-0.4, 0.3, 0.4, 0.4, -0.5, -0.4}, -- NodeBox1
		}
	},
	selection_box = {
		type = 'fixed',
		fixed = {
			{-0.4, 0.3, 0.4, 0.4, -0.5, -0.4}, -- NodeBox1
		}
	},

	legacy_facedir_simple = true,
	sounds = default.node_sound_wood_defaults(),
	after_place_node = function(pos, placer)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "gift (owned by "..
				meta:get_string("owner")..")")
	end,
	on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("formspec", get_formspec(""))
		meta:set_string("infotext", "gift")
		meta:set_string("owner", "")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*1)
	end,
	can_dig = function(pos,player)
		local meta = minetest.env:get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
	allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		local meta = minetest.env:get_meta(pos)
		if not has_locked_chest_privilege(meta, player) then
			minetest.log("action", player:get_player_name()..
					" tried to access a gift belonging to "..
					meta:get_string("owner").." at "..
					minetest.pos_to_string(pos))
			return 0
		end
		return count
	end,
    allow_metadata_inventory_put = function(pos, listname, index, stack, player)
		local meta = minetest.env:get_meta(pos)
		if not has_locked_chest_privilege(meta, player) then
			minetest.log("action", player:get_player_name()..
					" tried to access a gift belonging to "..
					meta:get_string("owner").." at "..
					minetest.pos_to_string(pos))
			return 0
		end
		return stack:get_count()
	end,
    allow_metadata_inventory_take = function(pos, listname, index, stack, player)
		local meta = minetest.env:get_meta(pos)
		if not has_locked_chest_privilege(meta, player) then
			minetest.log("action", player:get_player_name()..
					" tried to access a gift belonging to "..
					meta:get_string("owner").." at "..
					minetest.pos_to_string(pos))
			return 0
		end
		return stack:get_count()
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff in gift at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff to gift at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" takes stuff from gift at "..minetest.pos_to_string(pos))
	end,
	on_receive_fields = function(pos, formspec, fields, sender)
		local meta = minetest.env:get_meta(pos);
		if fields.shared then
			if meta:get_string("owner") == sender:get_player_name() then
				meta:set_string("offered", fields.shared);
				meta:set_string("formspec", get_formspec(fields.shared))
			end
		end
	end,
})

minetest.register_craft({
	output = 'xmas:medium_gift',
	recipe = {
		{'default:paper','default:paper','default:paper'},
		{'default:paper','default:chest','default:paper'},
		{'default:paper','default:paper','default:paper'}
	}
})

--Little Gift

minetest.register_node("xmas:little_gift", {
	description = "Little Gift",
	tiles = {"little_gift_side.png", "little_gift_side.png", "little_gift_side.png",
		"little_gift_side.png", "little_gift_side.png", "little_gift_side.png"},
	paramtype = 'light',
	paramtype2 = "facedir",
	sunlight_propagates = true,
	groups = {snappy = 2, dig_immediate = 3},
	drawtype = 'nodebox',
node_box = {
		type = 'fixed',
		fixed = {
			{-0.3, -0.1, 0.2, 0.3, -0.5, -0.2}, -- NodeBox1
		}
	},
	selection_box = {
		type = 'fixed',
		fixed = {
			{-0.3, -0.1, 0.2, 0.3, -0.5, -0.2}, -- NodeBox1
		}
	},
	legacy_facedir_simple = true,
	sounds = default.node_sound_wood_defaults(),
	after_place_node = function(pos, placer)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "gift (owned by "..
				meta:get_string("owner")..")")
	end,
	on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("formspec", get_formspec(""))
		meta:set_string("infotext", "gift")
		meta:set_string("owner", "")
		local inv = meta:get_inventory()
		inv:set_size("main", 4*1)
	end,
	can_dig = function(pos,player)
		local meta = minetest.env:get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
	allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		local meta = minetest.env:get_meta(pos)
		if not has_locked_chest_privilege(meta, player) then
			minetest.log("action", player:get_player_name()..
					" tried to access a gift belonging to "..
					meta:get_string("owner").." at "..
					minetest.pos_to_string(pos))
			return 0
		end
		return count
	end,
    allow_metadata_inventory_put = function(pos, listname, index, stack, player)
		local meta = minetest.env:get_meta(pos)
		if not has_locked_chest_privilege(meta, player) then
			minetest.log("action", player:get_player_name()..
					" tried to access a gift belonging to "..
					meta:get_string("owner").." at "..
					minetest.pos_to_string(pos))
			return 0
		end
		return stack:get_count()
	end,
    allow_metadata_inventory_take = function(pos, listname, index, stack, player)
		local meta = minetest.env:get_meta(pos)
		if not has_locked_chest_privilege(meta, player) then
			minetest.log("action", player:get_player_name()..
					" tried to access a gift belonging to "..
					meta:get_string("owner").." at "..
					minetest.pos_to_string(pos))
			return 0
		end
		return stack:get_count()
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff in gift at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff to gift at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" takes stuff from gift at "..minetest.pos_to_string(pos))
	end,
	on_receive_fields = function(pos, formspec, fields, sender)
		local meta = minetest.env:get_meta(pos);
		if fields.shared then
			if meta:get_string("owner") == sender:get_player_name() then
				meta:set_string("offered", fields.shared);
				meta:set_string("formspec", get_formspec(fields.shared))
			end
		end
	end,
})

minetest.register_craft({
	output = 'xmas:little_gift',
	recipe = {
		{'default:paper','default:paper','default:paper'},
		{'default:paper','','default:paper'},
		{'default:paper','default:paper','default:paper'}
	}
})
