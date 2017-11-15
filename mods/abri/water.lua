
local source_list = {
	{"black", "Darkened", "292421", 40, 36, 33}, 
	{"blue", "Blue", "0000FF", 0, 0, 255},
	{"cyan", "Cyan", "00FFFF", 0, 255, 255}, 
	{"green", "Green", "00FF00", 0, 255, 0}, 
	{"magenta", "Magenta", "FF00FF", 255, 0, 255}, 
	{"orange", "Orange", "FF6103", 255, 97, 3}, 
	{"purple", "Purple", "800080", 128, 0, 128}, 
	{"red", "Red", "FF0000", 255, 0, 0}, 
	{"yellow", "Yellow", "FFFF00", 255, 255, 0}, 
	{"white", "Frosted", "FFFFFF", 255, 255, 255}
}

for i in ipairs(source_list) do
	local name = source_list[i][1]
	local description = source_list[i][2]
	local colour = source_list[i][3]
	local red = source_list[i][4]
	local green = source_list[i][5]
	local blue = source_list[i][6]	

	minetest.register_node("abri:"..name.."_water_source", {
		description = description.." Water Source",
		drawtype = "liquid",
		tiles = {
			{
				name = "abri_water_source_animated.png^[colorize:#"..colour..":70",
				animation = {
					type = "vertical_frames",
					aspect_w = 16,
					aspect_h = 16,
					length = 2.0,
				},
			},
		},
		special_tiles = {
			{
				name = "abri_water_source_animated.png^[colorize:#"..colour..":70",
				animation = {
					type = "vertical_frames",
					aspect_w = 16,
					aspect_h = 16,
					length = 2.0,
				},
				backface_culling = false,
			},
		},
		alpha = 160,
		paramtype = "light",
		walkable = false,
		pointable = false,
		diggable = false,
		buildable_to = true,
		is_ground_content = false,
		drop = "",
		drowning = 1,
		liquidtype = "source",
		liquid_alternative_flowing = "abri:"..name.."_water_flowing",
		liquid_alternative_source = "abri:"..name.."_water_source",
		liquid_viscosity = 1,
		post_effect_color = {a = 50, r = red, g = green, b = blue},
		groups = {water = 3, liquid = 3, puts_out_fire = 1, cools_lava = 1},
		-- sounds = default.node_sound_water_defaults(),
	})

	minetest.register_node("abri:"..name.."_water_flowing", {
		description = description.." Flowing Water",
		drawtype = "flowingliquid",
		tiles = {"abri_water.png^[colorize:#"..colour},
		special_tiles = {
			{
				name = "abri_water_flowing_animated.png^[colorize:#"..colour..":70",
				backface_culling = false,
				animation = {
					type = "vertical_frames",
					aspect_w = 16,
					aspect_h = 16,
					length = 0.8,
				},
			},
			{
				name = "abri_water_flowing_animated.png^[colorize:#"..colour..":70",
				backface_culling = true,
				animation = {
					type = "vertical_frames",
					aspect_w = 16,
					aspect_h = 16,
					length = 0.8,
				},
			},
		},
		alpha = 160,
		paramtype = "light",
		paramtype2 = "flowingliquid",
		walkable = false,
		pointable = false,
		diggable = false,
		buildable_to = true,
		is_ground_content = false,
		drop = "",
		drowning = 1,
		liquidtype = "flowing",
		liquid_alternative_flowing = "abri:"..name.."_water_flowing",
		liquid_alternative_source = "abri:"..name.."_water_source",
		liquid_viscosity = 1,
		post_effect_color = {a = 50, r = red, g = green, b = blue},
		groups = {water = 3, liquid = 3, puts_out_fire = 1,
			not_in_creative_inventory = 1, cools_lava = 1},
		-- sounds = default.node_sound_water_defaults(),
	})


	minetest.register_node("abri:"..name.."_river_water_source", {
		description = description.." Water Source",
		drawtype = "liquid",
		tiles = {
			{
				name = "abri_water_source_animated.png^[colorize:#"..colour..":70",
				animation = {
					type = "vertical_frames",
					aspect_w = 16,
					aspect_h = 16,
					length = 2.0,
				},
			},
		},
		special_tiles = {
			{
				name = "abri_water_source_animated.png^[colorize:#"..colour..":70",
				animation = {
					type = "vertical_frames",
					aspect_w = 16,
					aspect_h = 16,
					length = 2.0,
				},
				backface_culling = false,
			},
		},
		alpha = 160,
		paramtype = "light",
		walkable = false,
		pointable = false,
		diggable = false,
		buildable_to = true,
		is_ground_content = false,
		drop = "",
		drowning = 1,
		liquidtype = "source",
		liquid_alternative_flowing = "abri:"..name.."_water_flowing",
		liquid_alternative_source = "abri:"..name.."_water_source",
		liquid_viscosity = 1,
		post_effect_color = {a = 50, r = red, g = green, b = blue},
		groups = {water = 3, liquid = 3, puts_out_fire = 1, cools_lava = 1},
		liquid_renewable = false,
		-- sounds = default.node_sound_water_defaults(),
	})

	minetest.register_node("abri:"..name.."_river_water_flowing", {
		description = description.." Flowing Water",
		drawtype = "flowingliquid",
		tiles = {"abri_water.png^[colorize:#"..colour},
		special_tiles = {
			{
				name = "abri_water_flowing_animated.png^[colorize:#"..colour..":70",
				backface_culling = false,
				animation = {
					type = "vertical_frames",
					aspect_w = 16,
					aspect_h = 16,
					length = 0.8,
				},
			},
			{
				name = "abri_water_flowing_animated.png^[colorize:#"..colour..":70",
				backface_culling = true,
				animation = {
					type = "vertical_frames",
					aspect_w = 16,
					aspect_h = 16,
					length = 0.8,
				},
			},
		},
		alpha = 160,
		paramtype = "light",
		paramtype2 = "flowingliquid",
		walkable = false,
		pointable = false,
		diggable = false,
		buildable_to = true,
		is_ground_content = false,
		drop = "",
		drowning = 1,
		liquidtype = "flowing",
		liquid_alternative_flowing = "abri:"..name.."_water_flowing",
		liquid_alternative_source = "abri:"..name.."_water_source",
		liquid_viscosity = 1,
		post_effect_color = {a = 50, r = red, g = green, b = blue},
		groups = {water = 3, liquid = 3, puts_out_fire = 1,
			not_in_creative_inventory = 1, cools_lava = 1},
		liquid_renewable = false,
		-- sounds = default.node_sound_water_defaults(),
	})

end
