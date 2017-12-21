Missions = {
	test_collect_01 = {
		text = "test_collect_01_mission_text",
		mission_template_name = "collect",
		collect_amount = 1
	},
	test_defend_01 = {
		text = "test_defend_01_mission_text",
		defend_amount = 1,
		mission_template_name = "defend"
	},
	test_timed_01 = {
		text = "test_timed_01_mission_text",
		duration = 18,
		mission_template_name = "timed"
	},
	escape_ferry = {
		mission_template_name = "simple",
		text = "generic_escape_ferry"
	},
	escape_wagon = {
		mission_template_name = "simple",
		text = "generic_escape_wagon"
	},
	escape_elevator = {
		mission_template_name = "simple",
		text = "generic_escape_elevator"
	},
	magnus_door_bombing_01 = {
		text = "magnus_door_bombing_01_mission_text",
		mission_template_name = "collect",
		collect_amount = 3
	},
	magnus_alert_guards = {
		mission_template_name = "goal",
		text = "magnus_alert_guards_mission_text"
	},
	magnus_reach_tower = {
		mission_template_name = "goal",
		text = "magnus_reach_tower_mission_text"
	},
	magnus_sound_horn = {
		mission_template_name = "goal",
		text = "magnus_sound_horn_mission_text"
	},
	magnus_reach_top = {
		mission_template_name = "goal",
		text = "magnus_reach_top_mission_text"
	},
	mission_goal_magnus_survive_attack = {
		mission_template_name = "goal",
		text = "mission_goal_magnus_survive"
	},
	mission_goal_magnus_escape = {
		mission_template_name = "goal",
		text = "mission_goal_magnus_escape"
	},
	mission_goal_magnus_elevator = {
		mission_template_name = "goal",
		text = "mission_goal_magnus_elevator"
	},
	farm_gathering_event = {
		text = "farm_gathering_event",
		mission_template_name = "collect",
		collect_amount = 6
	},
	courtyard_defend = {
		mission_template_name = "goal",
		text = "courtyard_defend_mission_text"
	},
	courtyard_defend_well_a = {
		text = "courtyard_well_a_mission_text",
		defend_amount = 1,
		mission_template_name = "defend"
	},
	courtyard_defend_well_b = {
		text = "courtyard_well_b_mission_text",
		defend_amount = 1,
		mission_template_name = "defend"
	},
	beer_collection = {
		text = "collect_beer_mission_text",
		mission_template_name = "collect",
		collect_amount = 4
	},
	forest_ambush_doomwheel_bombing = {
		text = "forest_ambush_doomwheel_bombing_mission_text",
		mission_template_name = "collect",
		collect_amount = 3
	},
	docks_destroy_pillars = {
		text = "docks_destroy_pillars_mission_text",
		mission_template_name = "collect",
		collect_amount = 4
	},
	docks_bomb_event = {
		text = "docks_bomb_event_mission_text",
		mission_template_name = "collect",
		collect_amount = 5
	},
	bridge_gathering_event = {
		text = "mission_objective_bridge_gathering_event",
		mission_template_name = "collect",
		collect_amount = 8
	},
	wizard_defend_wards = {
		text = "mission_objective_wizard_defend_wards",
		defend_amount = 4,
		mission_template_name = "defend"
	},
	mission_objective_city_walls_destroy_chains = {
		text = "mission_objective_city_walls_destroy_chains",
		mission_template_name = "collect",
		collect_amount = 4
	},
	tunnels_bomb_pillar = {
		text = "tunnels_bomb_pillar_mission_text",
		mission_template_name = "collect",
		collect_amount = 3
	},
	mission_objective_cemetery_cut_down_all = {
		text = "mission_objective_cemetery_cut_chains",
		mission_template_name = "collect",
		collect_amount = 4
	},
	end_boss_destroy_supports = {
		text = "mission_objective_end_boss_destroy_supports",
		mission_template_name = "collect",
		collect_amount = 3
	},
	end_boss_destroy_chains = {
		text = "mission_objective_end_boss_destroy_chains",
		mission_template_name = "collect",
		collect_amount = 4
	},
	merchant_gathering_event = {
		text = "merchant_gathering_event_mission_text",
		mission_template_name = "collect",
		collect_amount = 5
	},
	dlc_castle_enter_castle = {
		mission_template_name = "goal",
		text = "dlc1_4_castle_enter_castle_mission_text"
	},
	dlc_castle_find_chalice = {
		mission_template_name = "goal",
		text = "dlc1_4_castle_find_chalice_mission_text"
	},
	dlc_castle_get_chalice = {
		mission_template_name = "goal",
		text = "dlc1_4_castle_get_chalice_mission_text"
	},
	dlc_castle_escape = {
		mission_template_name = "goal",
		text = "dlc1_4_castle_escape_mission_text"
	},
	dlc_castle_statuettes = {
		text = "dlc1_4_castle_statuettes_mission_text",
		mission_template_name = "collect",
		collect_amount = 3
	},
	whitebox_tutorial_sidemission_1 = {
		is_side_mission = true,
		collect_amount = 3,
		mission_template_name = "collect",
		text = "magnus_door_bombing_01_mission_text"
	},
	tome_bonus_mission = {
		is_side_mission = true,
		evaluation_type = "amount",
		mission_template_name = "collect_uncompletable",
		experience_per_amount = 50,
		evaluate_at_level_end = true,
		collect_amount = 3,
		dice_type = "gold",
		text = "tome_bonus_mission_text",
		dice_per_amount = 1
	},
	grimoire_hidden_mission = {
		is_side_mission = true,
		evaluation_type = "amount",
		mission_template_name = "collect_uncompletable",
		experience_per_amount = 0,
		evaluate_at_level_end = true,
		collect_amount = 2,
		dice_type = "warpstone",
		hidden = true,
		text = "grimoire_hidden_mission_text",
		dice_per_amount = 1
	},
	bonus_dice_hidden_mission = {
		dice_type = "metal",
		evaluation_type = "amount",
		mission_template_name = "collect_uncompletable",
		is_side_mission = true,
		evaluate_at_level_end = true,
		collect_amount = 2,
		hidden = true,
		text = "bonus_dice_hidden_mission_text",
		dice_per_amount = 1
	},
	players_alive_mission = {
		text = "players_alive_mission_text",
		is_side_mission = true,
		mission_template_name = "players_alive",
		experience_per_amount = 50,
		evaluation_type = "amount",
		evaluate_at_level_end = true,
		hidden = true
	},
	endurance_badge_01_mission = {
		is_side_mission = true,
		evaluation_type = "amount",
		experience_per_amount = 150,
		evaluate_at_level_end = true,
		mission_template_name = "collect_uncompletable",
		token_type = "bronze_tokens",
		text = "dlc1_2_endurance_badge_01_mission_text",
		tokens_per_amount = 9,
		hidden = true,
		collected_item_texture = "survival_badge_icon_01",
		collect_amount = math.huge
	}
}
Missions.endurance_badge_02_mission = table.clone(Missions.endurance_badge_01_mission)
Missions.endurance_badge_02_mission.text = "dlc1_2_endurance_badge_02_mission_text"
Missions.endurance_badge_02_mission.experience_per_amount = 200
Missions.endurance_badge_02_mission.tokens_per_amount = 9
Missions.endurance_badge_02_mission.token_type = "silver_tokens"
Missions.endurance_badge_02_mission.collected_item_texture = "survival_badge_icon_02"
Missions.endurance_badge_03_mission = table.clone(Missions.endurance_badge_01_mission)
Missions.endurance_badge_03_mission.text = "dlc1_2_endurance_badge_03_mission_text"
Missions.endurance_badge_03_mission.experience_per_amount = 300
Missions.endurance_badge_03_mission.tokens_per_amount = 9
Missions.endurance_badge_03_mission.token_type = "gold_tokens"
Missions.endurance_badge_03_mission.collected_item_texture = "survival_badge_icon_03"
Missions.endurance_badge_04_mission = table.clone(Missions.endurance_badge_01_mission)
Missions.endurance_badge_04_mission.text = "dlc1_2_endurance_badge_04_mission_text"
Missions.endurance_badge_04_mission.experience_per_amount = 400
Missions.endurance_badge_04_mission.tokens_per_amount = 6
Missions.endurance_badge_04_mission.token_type = "gold_tokens"
Missions.endurance_badge_04_mission.collected_item_texture = "survival_badge_icon_04"
Missions.endurance_badge_05_mission = table.clone(Missions.endurance_badge_01_mission)
Missions.endurance_badge_05_mission.text = "dlc1_2_endurance_badge_05_mission_text"
Missions.endurance_badge_05_mission.experience_per_amount = 500
Missions.endurance_badge_05_mission.tokens_per_amount = 13
Missions.endurance_badge_05_mission.token_type = "gold_tokens"
Missions.endurance_badge_05_mission.collected_item_texture = "survival_badge_icon_05"
Missions.whitebox_tutorial_goal_1 = {
	mission_template_name = "goal",
	text = "forest_ambush_call_boat_mission_text"
}
Missions.whitebox_tutorial_goal_2 = {
	mission_template_name = "goal",
	text = "forest_ambush_escape_boat_mission_text"
}
Missions.mission_sewers_short_open_door_1 = {
	text = "mission_sewers_short_open_door_1",
	mission_template_name = "goal",
	collect_amount = 1
}
Missions.mission_sewers_short_open_door_2 = {
	text = "mission_sewers_short_open_door_2",
	mission_template_name = "goal",
	collect_amount = 1
}
Missions.mission_sewers_short_clear_path = {
	text = "mission_sewers_short_clear_path",
	mission_template_name = "goal",
	collect_amount = 1
}
Missions.mission_sewers_short_leave_sewer = {
	text = "mission_sewers_short_leave_sewer",
	mission_template_name = "goal",
	collect_amount = 1
}
Missions.mission_sewers_short_escape = {
	text = "mission_sewers_short_escape",
	mission_template_name = "goal",
	collect_amount = 1
}
Missions.bridge_reach_bridge = {
	text = "mission_goal_bridge_reach_bridge",
	mission_template_name = "goal",
	collect_amount = 1
}
Missions.bridge_escape = {
	text = "mission_goal_bridge_escape",
	mission_template_name = "goal",
	collect_amount = 1
}
Missions.merchant_find_district = {
	text = "mission_goal_merchant_find_district",
	mission_template_name = "goal",
	collect_amount = 1
}
Missions.merchant_reach_square = {
	text = "mission_goal_merchant_reach_square",
	mission_template_name = "goal",
	collect_amount = 1
}
Missions.merchant_escape = {
	text = "mission_goal_merchant_escape",
	mission_template_name = "goal",
	collect_amount = 1
}
Missions.mission_city_walls_up = {
	mission_template_name = "goal",
	text = "mission_city_walls_up"
}
Missions.mission_city_walls_find_bell = {
	mission_template_name = "goal",
	text = "mission_city_walls_find_bell"
}
Missions.mission_city_walls_destroy_bell = {
	mission_template_name = "goal",
	text = "mission_city_walls_destroy_bell"
}
Missions.mission_city_walls_destroy_support = {
	mission_template_name = "goal",
	text = "mission_city_walls_destroy_support"
}
Missions.mission_city_walls_escape = {
	mission_template_name = "goal",
	text = "mission_city_walls_escape"
}
Missions.forest_ambush_find_camp = {
	mission_template_name = "goal",
	text = "forest_ambush_find_camp_mission_text"
}
Missions.forest_ambush_leave_camp = {
	mission_template_name = "goal",
	text = "forest_ambush_leave_camp_mission_text"
}
Missions.forest_ambush_get_to_the_river = {
	mission_template_name = "goal",
	text = "forest_ambush_get_to_the_river_mission_text"
}
Missions.forest_ambush_call_boat = {
	mission_template_name = "goal",
	text = "forest_ambush_call_boat_mission_text"
}
Missions.forest_ambush_wait_for_boat = {
	mission_template_name = "goal",
	text = "forest_ambush_wait_for_boat_mission_text"
}
Missions.forest_ambush_escape_boat = {
	mission_template_name = "goal",
	text = "forest_ambush_escape_boat_mission_text"
}
Missions.tunnels_start = {
	mission_template_name = "goal",
	text = "tunnels_start_mission_text"
}
Missions.tunnels_investigate_tunnels = {
	mission_template_name = "goal",
	text = "tunnels_investigate_tunnels_mission_text"
}
Missions.tunnels_escape = {
	mission_template_name = "goal",
	text = "tunnels_escape_mission_text"
}
Missions.tunnels_to_ferry_lady = {
	mission_template_name = "goal",
	text = "tunnels_to_ferry_lady_mission_text"
}
Missions.mission_goal_cemetery_wall = {
	mission_template_name = "goal",
	text = "mission_goal_cemetery_wall"
}
Missions.mission_goal_cemetery_source = {
	mission_template_name = "goal",
	text = "mission_goal_cemetery_source"
}
Missions.mission_goal_cemetery_entrance = {
	mission_template_name = "goal",
	text = "mission_goal_cemetery_entrance"
}
Missions.mission_goal_cemetery_cut_down = {
	mission_template_name = "goal",
	text = "mission_goal_cemetery_cut_down"
}
Missions.mission_goal_cemetery_get_back = {
	mission_template_name = "goal",
	text = "mission_goal_cemetery_get_back"
}
Missions.docks_start_goal = {
	mission_template_name = "goal",
	text = "docks_start_goal_mission_text"
}
Missions.docks_next_warehouse = {
	mission_template_name = "goal",
	text = "docks_next_warehouse_mission_text"
}
Missions.docks_back_to_boat = {
	mission_template_name = "goal",
	text = "docks_back_to_boat_mission_text"
}
Missions.docks_escape_house = {
	mission_template_name = "goal",
	text = "docks_escape_house_mission_text"
}
Missions.end_boss_find_lair = {
	mission_template_name = "goal",
	text = "mission_goal_end_boss_find_lair"
}
Missions.end_boss_enter_lair = {
	mission_template_name = "goal",
	text = "mission_goal_end_boss_enter_lair"
}
Missions.end_boss_open_door = {
	mission_template_name = "goal",
	text = "mission_objective_end_boss_open_door"
}
Missions.end_boss_proceed_upwards_1 = {
	mission_template_name = "goal",
	text = "mission_objective_end_boss_proceed_up"
}
Missions.end_boss_proceed_upwards_2 = {
	mission_template_name = "goal",
	text = "mission_objective_end_boss_proceed_up"
}
Missions.end_boss_destroy_bell = {
	mission_template_name = "goal",
	text = "mission_goal_end_boss_destroy_bell"
}
Missions.end_boss_stop_seer = {
	mission_template_name = "goal",
	text = "mission_goal_end_boss_stop_seer"
}
Missions.end_boss_escape = {
	mission_template_name = "goal",
	text = "mission_goal_end_boss_escape"
}
Missions.wizard_search_apothecary = {
	mission_template_name = "goal",
	text = "mission_goal_wizard_search_apothecary"
}
Missions.wizard_find_wizard = {
	mission_template_name = "goal",
	text = "mission_goal_wizard_find_wizard"
}
Missions.wizard_find_wizard_2 = {
	mission_template_name = "goal",
	text = "mission_goal_wizard_find_wizard"
}
Missions.wizard_establish_illusion = {
	mission_template_name = "simple",
	text = "mission_goal_wizard_establish_illusion"
}
Missions.wizard_escape = {
	mission_template_name = "goal",
	text = "mission_goal_wizard_escape"
}
Missions.wizard_open_door = {
	mission_template_name = "goal",
	text = "mission_objective_wizard_open_door"
}
Missions.survival_wave = {
	text = "dlc1_2_survival_mission_waves_completed",
	wave_prepare_text = "dlc1_2_survival_mission_prepare",
	mission_template_name = "survival",
	evaluate_at_level_end = true,
	wave_completed_text = "dlc1_2_survival_mission_wave_completed",
	experience_per_percent = 0.7,
	wave_text = "dlc1_2_survival_mission_wave"
}
Missions.dlc1_4_portals_find_camp = {
	mission_template_name = "goal",
	text = "dlc1_4_mission_goal_portals_find_camp"
}
Missions.dlc1_4_portals_portal_a = {
	mission_template_name = "goal",
	text = "dlc1_4_mission_goal_portals_portal_a"
}
Missions.dlc1_4_portals_portal_b = {
	mission_template_name = "goal",
	text = "dlc1_4_mission_goal_portals_portal_b"
}
Missions.dlc1_4_portals_portal_c = {
	mission_template_name = "goal",
	text = "dlc1_4_mission_goal_portals_portal_c"
}
Missions.dlc1_4_portals_escape = {
	mission_template_name = "goal",
	text = "dlc1_4_mission_goal_portals_escape"
}
Missions.dlc1_4_portals_overheat_a = {
	mission_template_name = "goal",
	text = "dlc1_4_mission_goal_portals_overheat_a"
}
Missions.dlc1_4_portals_overheat_b = {
	mission_template_name = "goal",
	text = "dlc1_4_mission_goal_portals_overheat_b"
}
Missions.dlc1_4_portals_overheat_c = {
	mission_template_name = "goal",
	text = "dlc1_4_mission_goal_portals_overheat_c"
}
Missions.mission_dlc_castle_dungeon_search_dungeon = {
	mission_template_name = "goal",
	text = "dlc1_4_mission_dungeon_search_dungeon"
}
Missions.mission_dlc_castle_dungeon_push_through = {
	mission_template_name = "goal",
	text = "dlc1_4_mission_dungeon_push_through"
}
Missions.mission_dlc_castle_dungeon_grab_artifact1 = {
	mission_template_name = "goal",
	text = "dlc1_4_mission_dungeon_grab_artifact1"
}
Missions.mission_dlc_castle_dungeon_continue_search = {
	mission_template_name = "goal",
	text = "dlc1_4_mission_dungeon_continue_search"
}
Missions.mission_dlc_castle_dungeon_descend_darkness_with_torch = {
	mission_template_name = "goal",
	text = "dlc1_4_mission_dungeon_descend_darkness_with_torch"
}
Missions.mission_dlc_castle_dungeon_grab_artifact2 = {
	mission_template_name = "goal",
	text = "dlc1_4_mission_dungeon_grab_artifact2"
}
Missions.mission_dlc_castle_dungeon_survive_until_way_out = {
	mission_template_name = "goal",
	text = "dlc1_4_mission_dungeon_survive_until_way_out"
}
Missions.mission_dlc_castle_dungeon_escape_up = {
	mission_template_name = "goal",
	text = "dlc1_4_mission_dungeon_escape_up"
}
Missions.tutorial_movement = {
	text = "mission_objective_tutorial_movement",
	mission_template_name = "collect",
	collect_amount = 3
}
Missions.tutorial_jumping = {
	mission_template_name = "simple",
	text = "mission_objective_tutorial_jumping"
}
Missions.tutorial_dodge_left = {
	mission_template_name = "simple",
	text = "mission_objective_tutorial_dodge_left"
}
Missions.tutorial_dodge_back = {
	mission_template_name = "simple",
	text = "mission_objective_tutorial_dodge_back"
}
Missions.tutorial_dodge_right = {
	mission_template_name = "simple",
	text = "mission_objective_tutorial_dodge_right"
}
Missions.tutorial_light_attack = {
	text = "mission_objective_tutorial_light_attack",
	mission_template_name = "collect",
	collect_amount = 3
}
Missions.tutorial_heavy_attack = {
	mission_template_name = "simple",
	text = "mission_objective_tutorial_heavy_attack"
}
Missions.tutorial_switch_weapon = {
	mission_template_name = "simple",
	text = "mission_objective_tutorial_switch_weapon"
}
Missions.tutorial_ranged_normal_attack = {
	text = "mission_objective_tutorial_ranged_normal_attack",
	mission_template_name = "collect",
	collect_amount = 3
}
Missions.tutorial_ranged_alternative_attack = {
	mission_template_name = "simple",
	text = "mission_objective_tutorial_ranged_alternative_attack"
}
Missions.tutorial_blocking = {
	text = "mission_objective_tutorial_blocking",
	mission_template_name = "collect",
	collect_amount = 3
}
Missions.tutorial_pushing = {
	text = "mission_objective_tutorial_pushing",
	mission_template_name = "collect",
	collect_amount = 3
}
Missions.tutorial_pickup_grenade = {
	mission_template_name = "simple",
	text = "mission_objective_tutorial_pickup_grenade"
}
Missions.tutorial_throw_grenade = {
	mission_template_name = "simple",
	text = "mission_objective_tutorial_throw_grenade"
}
Missions.tutorial_pickup_potion = {
	mission_template_name = "simple",
	text = "mission_objective_tutorial_pickup_potion"
}
Missions.tutorial_use_potion = {
	mission_template_name = "simple",
	text = "mission_objective_tutorial_use_potion"
}
Missions.tutorial_pickup_barrel = {
	mission_template_name = "simple",
	text = "mission_objective_tutorial_pickup_barrel"
}
Missions.tutorial_place_barrel = {
	mission_template_name = "simple",
	text = "mission_objective_tutorial_place_barrel"
}
Missions.tutorial_pickup_draught = {
	mission_template_name = "simple",
	text = "mission_objective_tutorial_pickup_draught"
}
Missions.tutorial_use_draught = {
	mission_template_name = "simple",
	text = "mission_objective_tutorial_use_draught"
}
Missions.tutorial_pickup_healthkit = {
	mission_template_name = "simple",
	text = "mission_objective_tutorial_pickup_healthkit"
}
Missions.tutorial_revive_ally = {
	mission_template_name = "simple",
	text = "mission_objective_tutorial_revive_ally"
}
Missions.tutorial_heal_ally = {
	mission_template_name = "simple",
	text = "mission_objective_tutorial_heal_ally"
}
Missions.tutorial_survive_attack = {
	mission_template_name = "simple",
	text = "mission_objective_tutorial_survive_attack "
}
Missions.tutorial_go_to_end = {
	mission_template_name = "simple",
	text = "mission_objective_tutorial_go_to_end "
}
Missions.tutorial_kill_remaining = {
	mission_template_name = "simple",
	text = "mission_objective_tutorial_kill_remaining"
}
Missions.tutorial = {
	mission_template_name = "tutorial",
	hidden = true
}

for name, data in pairs(Missions) do
	assert(data.mission_template_name, "mission_template_name not specified")

	data.name = name
end

return 
