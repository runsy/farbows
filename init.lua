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

rcbows.register_arrow("farbows:explosive_arrow", {
	projectile_texture = "farbows_proyectile_arrow",
	damage = 12,
	inventory_arrow = {
		name = "farbows:inv_explosive_arrow",
		description = S("Explosive Arrow"),
		inventory_image = "farbows_arrow_explosive.png",
	},
	no_drop = true,
	effects = {
		explosion = {
			mod = "tnt",
			damage = 3,
			radius = 5,
		},
		trail_particle = "farbows_particle_fire.png",
	}
})

minetest.register_craft({
	output = "farbows:inv_explosive_arrow",
	type = "shaped",
	recipe = {
		{"", "", "default:steel_ingot"},
		{"", "default:stick", "tnt:tnt_stick"},
		{"farming:cotton", "", ""},
	}
})

rcbows.register_arrow("farbows:water_arrow", {
	projectile_texture = "farbows_water_arrow",
	damage = 2,
	inventory_arrow = {
		name = "farbows:inv_water_arrow",
		description = S("Water Arrow"),
		inventory_image = "farbows_arrow_water.png",
	},
	drop = "bucket:bucket_empty",
	effects = {
		trail_particle = "default_water.png",
		water = {
			radius = 5,
			flame_node = "fire:basic_flame",
			particles = true,
		},
	}
})

minetest.register_craft({
	output = "farbows:inv_water_arrow",
	type = "shaped",
	recipe = {
		{"", "", "default:steel_ingot"},
		{"", "default:stick", "bucket:bucket_water"},
		{"farming:cotton", "", ""},
	}
})

rcbows.register_bow("farbows:bow_wood", {
	description = S("Wooden Far Bow"),
	image = "farbows_bow_wood.png",
	strength = 30,
	uses = 150,
	charge_time = 0.5,
	recipe = {
		{"", "group:wood", "farming:string"},
		{"group:wood", "", "farming:string"},
		{"", "group:wood", "farming:string"},
	},
	base_texture = "farbows_base_bow_wood.png",
	overlay_empty = "farbows_overlay_empty.png",
	overlay_charged = "farbows_overlay_charged.png",
	arrows = "farbows:e_arrow",
	sounds = {
		max_hear_distance = 10,
		gain = 0.4,
	},
})

rcbows.register_bow("farbows:bow_mese", {
	description = S("Mese Far Bow"),
	image = "farbows_bow_mese.png",
	strength = 60,
	uses = 800,
	charge_time = 0.8,
	recipe = {
		{"", "default:mese_crystal", "farming:string"},
		{"default:mese_crystal", "", "farming:string"},
		{"", "default:mese_crystal", "farming:string"},
	},
	base_texture = "farbows_base_bow_mese.png",
	overlay_empty = "farbows_overlay_empty.png",
	overlay_charged = "farbows_overlay_charged.png",
	arrows = "farbows:e_arrow",
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
	charge_time = 0.8,
	recipe = {
		{"", "default:obsidian_shard", "farming:string"},
		{"default:gold_lump", "", "farming:string"},
		{"", "default:obsidian_shard", "farming:string"},
	},
	base_texture = "farbows_base_bow_flaming.png",
	overlay_empty = "farbows_overlay_empty.png",
	overlay_charged = "farbows_overlay_flaming_charged.png",
	arrows = {"farbows:explosive_arrow", "farbows:fire_arrow", "farbows:water_arrow", "farbows:e_arrow"},
	sounds = {
		max_hear_distance = 10,
		gain = 0.4,
	}
})

rcbows.register_bow("farbows:crossbow", {
	description = S("Crossbow"),
	image = "farbows_crossbow.png",
	strength = 80,
	uses = 1000,
	charge_time = 1.0,
	recipe = {
		{"", "group:wood", "farming:string"},
		{"farbows:tripwire", "", "farming:string"},
		{"", "group:wood", "farming:string"},
	},
	base_texture = "farbows_base_crossbow.png",
	overlay_empty = "farbows_crossbow_overlay_empty.png",
	overlay_charged = "farbows_crossbow_overlay_charged.png",
	arrows = {"farbows:e_arrow"},
	sounds = {
		max_hear_distance = 10,
		gain = 0.4,
	}
})

minetest.register_craftitem("farbows:tripwire", {
	description = S("Tripwire Hook"),
	inventory_image = "farbows_tripwire.png",
})


minetest.register_craft({
	output = "farbows:tripwire 2",
	type = "shaped",
	recipe = {
		{"", "default:steel_ingot", ""},
		{"", "default:stick", ""},
		{"", "group:wood", ""},
	}
})
