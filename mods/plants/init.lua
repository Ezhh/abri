
minetest.register_node("plants:redgrass", {
	description = "Red Grass",
	drawtype = "plantlike",
	waving = 1,
	visual_scale = 1.3,
	tiles = {"plants_redgrass.png"},
	inventory_image = "plants_redgrass.png",
	wield_image = "plants_redgrass.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy=3, flora=1, attached_node=1},
	-- sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "abri:dirt_with_red_grass",
	sidelen = 16,
	fill_ratio = 0.03,
	biomes = {"red_land"},
	decoration = "plants:redgrass",
	height = 1,
})