

-- crash and show error if v6 is used
assert(minetest.get_mapgen_setting("mg_name") ~= "v6", "Please choose another Mapgen.")

-- mapgen aliases
minetest.register_alias("mapgen_stone", "abri:stone_black")
minetest.register_alias("mapgen_water_source", "abri:blue_water_source")
minetest.register_alias("mapgen_river_water_source", "abri:blue_river_water_source")


-- register biomes
local col_list = {
	{"black",10,10}, {"purple",20,20}, {"blue",30,30},
	{"cyan",40,40}, {"green",50,50}, {"yellow",60,60},
	{"orange",70,70}, {"red",80,80}, {"magenta",90,90},
	{"white",100,100},
}


for i in ipairs(col_list) do
	local col = col_list[i][1]
	local heat = col_list[i][2]
	local humidity = col_list[i][2]

	minetest.register_biome({
		name = col.."_land",
		-- node_dust = "",
		node_top = "abri:dirt_with_"..col.."_grass",
		depth_top = 1,
		node_filler = "abri:dirt",
		depth_filler = 3,
		node_stone = "abri:stone_"..col,
		-- node_water_top = "default:ice",
		-- depth_water_top = 1,
		node_water = "abri:"..col.."_water_source",
		node_river_water = "abri:"..col.."_river_water_source",
		node_riverbed = "abri:stone",
		depth_riverbed = 2,
		y_min = -30000,
		y_max = 31000,
		heat_point = heat,
		humidity_point = humidity,
	})
end
