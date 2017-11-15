
minetest.register_node("abri:dirt", {
	description = "Dirt",
	tiles = {"abri_dirt.png"},
	groups = {crumbly = 3, soil = 1},
	-- sounds = default.node_sound_dirt_defaults(),
})

local col_list = {
	{"black", "Black", "292421"}, {"purple", "Purple", "800080"},
	{"blue", "Blue", "0000FF"}, {"cyan", "Cyan", "00FFFF"},
	{"green", "Green", "00FF00"}, {"yellow", "Yellow", "FFFF00"},
	{"orange", "Orange", "FF6103"}, {"red", "Red", "FF0000"},
	{"magenta", "Magenta", "FF00FF"}, {"white", "White", "FFFFFF"},
}

for i in ipairs(col_list) do
	local col = col_list[i][1]
	local name = col_list[i][2]
	local code = col_list[i][3]

	minetest.register_node("abri:dirt_with_"..col.."_grass", {
		description = "Dirt with "..name.." Grass",
		tiles = {"abri_grass_"..col..".png", "abri_dirt.png",
			{name = "abri_dirt.png^abri_grass_side_"..col..".png",
				tileable_vertical = false}},
		groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
		drop = 'abri:dirt',
		-- sounds = default.node_sound_dirt_defaults({
		-- 	footstep = {name = "default_grass_footstep", gain = 0.25},
		-- }),
	})

	minetest.register_node("abri:stone_"..col, {
		description = name.."Stone",
		tiles = {"abri_stone.png^[colorize:#"..code..":60"},
		groups = {cracky = 3, stone = 1},
		drop = 'abri:stone_'..col, -- change to cobble?
		-- sounds = default.node_sound_stone_defaults(),
	})
end

