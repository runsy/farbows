farbows = {}

-- internationalization boilerplate
local S = minetest.get_translator(minetest.get_current_modname())

rcbows.register_arrow("farbows:e_arrow", {
	damage = 5,
	inventory_arrow = {
		name = "farbows:inv_arrow",
		description = S("Arrow"),
		inventory_image = "farbows_arrow.png",
	},
})

minetest.register_craft({
	output = "farbows:inv_arrow 5",
	type = "shaped",
	recipe = {
		{"", "", "default:steel_ingot"},
		{"", "default:stick", ""},
		{"farming:cotton", "", ""},
	}
})

rcbows.register_arrow("farbows:fire_arrow", {
	projectile_texture = "farbows_proyectile_arrow",
	damage = 7,
	inventory_arrow = {
		name = "farbows:inv_fire_arrow",
		description = S("Fire Arrow"),
		inventory_image = "farbows_arrow_fire.png",
	},
	drop = "farbows:inv_arrow",
	effects = {
		replace_node = "fire:basic_flame",
		trail_particle = "farbows_particle_fire.png",
	}
})

minetest.register_craft({
	output = "farbows:inv_fire_arrow 2",
	type = "shaped",
	recipe = {
		{"", "", "default:steel_ingot"},
		{"", "default:torch", ""},
		{"farming:cotton", "", ""},
	}
})

rcbows.register_bow("farbows:bow_wood", {
	description = S("Wooden Far Bow"),
	image = "farbows_bow_wood.png",
	strength = 30,
	uses = 150,
	recipe = {
		{"", "group:wood", "farming:string"},
		{"group:wood", "", "farming:string"},
		{"", "group:wood", "farming:string"},
	},
	overlay_empty = "farbows_overlay_empty.png",
	overlay_charged = "farbows_overlay_charged.png",
	arrow = "farbows:e_arrow",
	sounds = {
		max_hear_distance = 10,
		gain = 0.4,
	}
})

rcbows.register_bow("farbows:bow_mese", {
	description = S("Mese Far Bow"),
	image = "farbows_bow_mese.png",
	strength = 60,
	uses = 800,
	recipe = {
		{"", "default:mese_crystal", "farming:string"},
		{"default:mese_crystal", "", "farming:string"},
		{"", "default:mese_crystal", "farming:string"},
	},
	overlay_empty = "farbows_overlay_empty.png",
	overlay_charged = "farbows_overlay_charged.png",
	arrow = "farbows:e_arrow",
	sounds = {
		max_hear_distance = 10,
		gain = 0.4,
	}
})

rcbows.register_bow("farbows:bow_flaming", {
	description = S("Flaming Far Bow"),
	image = "farbows_bow_flaming.png",
	strength = 100,
	uses = 1500,
	recipe = {
		{"", "default:obsidian_shard", "farming:string"},
		{"default:gold_lump", "", "farming:string"},
		{"", "default:obsidian_shard", "farming:string"},
	},
	overlay_empty = "farbows_overlay_empty.png",
	overlay_charged = "farbows_overlay_flaming_charged.png",
	arrow = "farbows:fire_arrow",
	sounds = {
		max_hear_distance = 10,
		gain = 0.4,
	}
})
