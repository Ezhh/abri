
minetest.register_node("abri:stone", {
	description = "Stone",
	tiles = {"abri_stone.png"},
	groups = {cracky = 3, stone = 1},
	drop = 'abri:stone',
	legacy_mineral = true,
	-- sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("abri:dirt", {
	description = "Dirt",
	tiles = {"abri_dirt.png"},
	groups = {crumbly = 3, soil = 1},
	-- sounds = default.node_sound_dirt_defaults(),
})

local col_list = {
	{"black", "292421"}, {"purple", "800080"}, {"blue", "0000FF"},
	{"cyan", "00FFFF"}, {"green", "00FF00"}, {"yellow", "FFFF00"},
	{"orange", "FF6103"}, {"red", "FF0000"}, {"magenta", "FF00FF"},
	{"white", "FFFFFF"},
}

for i in ipairs(col_list) do
	local col = col_list[i][1]
	local code = col_list[i][2]

	minetest.register_node("abri:dirt_with_"..col.."_grass", {
		description = "Dirt with "..col.." Grass",
		tiles = {"abri_grass_"..col..".png", "abri_dirt.png",
			{name = "abri_dirt.png^abri_grass_side_"..col..".png",
				tileable_vertical = false}},
		groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
		drop = 'abri:dirt',
		-- sounds = default.node_sound_dirt_defaults({
		-- 	footstep = {name = "default_grass_footstep", gain = 0.25},
		-- }),
	})
end

