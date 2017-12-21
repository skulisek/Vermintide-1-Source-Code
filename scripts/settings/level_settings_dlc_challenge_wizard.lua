LevelSettings = LevelSettings or {}
LevelSettings.dlc_challenge_wizard = {
	map_sorting = 1,
	player_aux_bus_name = "environment_reverb_outside",
	environment_state = "exterior",
	package_name = "resource_packages/levels/dlc_challenge_wizard/dlc_challenge_wizard",
	ambient_sound_event = "silent_default_world_sound",
	loading_ui_package_name = "resource_packages/loading_screens/loading_bg_dlc_challenge_wizard",
	loading_bg_image = "loading_screen_dlc_challenge_wizard",
	display_name = "dlc1_7_challenge_wizard",
	loading_screen_gamemode_prefix = "level_gamemode_prefix_2",
	loading_screen_gamemode_name = "level_gamemode_defend",
	level_image = "level_image_dlc_challenge_wizard",
	dlc_level = true,
	boss_spawning_method = "hand_placed",
	dlc_name = "challenge_wizard",
	conflict_settings = "challenge",
	default_surface_material = "stone",
	knocked_down_setting = "knocked_down",
	level_name = "levels/dlc_challenge_wizard/world",
	source_aux_bus_name = "environment_reverb_outside_source",
	level_particle_effects = {},
	level_screen_effects = {},
	pickup_settings = {
		{
			ammo = 8,
			lorebook_pages = 3,
			potions = 10,
			grenades = 9,
			healing = 14
		},
		{
			ammo = 8,
			lorebook_pages = 3,
			potions = 10,
			grenades = 9,
			healing = 15
		},
		{
			ammo = 8,
			lorebook_pages = 3,
			potions = 10,
			grenades = 9,
			healing = 10
		},
		{
			ammo = 8,
			lorebook_pages = 3,
			potions = 10,
			grenades = 9,
			healing = 10
		},
		{
			ammo = 8,
			lorebook_pages = 3,
			potions = 10,
			grenades = 9,
			healing = 10
		}
	},
	locations = {
		"location_dlc_challenge_wizard_wizard_mc_escher",
		"location_dlc_challenge_wizard_wizard_tower",
		"location_dlc_challenge_wizard_wizard_start",
		"location_dlc_challenge_wizard_town_pub",
		"location_dlc_challenge_wizard_town_upper_fancy",
		"location_dlc_challenge_wizard_town_underpass",
		"location_dlc_challenge_wizard_town_alleyway_03",
		"location_dlc_challenge_wizard_town_main_street",
		"location_dlc_challenge_wizard_town_dock",
		"location_dlc_challenge_wizard_alleyway_01",
		"location_dlc_challenge_wizard_snow",
		"location_dlc_challenge_wizard_forest"
	},
	mini_patrol = {
		composition = false
	},
	dlc_stat_dependency_func = function (statistics_db, stats_id)
		return 0 < statistics_db.get_persistent_stat(statistics_db, stats_id, "completed_levels", "dlc_challenge_wizard")
	end,
	map_settings = {
		area = "ubersreik",
		sorting = 4,
		icon = "level_location_long_icon_03",
		wwise_events = {
			"nik_map_brief_wizard_tower_01",
			"nik_map_brief_wizard_tower_02"
		},
		area_position = {
			310,
			0
		}
	}
}

return 