return function ()
	define_rule({
		name = "pbw_gameplay_seeing_a_stormvermin",
		response = "pbw_gameplay_seeing_a_stormvermin",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_storm_vermin_commander"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"last_seen_storm_vermin_commander",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_storm_vermin_commander",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_seeing_a_gutter_runner",
		response = "pbw_gameplay_seeing_a_gutter_runner",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_gutter_runner"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				4
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"last_seen_gutter_runner",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_gutter_runner",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_seeing_a_globadier",
		response = "pbw_gameplay_seeing_a_globadier",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_poison_wind_globadier"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				4
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"last_seen_globadier",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_globadier",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_seeing_a_skaven_rat_ogre",
		response = "pbw_gameplay_seeing_a_skaven_rat_ogre",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_rat_ogre"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				4
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"last_seen_rate_ogre",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_rate_ogre",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_incoming_skaven_rat_ogre",
		response = "pbw_gameplay_incoming_skaven_rat_ogre",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_attack"
			},
			{
				"query_context",
				"attack_tag",
				OP.EQ,
				"rat_ogre_charge"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"ogre_charges",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"faction_memory",
				"ogre_charges",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_seeing_a_skaven_patrol_stormvermin",
		response = "pbw_gameplay_seeing_a_skaven_patrol_stormvermin",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_storm_vermin"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				4
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"last_seen_storm_vermin",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_storm_vermin",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_seeing_a_skaven_slaver",
		response = "pbw_gameplay_seeing_a_skaven_slaver",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_pack_master"
			},
			{
				"query_context",
				"distance",
				OP.GT,
				4
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_slaver",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_slaver",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_seeing_a_skaven_ratling_gun",
		response = "pbw_gameplay_seeing_a_skaven_ratling_gun",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_ratling_gunner"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				4
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"last_seen_skaven_ratling_gunner",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_skaven_ratling_gunner",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_tension_no_enemies",
		response = "pbw_gameplay_tension_no_enemies",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemies_distant"
			},
			{
				"query_context",
				"num_units",
				OP.GT,
				5
			},
			{
				"global_context",
				"level_time",
				OP.GT,
				90
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_casual_quotes",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_casual_quotes",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_killing_globadier",
		response = "pbw_gameplay_killing_globadier",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_kill"
			},
			{
				"query_context",
				"killed_type",
				OP.EQ,
				"skaven_poison_wind_globadier"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"time_since_killing_globadier",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_killing_globadier",
				OP.TIMESET
			},
			{
				"faction_memory",
				"bright_wizard_special_kills_in_row",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"empire_soldier_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"dwarf_ranger_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"witch_hunter_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"wood_elf_special_kills_in_row",
				OP.NUMSET,
				0
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_killing_ratling",
		response = "pbw_gameplay_killing_ratling",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_kill"
			},
			{
				"query_context",
				"killed_type",
				OP.EQ,
				"skaven_ratling_gunner"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"time_since_killing_ratling",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_killing_ratling",
				OP.TIMESET
			},
			{
				"faction_memory",
				"bright_wizard_special_kills_in_row",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"empire_soldier_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"dwarf_ranger_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"witch_hunter_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"wood_elf_special_kills_in_row",
				OP.NUMSET,
				0
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_killing_packmaster",
		response = "pbw_gameplay_killing_packmaster",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_kill"
			},
			{
				"query_context",
				"killed_type",
				OP.EQ,
				"skaven_pack_master"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"time_since_killing_packmaster",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_killing_packmaster",
				OP.TIMESET
			},
			{
				"faction_memory",
				"bright_wizard_special_kills_in_row",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"empire_soldier_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"dwarf_ranger_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"witch_hunter_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"wood_elf_special_kills_in_row",
				OP.NUMSET,
				0
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_killing_gutterrunner",
		response = "pbw_gameplay_killing_gutterrunner",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_kill"
			},
			{
				"query_context",
				"killed_type",
				OP.EQ,
				"skaven_gutter_runner"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"time_since_killing_gutterrunner",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_killing_gutterrunner",
				OP.TIMESET
			},
			{
				"faction_memory",
				"bright_wizard_special_kills_in_row",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"empire_soldier_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"dwarf_ranger_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"witch_hunter_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"wood_elf_special_kills_in_row",
				OP.NUMSET,
				0
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_killing_lootrat",
		response = "pbw_gameplay_killing_lootrat",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_kill"
			},
			{
				"query_context",
				"killed_type",
				OP.EQ,
				"skaven_loot_rat"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"time_since_killing_lootrat",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_killing_lootrat",
				OP.TIMESET
			},
			{
				"faction_memory",
				"bright_wizard_special_kills_in_row",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"empire_soldier_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"dwarf_ranger_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"witch_hunter_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"wood_elf_special_kills_in_row",
				OP.NUMSET,
				0
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_globadier_guck",
		response = "pbw_gameplay_globadier_guck",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_attack"
			},
			{
				"query_context",
				"attack_tag",
				OP.EQ,
				"pwg_projectile"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"pwg_projectile_thrown",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"pwg_projectile_thrown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pbw_gameplay_hit_by_goo",
		name = "pbw_gameplay_hit_by_goo",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"hit_by_goo"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_taking_heavy_damage",
		response = "pbw_gameplay_taking_heavy_damage",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"health_trigger"
			},
			{
				"query_context",
				"trigger_type",
				OP.EQ,
				"losing_rapidly"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"time_since_taking_heavy_damage",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taking_heavy_damage",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_incoming_globadier",
		response = "pbw_gameplay_incoming_globadier",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_attack"
			},
			{
				"query_context",
				"attack_tag",
				OP.EQ,
				"pwg_suicide_run"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"pwg_suicides",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"faction_memory",
				"pwg_suicides",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_knocked_down",
		response = "pbw_gameplay_knocked_down",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"knocked_down"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"time_since_knocked_down",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_knocked_down",
				OP.TIMESET
			},
			{
				"faction_memory",
				"times_we_downed",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"times_down_bright_wizard",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_player_pounced",
		response = "pbw_gameplay_player_pounced",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"pounced_down"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"time_since_knocked_down",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_knocked_down",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_empire_soldier_grabbed",
		response = "pbw_gameplay_empire_soldier_grabbed",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"grabbed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"times_since_we_grabbed",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"times_since_we_grabbed",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_witch_hunter_grabbed",
		response = "pbw_gameplay_witch_hunter_grabbed",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"grabbed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"times_since_we_grabbed",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"times_since_we_grabbed",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_dwarf_ranger_grabbed",
		response = "pbw_gameplay_dwarf_ranger_grabbed",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"grabbed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"times_since_we_grabbed",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"times_since_we_grabbed",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_wood_elf_grabbed",
		response = "pbw_gameplay_wood_elf_grabbed",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"grabbed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"times_since_we_grabbed",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"times_since_we_grabbed",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_heard_empire_soldier_in_trouble",
		response = "pbw_gameplay_heard_empire_soldier_in_trouble",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"pes_gameplay_knocked_down"
			},
			{
				"query_context",
				"speaker_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"times_down_empire_soldier",
				OP.NEQ,
				2
			},
			{
				"faction_memory",
				"time_since_we_downed",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_we_downed",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_heard_witch_hunter_in_trouble",
		response = "pbw_gameplay_heard_witch_hunter_in_trouble",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"pwh_gameplay_knocked_down"
			},
			{
				"query_context",
				"speaker_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"times_down_witch_hunter",
				OP.NEQ,
				2
			},
			{
				"faction_memory",
				"time_since_we_downed",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_we_downed",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_heard_wood_elf_in_trouble",
		response = "pbw_gameplay_heard_wood_elf_in_trouble",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"pwe_gameplay_knocked_down"
			},
			{
				"query_context",
				"speaker_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"times_down_wood_elf",
				OP.NEQ,
				2
			},
			{
				"faction_memory",
				"time_since_we_downed",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_we_downed",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_heard_dwarf_ranger_in_trouble",
		response = "pbw_gameplay_heard_dwarf_ranger_in_trouble",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"pdr_gameplay_knocked_down"
			},
			{
				"query_context",
				"speaker_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"times_down_dwarf_ranger",
				OP.NEQ,
				2
			},
			{
				"faction_memory",
				"time_since_we_downed",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_we_downed",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_no_nearby_teammates",
		response = "pbw_gameplay_no_nearby_teammates",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_distant"
			},
			{
				"user_context",
				"friends_close",
				OP.EQ,
				0
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"global_context",
				"level_time",
				OP.GT,
				60
			},
			{
				"user_memory",
				"time_since_alone",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_alone",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_empire_soldier_dead",
		response = "pbw_gameplay_empire_soldier_dead",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"player_death"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_pes_death",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pes_death",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_witch_hunter_dead",
		response = "pbw_gameplay_witch_hunter_dead",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"player_death"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_pwh_death",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pwh_death",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_wood_elf_dead",
		response = "pbw_gameplay_wood_elf_dead",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"player_death"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_pwe_death",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pwe_death",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_dwarf_ranger_dead",
		response = "pbw_gameplay_dwarf_ranger_dead",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"player_death"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_pdr_death",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pdr_death",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_ambush_horde_spawned",
		response = "pbw_gameplay_ambush_horde_spawned",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"horde"
			},
			{
				"query_context",
				"horde_type",
				OP.EQ,
				"ambush"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_ambush",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_ambush",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_casual_quotes",
		response = "pbw_gameplay_casual_quotes",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"query_context",
				"is_forced",
				OP.EQ,
				0
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"user_context",
				"enemies_distant",
				OP.EQ,
				0
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"global_context",
				"current_level",
				OP.NEQ,
				"inn_level"
			},
			{
				"faction_memory",
				"time_since_casual_quotes",
				OP.TIMEDIFF,
				OP.GT,
				120
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_casual_quotes",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_casual_quotes_city_01",
		response = "pbw_gameplay_casual_quotes_city_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"query_context",
				"is_forced",
				OP.EQ,
				0
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"user_context",
				"enemies_distant",
				OP.EQ,
				0
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"global_context",
				"current_level",
				OP.EQ,
				"magnus"
			},
			{
				"faction_memory",
				"time_since_casual_quotes",
				OP.TIMEDIFF,
				OP.GT,
				120
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_casual_quotes",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_casual_quotes_city_02",
		response = "pbw_gameplay_casual_quotes_city_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"query_context",
				"is_forced",
				OP.EQ,
				0
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"user_context",
				"enemies_distant",
				OP.EQ,
				0
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"global_context",
				"current_level",
				OP.EQ,
				"merchant"
			},
			{
				"faction_memory",
				"time_since_casual_quotes",
				OP.TIMEDIFF,
				OP.GT,
				120
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_casual_quotes",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pbw_gameplay_empire_soldier_being_helped_up",
		name = "pbw_gameplay_empire_soldier_being_helped_up",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"start_revive"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		}
	})
	define_rule({
		response = "pbw_gameplay_witch_hunter_being_helped_up",
		name = "pbw_gameplay_witch_hunter_being_helped_up",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"start_revive"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		}
	})
	define_rule({
		response = "pbw_gameplay_wood_elf_being_helped_up",
		name = "pbw_gameplay_wood_elf_being_helped_up",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"start_revive"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		}
	})
	define_rule({
		response = "pbw_gameplay_dwarf_ranger_being_helped",
		name = "pbw_gameplay_dwarf_ranger_being_helped",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"start_revive"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_healing_empire_soldier",
		response = "pbw_gameplay_healing_empire_soldier",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heal_start"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"last_healed_someone",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"last_healed_someone",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_healing_witch_hunter",
		response = "pbw_gameplay_healing_witch_hunter",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heal_start"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"last_healed_someone",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"last_healed_someone",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_healing_wood_elf",
		response = "pbw_gameplay_healing_wood_elf",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heal_start"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"last_healed_someone",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"last_healed_someone",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_healing_dwarf_ranger",
		response = "pbw_gameplay_healing_dwarf_ranger",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heal_start"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"last_healed_someone",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"last_healed_someone",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_helped_by_empire_soldier",
		response = "pbw_gameplay_helped_by_empire_soldier",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heal_completed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"healer_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"last_helped",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"last_helped",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_helped_by_witch_hunter",
		response = "pbw_gameplay_helped_by_witch_hunter",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heal_completed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"healer_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"last_helped",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"last_helped",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_helped_by_wood_elf",
		response = "pbw_gameplay_helped_by_wood_elf",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heal_completed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"healer_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"last_helped",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"last_helped",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_helped_by_dwarf_ranger",
		response = "pbw_gameplay_helped_by_dwarf_ranger",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heal_completed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"healer_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"last_helped",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"last_helped",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_low_on_health",
		response = "pbw_gameplay_low_on_health",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"health_trigger"
			},
			{
				"query_context",
				"current_amount",
				OP.LTEQ,
				0.4
			},
			{
				"query_context",
				"current_amount",
				OP.GTEQ,
				0.1
			},
			{
				"query_context",
				"trigger_type",
				OP.EQ,
				"decreasing"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"low_health",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"low_health",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_empire_soldier_low_on_health",
		response = "pbw_gameplay_empire_soldier_low_on_health",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"pes_gameplay_low_on_health"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_low_health_pes",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_low_health_pes",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_witch_hunter_low_on_health",
		response = "pbw_gameplay_witch_hunter_low_on_health",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"pwh_gameplay_low_on_health"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_low_health_pwh",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_low_health_pwh",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_wood_elf_low_on_health",
		response = "pbw_gameplay_wood_elf_low_on_health",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"pwe_gameplay_low_on_health"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_low_health_pwe",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_low_health_pwe",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_dwarf_ranger_low_on_health",
		response = "pbw_gameplay_dwarf_ranger_low_on_health",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"pdr_gameplay_low_on_health"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_low_health_pdr",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_low_health_pdr",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_spots_ammo",
		response = "pbw_gameplay_spots_ammo",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"ammo"
			},
			{
				"query_context",
				"distance",
				OP.GT,
				1
			},
			{
				"query_context",
				"distance",
				OP.LT,
				25
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"global_context",
				"current_level",
				OP.NEQ,
				"inn_level"
			},
			{
				"faction_memory",
				"last_saw_ammo",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_saw_ammo",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_spots_health",
		response = "pbw_gameplay_spots_health",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"health"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"query_context",
				"distance",
				OP.GT,
				1
			},
			{
				"query_context",
				"distance",
				OP.LT,
				25
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"last_saw_health",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_saw_health",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_spots_health_flask",
		response = "pbw_gameplay_spots_health_flask",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"health_flask"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"query_context",
				"distance",
				OP.GT,
				1
			},
			{
				"query_context",
				"distance",
				OP.LT,
				25
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"last_saw_health",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_saw_health",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_spots_potion",
		response = "pbw_gameplay_spots_potion",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"potion"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"query_context",
				"distance",
				OP.GT,
				1
			},
			{
				"query_context",
				"distance",
				OP.LT,
				25
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"last_saw_potion",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_saw_potion",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_spots_bomb",
		response = "pbw_gameplay_spots_bomb",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"bomb"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"query_context",
				"distance",
				OP.GT,
				1
			},
			{
				"query_context",
				"distance",
				OP.LT,
				25
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"last_saw_bomb",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_saw_bomb",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_using_potion",
		response = "pbw_gameplay_using_potion",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"on_healing_draught"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"time_since_used_potion",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_used_potion",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_self_heal",
		response = "pbw_gameplay_self_heal",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heal_start"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"last_healed_someone",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"last_healed_someone",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_throwing_bomb",
		response = "pbw_gameplay_throwing_bomb",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"throwing_item"
			},
			{
				"query_context",
				"item_type",
				OP.EQ,
				"grenade"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"time_since_throwing_bomb",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_throwing_bomb",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_activating_magic_weapon_offensive",
		response = "pbw_gameplay_activating_magic_weapon_offensive",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"stance_triggered"
			},
			{
				"query_context",
				"stance_type",
				OP.EQ,
				"offensive"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"time_since_stance_triggered",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_stance_triggered",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_activating_magic_weapon_defensive",
		response = "pbw_gameplay_activating_magic_weapon_defensive",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"stance_triggered"
			},
			{
				"query_context",
				"stance_type",
				OP.EQ,
				"defensive"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"time_since_stance_triggered",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_stance_triggered",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_friendly_fire_witch_hunter",
		response = "pbw_gameplay_friendly_fire_witch_hunter",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friendly_fire"
			},
			{
				"query_context",
				"target",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"last_friendly_fire",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"last_friendly_fire",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_friendly_fire_dwarf_ranger",
		response = "pbw_gameplay_friendly_fire_dwarf_ranger",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friendly_fire"
			},
			{
				"query_context",
				"target",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"last_friendly_fire",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"last_friendly_fire",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_friendly_fire_wood_elf",
		response = "pbw_gameplay_friendly_fire_wood_elf",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friendly_fire"
			},
			{
				"query_context",
				"target",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"last_friendly_fire",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"last_friendly_fire",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_friendly_fire_empire_soldier",
		response = "pbw_gameplay_friendly_fire_empire_soldier",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friendly_fire"
			},
			{
				"query_context",
				"target",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"last_friendly_fire",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"last_friendly_fire",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_encouraging_words",
		response = "pbw_gameplay_encouraging_words",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_casual_quotes",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_casual_quotes",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_special_enemy_kill_melee",
		response = "pbw_gameplay_special_enemy_kill_melee",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"killed_enemy"
			},
			{
				"query_context",
				"hit_zone",
				OP.EQ,
				"head"
			},
			{
				"query_context",
				"weapon_slot",
				OP.EQ,
				"slot_melee"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_last_special_kill_melee",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_special_kill_melee",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_special_enemy_kill_ranged",
		response = "pbw_gameplay_special_enemy_kill_ranged",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"killed_enemy"
			},
			{
				"query_context",
				"hit_zone",
				OP.EQ,
				"head"
			},
			{
				"query_context",
				"weapon_slot",
				OP.EQ,
				"slot_ranged"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_last_special_kill_ranged",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_special_kill_ranged",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_empire_soldier_on_a_frenzy",
		response = "pbw_gameplay_empire_soldier_on_a_frenzy",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"multikill"
			},
			{
				"query_context",
				"number_of_kills",
				OP.EQ,
				7
			},
			{
				"query_context",
				"profile_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_last_frenzy_empire_soldier",
				OP.TIMEDIFF,
				OP.GT,
				90
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_frenzy_empire_soldier",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_witch_hunter_on_a_frenzy",
		response = "pbw_gameplay_witch_hunter_on_a_frenzy",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"multikill"
			},
			{
				"query_context",
				"number_of_kills",
				OP.EQ,
				7
			},
			{
				"query_context",
				"profile_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_last_frenzy_witch_hunter",
				OP.TIMEDIFF,
				OP.GT,
				90
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_frenzy_witch_hunter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_wood_elf_on_a_frenzy",
		response = "pbw_gameplay_wood_elf_on_a_frenzy",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"multikill"
			},
			{
				"query_context",
				"number_of_kills",
				OP.EQ,
				7
			},
			{
				"query_context",
				"profile_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_last_frenzy_wood_elf",
				OP.TIMEDIFF,
				OP.GT,
				90
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_frenzy_wood_elf",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_dwarf_ranger_on_a_frenzy",
		response = "pbw_gameplay_dwarf_ranger_on_a_frenzy",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"multikill"
			},
			{
				"query_context",
				"number_of_kills",
				OP.EQ,
				7
			},
			{
				"query_context",
				"profile_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_last_frenzy_dwarf_ranger",
				OP.TIMEDIFF,
				OP.GT,
				90
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_frenzy_dwarf_ranger",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_armoured_enemy_witch_hunter",
		response = "pbw_gameplay_armoured_enemy_witch_hunter",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"armor_hit"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"profile_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_last_armor_hit",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_armor_hit",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_armoured_enemy_dwarf",
		response = "pbw_gameplay_armoured_enemy_dwarf",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"armor_hit"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"profile_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_last_armor_hit",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_armor_hit",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_armoured_enemy_wood_elf",
		response = "pbw_gameplay_armoured_enemy_wood_elf",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"armor_hit"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"profile_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_last_armor_hit",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_armor_hit",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_armoured_enemy_empire_soldier",
		response = "pbw_gameplay_armoured_enemy_empire_soldier",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"armor_hit"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"profile_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_last_armor_hit",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_armor_hit",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_objective_interacting_with_objective",
		response = "pbw_objective_interacting_with_objective",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"objective_interacting_with_objective"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_objective_interacting_with_objective_done",
				OP.TIMEDIFF,
				OP.GT,
				2
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_interacting_with_objective_done",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_objective_nearing_objective_deadline",
		response = "pbw_objective_nearing_objective_deadline",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"objective_nearing_objective_deadline"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_objective_nearing_objective_deadline_done",
				OP.TIMEDIFF,
				OP.GT,
				2
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_nearing_objective_deadline_done",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_objective_achieved_all_but_one_goal",
		response = "pbw_objective_achieved_all_but_one_goal",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"objective_achieved_all_but_one_goal"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_objective_achieved_all_but_one_goal_done",
				OP.TIMEDIFF,
				OP.GT,
				2
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_achieved_all_but_one_goal_done",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_objective_goal_achieved_more_left",
		response = "pbw_objective_goal_achieved_more_left",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"objective_goal_achieved_more_left"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_objective_goal_achieved_more_left_done",
				OP.TIMEDIFF,
				OP.GT,
				2
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_goal_achieved_more_left_done",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_objective_goal_achieved_escape",
		response = "pbw_objective_goal_achieved_escape",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"objective_goal_achieved_escape"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_objective_goal_achieved_escape_done",
				OP.TIMEDIFF,
				OP.GT,
				2
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_goal_achieved_escape_done",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_objective_correct_path_this_way",
		response = "pbw_objective_correct_path_this_way",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"this_way"
			},
			{
				"query_context",
				"distance",
				OP.LTEQ,
				15
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_found_way",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_found_way",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_objective_correct_path_up",
		response = "pbw_objective_correct_path_up",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"this_way_up"
			},
			{
				"query_context",
				"distance",
				OP.LTEQ,
				15
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_found_way_up",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_found_way_up",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_objective_correct_path_down",
		response = "pbw_objective_correct_path_down",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"this_way_down"
			},
			{
				"query_context",
				"distance",
				OP.LTEQ,
				15
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_found_way_down",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_found_way_down",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_objective_correct_path_bridge",
		response = "pbw_objective_correct_path_bridge",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"this_way_bridge"
			},
			{
				"query_context",
				"distance",
				OP.LTEQ,
				15
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_found_way_bridge",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_found way_bridge",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_objective_correct_path_street",
		response = "pbw_objective_correct_path_street",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"this_way_street"
			},
			{
				"query_context",
				"distance",
				OP.LTEQ,
				15
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_found_way_street",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_found_way_street",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_objective_correct_path_door",
		response = "pbw_objective_correct_path_door",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"this_way_door"
			},
			{
				"query_context",
				"distance",
				OP.LTEQ,
				15
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_found_way_door",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_found_way_door",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_objective_correct_path_stairs_up",
		response = "pbw_objective_correct_path_stairs_up",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"this_way_stairs_up"
			},
			{
				"query_context",
				"distance",
				OP.LTEQ,
				7
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_found_way_stairs_up",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_found_way_stairs_up",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_objective_correct_path_stairs_down",
		response = "pbw_objective_correct_path_stairs_down",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"this_way_stairs_down"
			},
			{
				"query_context",
				"distance",
				OP.LTEQ,
				7
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_found_way_stairs_down",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_found_way_stairs_down",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_spotting_ferry_lady",
		response = "pbw_spotting_ferry_lady",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"generic_spotting_ferry_lady"
			},
			{
				"query_context",
				"distance",
				OP.LTEQ,
				15
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_spotting_ferry_lady",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_spotting_ferry_lady",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_objective_dropping_grimoire",
		response = "pbw_objective_dropping_grimoire",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"throwing_item"
			},
			{
				"query_context",
				"item_type",
				OP.EQ,
				"grimoire"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"time_since_throwing_grimoire",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_throwing_grimoire",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_objective_picking_up_grimoire",
		response = "pbw_objective_picking_up_grimoire",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"on_pickup"
			},
			{
				"query_context",
				"pickup_name",
				OP.EQ,
				"pickup_grimoire"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"time_since_picking_up_grimoire",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_picking_up_grimoire",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_dead_body",
		response = "pbw_gameplay_dead_body",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"generic_spotting_dead_body"
			},
			{
				"query_context",
				"distance",
				OP.LTEQ,
				15
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"global_context",
				"level_time ",
				OP.GT,
				120
			},
			{
				"faction_memory",
				"time_since_spotting_dead_body",
				OP.TIMEDIFF,
				OP.GT,
				180
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_spotting_dead_body",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_dead_end",
		response = "pbw_gameplay_dead_end",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"generic_dead_end"
			},
			{
				"query_context",
				"distance",
				OP.LTEQ,
				15
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_dead_end",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_dead_end",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_curse",
		response = "pbw_curse",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemies_close"
			},
			{
				"query_context",
				"num_units      ",
				OP.GT,
				5
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_casual_quotes",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_casual_quotes",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_overcharge",
		response = "pbw_gameplay_overcharge",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"overcharge"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"time_since_overcharge",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_overcharge",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pbw_targeted_by_ratling",
		name = "pbw_targeted_by_ratling",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"ratling_target"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_memory",
				"time_since_ratling_target",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		}
	})
	define_rule({
		name = "pbw_objective_magnus_tower_view_tower",
		response = "pbw_objective_magnus_tower_view_tower",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"magnus_tower_view_tower"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_magnus_tower_view_tower",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_view_tower",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_magnus_tower_entering_guardhouse",
		response = "pbw_objective_magnus_tower_entering_guardhouse",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"magnus_tower_entering_guardhouse"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_magnus_tower_entering_guardhouse",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_entering_guardhouse",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_magnus_tower_seeing_gate",
		response = "pbw_objective_magnus_tower_seeing_gate",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"magnus_tower_seeing_gate"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_magnus_tower_seeing_gate",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_seeing_gate",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_magnus_tower_finding_explosives",
		response = "pbw_objective_magnus_tower_finding_explosives",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"magnus_tower_finding_explosives"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_magnus_tower_finding_explosives_gate",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_finding_explosives_gate",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_magnus_tower_reaching_top_of_magnus_tower",
		response = "pbw_objective_magnus_tower_reaching_top_of_magnus_tower",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"magnus_tower_reaching_top_of_magnus_tower"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_magnus_tower_reaching_top_of_magnus_tower",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_reaching_top_of_magnus_tower",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_magnus_tower_crescendo_starting",
		response = "pbw_objective_magnus_tower_crescendo_starting",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"magnus_tower_crescendo_starting"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_magnus_tower_crescendo_starting",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_crescendo_starting",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_magnus_tower_call_elevator",
		response = "pbw_objective_magnus_tower_call_elevator",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"magnus_tower_call_elevator"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_magnus_tower_call_elevator",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_call_elevator",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_magnus_tower_elevator_opens_door",
		response = "pbw_objective_magnus_tower_elevator_opens_door",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"magnus_tower_elevator_opens_door"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_magnus_tower_elevator_opens_door",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_elevator_opens_door",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_magnus_tower_seeing_guardhouse",
		response = "pbw_objective_magnus_tower_seeing_guardhouse",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"magnus_tower_seeing_guardhouse"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_magnus_tower_seeing_guardhouse",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_seeing_guardhouse",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_magnus_tower_up_stairs",
		response = "pbw_objective_magnus_tower_up_stairs",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"magnus_tower_up_stairs"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_magnus_tower_up_stairs",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_up_stairs",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_magnus_tower_seeing_tavern",
		response = "pbw_objective_magnus_tower_seeing_tavern",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"magnus_tower_seeing_tavern"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_magnus_tower_seeing_tavern",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_seeing_tavern",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_magnus_tower_to_rooftops",
		response = "pbw_objective_magnus_tower_to_rooftops",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"magnus_tower_over_rooftops"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_magnus_tower_over_rooftops",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_over_rooftops",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_magnus_tower_over_rooftops",
		response = "pbw_objective_magnus_tower_over_rooftops",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"magnus_tower_over_rooftops"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_magnus_tower_over_rooftops",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_over_rooftops",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_magnus_tower_seeing_tower",
		response = "pbw_objective_magnus_tower_seeing_tower",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"magnus_tower_seeing_tower"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_magnus_tower_seeing_tower",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_seeing_tower",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_magnus_tower_walking_streets",
		response = "pbw_objective_magnus_tower_walking_streets",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"magnus_tower_walking_streets"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_magnus_tower_walking_streets",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_walking_streets",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_magnus_tower_hint_blow_horn",
		response = "pbw_objective_magnus_tower_hint_blow_horn",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"magnus_tower_hint_blow_horn"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_magnus_tower_hint_blow_horn",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_hint_blow_horn",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_magnus_tower_arriving_late",
		response = "pbw_objective_magnus_tower_arriving_late",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"magnus_tower_arriving_late"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_magnus_tower_arriving_late",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_arriving_late",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_magnus_tower_vista",
		response = "pbw_objective_magnus_tower_vista",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"magnus_tower_vista"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_magnus_tower_vista",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_vista",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_forest_ambush_reaching_skaven_camp",
		response = "pbw_objective_forest_ambush_reaching_skaven_camp",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"forest_ambush_reaching_skaven_camp"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_forest_ambush_reaching_skaven_camp",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_forest_ambush_reaching_skaven_camp",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_forest_ambush_finding_explosives",
		response = "pbw_objective_forest_ambush_finding_explosives",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"forest_ambush_finding_explosives"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_forest_ambush_finding_explosives",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_forest_ambush_finding_explosives",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_forest_ambush_doomwheel_objective_done",
		response = "pbw_objective_forest_ambush_doomwheel_objective_done",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"forest_ambush_doomwheel_objective_done"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_forest_ambush_doomwheel_objective_done",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_forest_ambush_doomwheel_objective_done",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_forest_ambush_back_to_ferry",
		response = "pbw_objective_forest_ambush_back_to_ferry",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"forest_ambush_back_to_ferry"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_forest_ambush_back_to_ferry",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_forest_ambush_back_to_ferry",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_forest_ambush_ring_bell",
		response = "pbw_objective_forest_ambush_ring_bell",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"forest_ambush_ring_bell"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_forest_ambush_ring_bell",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_forest_ambush_ring_bell",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_forest_ambush_crescendo_starting",
		response = "pbw_objective_forest_ambush_crescendo_starting",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"forest_ambush_crescendo_starting"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_forest_ambush_crescendo_starting",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_forest_ambush_crescendo_starting",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_forest_ambush_boat_arrives",
		response = "pbw_objective_forest_ambush_boat_arrives",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"forest_ambush_boat_arrives"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_forest_ambush_boat_arrives",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_forest_ambush_boat_arrives",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_forest_ambush_spotting_bridge",
		response = "pbw_objective_forest_ambush_spotting_bridge",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"forest_ambush_spotting_bridge"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_forest_ambush_spotting_bridge",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_forest_ambush_spotting_bridge",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_forest_ambush_spotting_watch_tower",
		response = "pbw_objective_forest_ambush_spotting_watch_tower",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"forest_ambush_spotting_watch_tower"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_forest_ambush_spotting_watch_tower",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_forest_ambush_spotting_watch_tower",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_forest_ambush_spotting_ruins",
		response = "pbw_objective_forest_ambush_spotting_ruins",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"forest_ambush_spotting_ruins"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_forest_ambush_spotting_ruins",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_forest_ambush_spotting_ruins",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_forest_ambush_spotting_coaching_inn",
		response = "pbw_objective_forest_ambush_spotting_coaching_inn",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"forest_ambush_spotting_coaching_inn"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_forest_ambush_spotting_coaching_inn",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_forest_ambush_spotting_coaching_inn",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_forest_ambush_spotting_trunk",
		response = "pbw_objective_forest_ambush_spotting_trunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"forest_ambush_spotting_trunk"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_forest_ambush_spotting_trunk",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_forest_ambush_spotting_trunk",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_forest_ambush_spotting_first_doomwheel",
		response = "pbw_objective_forest_ambush_spotting_first_doomwheel",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"forest_ambush_spotting_first_doomwheel"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_forest_ambush_spotting_first_doomwheel",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_forest_ambush_spotting_first_doomwheel",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_forest_ambush_spotting_lodge_ruins",
		response = "pbw_objective_forest_ambush_spotting_lodge_ruins",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"forest_ambush_spotting_lodge_ruins"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_forest_ambush_spotting_lodge_ruins",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_forest_ambush_spotting_lodge_ruins",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_forest_ambush_spotting_broken_wagon",
		response = "pbw_objective_forest_ambush_spotting_broken_wagon",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"forest_ambush_spotting_broken_wagon"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_forest_ambush_spotting_broken_wagon",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_forest_ambush_spotting_broken_wagon",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_docks_first_warehouse_door",
		response = "pbw_objective_docks_first_warehouse_door",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"docks_first_warehouse_door"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_docks_first_warehouse_door",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_docks_first_warehouse_door",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_docks_second_warehouse_door",
		response = "pbw_objective_docks_second_warehouse_door",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"docks_second_warehouse_door"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_docks_second_warehouse_door",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_docks_second_warehouse_door",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_docks_leave",
		response = "pbw_objective_docks_leave",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"docks_leave"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_docks_leave",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_docks_leave",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_docks_first_warehouse_inside",
		response = "pbw_objective_docks_first_warehouse_inside",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"docks_first_warehouse_inside"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_docks_first_warehouse_inside",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_docks_first_warehouse_inside",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_docks_second_warehouse_inside",
		response = "pbw_objective_docks_second_warehouse_inside",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"docks_second_warehouse_inside"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_docks_second_warehouse_inside",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_docks_second_warehouse_inside",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_docks_second_warehouse_escape",
		response = "pbw_objective_docks_second_warehouse_escape",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"docks_second_warehouse_escape"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_docks_second_warehouse_escape",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_docks_second_warehouse_escape",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_docks_explosion",
		response = "pbw_objective_docks_explosion",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"docks_explosion"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_docks_explosion",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_docks_explosion",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_merchant_district_spotting_ruins",
		response = "pbw_objective_merchant_district_spotting_ruins",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"merchant_district_spotting_ruins"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_merchant_district_spotting_ruins",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_merchant_district_spotting_ruins",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_merchant_district_spotting_market",
		response = "pbw_objective_merchant_district_spotting_market",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"merchant_district_spotting_market"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_merchant_district_spotting_market",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_merchant_district_spotting_market",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_merchant_district_spotting_blocked_route",
		response = "pbw_objective_merchant_district_spotting_blocked_route",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"merchant_district_spotting_blocked_route"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_merchant_district_spotting_blocked_route",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_merchant_district_spotting_blocked_route",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_objective_merchant_district_crescendo_starting",
		response = "pbw_objective_merchant_district_crescendo_starting",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"merchant_district_crescendo_starting"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_merchant_district_crescendo_starting",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_merchant_district_crescendo_starting",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_merchant_district_approaching_timelimit",
		response = "pbw_objective_merchant_district_approaching_timelimit",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"merchant_district_approaching_timelimit"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_merchant_district_approaching_timelimit",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_merchant_district_approaching_timelimit",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_merchant_district_delivered_first_supply",
		response = "pbw_objective_merchant_district_delivered_first_supply",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"merchant_district_delivered_first_supply"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_merchant_district_delivered_first_supply",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_merchant_district_delivered_first_supply",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_merchant_district_delivered_quarter_supply",
		response = "pbw_objective_merchant_district_delivered_quarter_supply",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"merchant_district_delivered_quarter_supply"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_merchant_district_delivered_quarter_supply",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_merchant_district_delivered_quarter_supply",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_merchant_district_delivered_half_supply",
		response = "pbw_objective_merchant_district_delivered_half_supply",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"merchant_district_delivered_half_supply"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_merchant_district_delivered_half_supply",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_merchant_district_delivered_half_supply",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_merchant_district_delivered_most_supply",
		response = "pbw_objective_merchant_district_delivered_most_supply",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"merchant_district_delivered_most_supply"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_merchant_district_delivered_most_supply",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_merchant_district_delivered_most_supply",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_merchant_district_through_granary",
		response = "pbw_objective_merchant_district_through_granary",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"merchant_district_through_granary"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_merchant_district_through_granary",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_merchant_district_through_granary",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_merchant_district_drop_down_street",
		response = "pbw_objective_merchant_district_drop_down_street",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"merchant_district_drop_down_street"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_merchant_district_drop_down_street",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_merchant_district_drop_down_street",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_merchant_district_through_gardens",
		response = "pbw_objective_merchant_district_through_gardens",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"merchant_district_through_gardens"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_merchant_district_through_gardens",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_merchant_district_through_gardens",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_merchant_district_granary_empty",
		response = "pbw_objective_merchant_district_granary_empty",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"merchant_district_granary_empty"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_merchant_district_granary_empty",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_merchant_district_granary_empty",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_merchant_district_apothecary",
		response = "pbw_objective_merchant_district_apothecary",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"merchant_district_apothecary"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_merchant_district_apothecary",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_merchant_district_apothecary",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_merchant_district_treasure",
		response = "pbw_objective_merchant_district_treasure",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"merchant_district_treasure"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_merchant_district_treasure",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_merchant_district_treasure",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_wizards_tower_reaching_apothecary_shop",
		response = "pbw_objective_wizards_tower_reaching_apothecary_shop",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"wizards_tower_reaching_apothecary_shop"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_wizards_tower_reaching_apothecary_shop",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_wizards_tower_reaching_apothecary_shop",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_wizards_tower_skaven_attacking_wards",
		response = "pbw_objective_wizards_tower_skaven_attacking_wards",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"wizards_tower_skaven_attacking_wards"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_wizards_tower_skaven_attacking_wards",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_wizards_tower_skaven_attacking_wards",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_wizards_tower_mission_successful",
		response = "pbw_objective_wizards_tower_mission_successful",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"wizards_tower_mission_successful"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_wizards_tower_mission_successful",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_wizards_tower_mission_successful",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_wizards_tower_generic_surprise",
		response = "pbw_objective_wizards_tower_generic_surprise",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"wizards_tower_generic_surprise"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_wizards_tower_generic_surprise",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_wizards_tower_generic_surprise",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_wizards_tower_library",
		response = "pbw_objective_wizards_tower_library",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"wizards_tower_library"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_wizards_tower_library",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_wizards_tower_library",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_wizards_tower_open_door",
		response = "pbw_objective_wizards_tower_open_door",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"wizards_tower_open_door"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_wizards_tower_open_door",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_wizards_tower_open_door",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_wizards_tower_wastelands",
		response = "pbw_objective_wizards_tower_wastelands",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"wizards_tower_wastelands"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_wizards_tower_wastelands",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_wizards_tower_wastelands",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_wizards_tower_seeing_tower_from_from_afar",
		response = "pbw_objective_wizards_tower_seeing_tower_from_from_afar",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"wizards_tower_seeing_tower_from_from_afar"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_wizards_tower_seeing_tower_from_from_afar",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_wizards_tower_seeing_tower_from_from_afar",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_wizards_tower_seeing_the_apotechary",
		response = "pbw_objective_wizards_tower_seeing_the_apotechary",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"wizards_tower_seeing_the_apotechary"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_wizards_tower_seeing_the_apotechary",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_wizards_tower_seeing_the_apotechary",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_wizards_tower_crescendo_starting",
		response = "pbw_objective_wizards_tower_crescendo_starting",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"wizards_tower_crescendo_starting"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_wizards_tower_crescendo_starting",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_wizards_tower_crescendo_starting",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_wizards_tower_generic_surprise_second",
		response = "pbw_objective_wizards_tower_generic_surprise_second",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"wizards_tower_generic_surprise_second"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_wizards_tower_generic_surprise_second",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_wizards_tower_generic_surprise_second",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_wizards_tower_crescendo_end",
		response = "pbw_objective_wizards_tower_crescendo_end",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"wizards_tower_crescendo_end"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_wizards_tower_crescendo_end",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_wizards_tower_crescendo_end",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_wizards_tower_finding_wizard",
		response = "pbw_objective_wizards_tower_finding_wizard",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"wizards_tower_finding_wizard"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_wizards_tower_finding_wizard",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_wizards_tower_finding_wizard",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_wizards_tower_commenting_skaven",
		response = "pbw_objective_wizards_tower_commenting_skaven",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"wizards_tower_commenting_skaven"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_wizards_tower_commenting_skaven",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_wizards_tower_commenting_skaven",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_wizards_tower_hall_of_mysteries",
		response = "pbw_objective_wizards_tower_hall_of_mysteries",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"wizards_tower_hall_of_mysteries"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_wizards_tower_hall_of_mysteries",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_wizards_tower_hall_of_mysteries",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_wizards_tower_illusion_room",
		response = "pbw_objective_wizards_tower_illusion_room",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"wizards_tower_illusion_room"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_wizards_tower_illusion_room",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_wizards_tower_illusion_room",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_wizards_tower_close_to_wizard",
		response = "pbw_objective_wizards_tower_close_to_wizard",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"wizards_tower_close_to_wizard"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_wizards_tower_close_to_wizard",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_wizards_tower_close_to_wizard",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_wizards_tower_commenting_paintings",
		response = "pbw_objective_wizards_tower_commenting_paintings",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"wizards_tower_commenting_paintings"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_wizards_tower_commenting_paintings",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_wizards_tower_commenting_paintings",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_cemetery_through_crypt_a",
		response = "pbw_objective_cemetery_through_crypt_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"objective_cemetery_through_crypt_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_objective_cemetery_through_crypt_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_through_crypt_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_cemetery_spotting_mausoleum",
		response = "pbw_objective_cemetery_spotting_mausoleum",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"objective_cemetery_spotting_mausoleum"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_objective_cemetery_spotting_mausoleum",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_spotting_mausoleum",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_cemetery_spotting_plague_brew_stains",
		response = "pbw_objective_cemetery_spotting_plague_brew_stains",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"objective_cemetery_spotting_plague_brew_stains"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_cemetery_spotting_plague_brew_stains",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_cemetery_spotting_plague_brew_stains",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_objective_cemetery_spotting_crypt_maze",
		response = "pbw_objective_cemetery_spotting_crypt_maze",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"objective_cemetery_spotting_crypt_maze"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_objective_cemetery_spotting_crypt_maze",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_spotting_crypt_maze",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_cemetery_through_crypt_b",
		response = "pbw_objective_cemetery_through_crypt_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"objective_cemetery_through_crypt_b"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_objective_cemetery_through_crypt_b",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_through_crypt_b",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_cemetery_spotting_graveyard",
		response = "pbw_objective_cemetery_spotting_graveyard",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"objective_cemetery_spotting_graveyard"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_objective_cemetery_spotting_graveyard",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_spotting_graveyard",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_cemetery_spotting_hedge_maze",
		response = "pbw_objective_cemetery_spotting_hedge_maze",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"objective_cemetery_spotting_hedge_maze"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_objective_cemetery_spotting_hedge_maze",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_spotting_hedge_maze",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_cemetery_spotting_plague_pyre",
		response = "pbw_objective_cemetery_spotting_plague_pyre",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"objective_cemetery_spotting_plague_pyre"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_objective_cemetery_spotting_plague_pyre",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_spotting_plague_pyre",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_cemetery_through_crypt_c",
		response = "pbw_objective_cemetery_through_crypt_c",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"objective_cemetery_through_crypt_c"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_objective_cemetery_through_crypt_c",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_through_crypt_c",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_cemetery_spotting_skaven_tunnels",
		response = "pbw_objective_cemetery_spotting_skaven_tunnels",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"objective_cemetery_spotting_skaven_tunnel"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_objective_cemetery_spotting_skaven_tunnel",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_spotting_skaven_tunnel",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_cemetery_spotting_plague_cauldron",
		response = "pbw_objective_cemetery_spotting_plague_cauldron",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"objective_cemetery_spotting_plague_cauldron"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_objective_cemetery_spotting_plague_cauldron",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_spotting_plague_cauldron",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_cemetery_destroyed_plague_cauldron",
		response = "pbw_objective_cemetery_destroyed_plague_cauldron",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"objective_cemetery_destroyed_plague_cauldron"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_objective_cemetery_destroyed_plague_cauldron",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_destroyed_plague_cauldron",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_cemetery_spotting_victim",
		response = "pbw_objective_cemetery_spotting_victim",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"objective_cemetery_spotting_victim"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_objective_cemetery_spotting_victim",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_spotting_victim",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_cemetery_bringing_down_first_attachment",
		response = "pbw_objective_cemetery_bringing_down_first_attachment",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"objective_cemetery_bringing_down_first_attachment"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_objective_cemetery_bringing_down_first_attachment",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_bringing_down_first_attachment",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_cemetery_bringing_down_second_attachment",
		response = "pbw_objective_cemetery_bringing_down_second_attachment",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"objective_cemetery_bringing_down_second_attachment"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_objective_cemetery_bringing_down_second_attachment",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_bringing_down_second_attachment",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_cemetery_bringing_down_third_attachment",
		response = "pbw_objective_cemetery_bringing_down_third_attachment",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"objective_cemetery_bringing_down_third_attachment"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_objective_cemetery_bringing_down_third_attachment",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_bringing_down_third_attachment",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_cemetery_bringing_down_fourth_attachment",
		response = "pbw_objective_cemetery_bringing_down_fourth_attachment",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"objective_cemetery_bringing_down_fourth_attachment"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_objective_cemetery_bringing_down_fourth_attachment",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_bringing_down_fourth_attachment",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_cemetery_spotting_the_attachements",
		response = "pbw_objective_cemetery_spotting_the_attachements",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"objective_cemetery_spotting_the_attachements"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_objective_cemetery_spotting_the_attachements",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_spotting_the_attachements",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_cemetery_done",
		response = "pbw_objective_cemetery_done",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"objective_cemetery_done"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_objective_cemetery_done",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_cemetery_done",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_skaven_tunnels_reaching_highway",
		response = "pbw_objective_skaven_tunnels_reaching_highway",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"skaven_tunnels_reaching_highway"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_skaven_tunnels_reaching_highway",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_skaven_tunnels_reaching_highway",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_skaven_tunnels_crescendo_starting",
		response = "pbw_objective_skaven_tunnels_crescendo_starting",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"skaven_tunnels_crescendo_starting"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_skaven_tunnels_crescendo_starting",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_skaven_tunnels_crescendo_starting",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_skaven_tunnels_picking_up_explosives",
		response = "pbw_objective_skaven_tunnels_picking_up_explosives",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"skaven_tunnels_picking_up_explosives"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_skaven_tunnels_picking_up_explosives",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_skaven_tunnels_picking_up_explosives",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_skaven_tunnels_lighting_the_fuse",
		response = "pbw_objective_skaven_tunnels_lighting_the_fuse",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"skaven_tunnels_lighting_the_fuse"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_skaven_tunnels_lighting_the_fuse",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_skaven_tunnels_lighting_the_fuse",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_skaven_tunnels_emerging_from_tunnels",
		response = "pbw_objective_skaven_tunnels_emerging_from_tunnels",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"skaven_tunnels_emerging_from_tunnels"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_skaven_tunnels_emerging_from_tunnels",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_skaven_tunnels_emerging_from_tunnels",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_skaven_tunnels_deeper",
		response = "pbw_objective_skaven_tunnels_deeper",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"skaven_tunnels_deeper"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_skaven_tunnels_deeper",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_skaven_tunnels_deeper",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_skaven_tunnels_living_quarters",
		response = "pbw_objective_skaven_tunnels_living_quarters",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"skaven_tunnels_big_tunnels"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_skaven_tunnels_big_tunnels",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_skaven_tunnels_big_tunnels",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_skaven_tunnels_big_tunnels",
		response = "pbw_objective_skaven_tunnels_big_tunnels",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"skaven_tunnels_deeper"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_skaven_tunnels_deeper",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_skaven_tunnels_deeper",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_skaven_tunnels_tunnel_entrance",
		response = "pbw_objective_skaven_tunnels_tunnel_entrance",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"skaven_tunnels_tunnel_entrance"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_skaven_tunnels_tunnel_entrance",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_skaven_tunnels_tunnel_entrance",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_skaven_tunnels_winding_tunnels",
		response = "pbw_objective_skaven_tunnels_winding_tunnels",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"skaven_tunnels_winding_tunnels"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_skaven_tunnels_winding_tunnels",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_skaven_tunnels_winding_tunnels",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_skaven_tunnels_entering_chasm",
		response = "pbw_objective_skaven_tunnels_entering_chasm",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"skaven_tunnels_entering_chasm"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_skaven_tunnels_entering_chasm",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_skaven_tunnels_entering_chasm",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_city_wall_reaching_elevator",
		response = "pbw_objective_city_wall_reaching_elevator",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"city_wall_reaching_elevator"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_city_wall_reaching_elevator",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_city_wall_reaching_elevator",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_city_wall_lets_reach_the_city_gate",
		response = "pbw_objective_city_wall_lets_reach_the_city_gate",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"city_wall_lets_reach_the_city_gate"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_city_wall_lets_reach_the_city_gate",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_city_wall_lets_reach_the_city_gate",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_city_wall_crescendo_starting",
		response = "pbw_objective_city_wall_crescendo_starting",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"city_wall_crescendo_starting"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_city_wall_crescendo_starting",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_city_wall_crescendo_starting",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_city_wall_bell_brought_down",
		response = "pbw_objective_city_wall_bell_brought_down",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"city_wall_bell_brought_down"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_city_wall_bell_brought_down",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_city_wall_bell_brought_down",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_city_wall_bringing_down_first_attachment",
		response = "pbw_objective_city_wall_bringing_down_first_attachment",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"city_wall_bringing_down_first_attachment"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_city_wall_bringing_down_first_attachment",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_city_wall_bringing_down_first_attachment",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_city_wall_bringing_down_second_attachment",
		response = "pbw_objective_city_wall_bringing_down_second_attachment",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"city_wall_bringing_down_second_attachment"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_city_wall_bringing_down_second_attachment",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_city_wall_bringing_down_second_attachment",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_city_wall_bringing_down_third_attachment",
		response = "pbw_objective_city_wall_bringing_down_third_attachment",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"city_wall_bringing_down_third_attachment"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_city_wall_bringing_down_third_attachment",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_city_wall_bringing_down_third_attachment",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_city_wall_bringing_down_fourth_attachment",
		response = "pbw_objective_city_wall_bringing_down_fourth_attachment",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"city_wall_bringing_down_fourth_attachment"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_city_wall_bringing_down_fourth_attachment",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_city_wall_bringing_down_fourth_attachment",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_city_wall_seeing_bell",
		response = "pbw_objective_city_wall_seeing_bell",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"city_wall_seeing_bell"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_city_wall_seeing_bell",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_city_wall_seeing_bell",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_city_wall_door_opened_by_the_falling_bell",
		response = "pbw_objective_city_wall_door_opened_by_the_falling_bell",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"city_wall_door_opened_by_the_falling_bell"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_city_wall_door_opened_by_the_falling_bell",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_city_wall_door_opened_by_the_falling_bell",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_sewers_disgust",
		response = "pbw_objective_sewers_disgust",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"sewers_disgust"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_sewers_disgust",
				OP.TIMEDIFF,
				OP.GT,
				240
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_sewers_disgust",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_objective_sewers_horde_defeated",
		response = "pbw_objective_sewers_horde_defeated",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"sewers_horde_defeated"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_sewers_horde_defeated",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_sewers_horde_defeated",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_objective_sewers_seeing_first_gate",
		response = "pbw_objective_sewers_seeing_first_gate",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"sewers_seeing_first_gate"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_sewers_seeing_first_gate",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_sewers_seeing_first_gate",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_sewers_seeing_last_gate",
		response = "pbw_objective_sewers_seeing_last_gate",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"sewers_seeing_last_gate"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_sewers_seeing_last_gate",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_sewers_seeing_last_gate",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_sewers_crescendo_starting",
		response = "pbw_objective_sewers_crescendo_starting",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"sewers_crescendo_starting"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_sewers_crescendo_starting",
				OP.TIMEDIFF,
				OP.GT,
				2
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_sewers_crescendo_starting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_objective_sewers_entering_sewers",
		response = "pbw_objective_sewers_entering_sewers",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"sewers_entering_sewers"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_sewers_entering_sewers",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_sewers_entering_sewers",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_sewers_door_has_opened",
		response = "pbw_objective_sewers_door_has_opened",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"sewers_door_has_opened"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_sewers_door_has_opened",
				OP.TIMEDIFF,
				OP.GT,
				2
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_sewers_door_has_opened",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_objective_end_boss_reaching_the_tunnels",
		response = "pbw_objective_end_boss_reaching_the_tunnels",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"end_boss_reaching_the_tunnels"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_end_boss_reaching_the_tunnels",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_end_boss_reaching_the_tunnels",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_end_boss_vista",
		response = "pbw_objective_end_boss_vista",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"end_boss_vista"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_end_boss_vista",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_end_boss_vista",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_end_boss_reaching_the_inner_sanctum",
		response = "pbw_objective_end_boss_reaching_the_inner_sanctum",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"end_boss_reaching_the_inner_sanctum"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_end_boss_reaching_the_inner_sanctum",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_end_boss_reaching_the_inner_sanctum",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_end_boss_hitting_bell_repeatedly",
		response = "pbw_objective_end_boss_hitting_bell_repeatedly",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"end_boss_hitting_bell_repeatedly"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_end_boss_hitting_bell_repeatedly",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_end_boss_hitting_bell_repeatedly",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_end_boss_spot_moon",
		response = "pbw_objective_end_boss_spot_moon",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"end_boss_spot_moon"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_end_boss_spot_moon",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_end_boss_spot_moon",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_end_boss_destroy_pillar_first",
		response = "pbw_objective_end_boss_destroy_pillar_first",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"end_boss_destroy_pillar_first"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_end_boss_destroy_pillar_first",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_end_boss_destroy_pillar_first",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_end_boss_destroy_pillar_second",
		response = "pbw_objective_end_boss_destroy_pillar_second",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"end_boss_destroy_pillar_second"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_end_boss_destroy_pillar_second",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_end_boss_destroy_pillar_second",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_end_boss_destroy_pillar_third",
		response = "pbw_objective_end_boss_destroy_pillar_third",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"end_boss_destroy_pillar_third"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_end_boss_destroy_pillar_third",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_end_boss_destroy_pillar_third",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_end_boss_outro",
		response = "pbw_objective_end_boss_outro",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"end_boss_outro"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_end_boss_outro",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_end_boss_outro",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_end_boss_moon_break",
		response = "pbw_objective_end_boss_moon_break",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"end_boss_moon_break"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_end_boss_moon_break",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_end_boss_moon_break",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_end_boss_find_your_way_up",
		response = "pbw_objective_end_boss_find_your_way_up",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"end_boss_find_your_way_up"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_end_boss_find_your_way_up",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_end_boss_find_your_way_up",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_bridge_shanty_town",
		response = "pbw_objective_bridge_shanty_town",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"bridge_shanty_town"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_bridge_shanty_town",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_bridge_shanty_town",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_bridge_crescendo_starting",
		response = "pbw_objective_bridge_crescendo_starting",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"bridge_reaching_the_bridge"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_bridge_reaching_the_bridge",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_bridge_reaching_the_bridge",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_bridge_close_to_the_bridge",
		response = "pbw_objective_bridge_close_to_the_bridge",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"bridge_close_to_the_bridge"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_bridge_close_to_the_bridge",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_bridge_close_to_the_bridge",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_bridge_mission_completed",
		response = "pbw_objective_bridge_mission_completed",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"bridge_mission_completed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_bridge_mission_completed",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_bridge_mission_completed",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_bridge_treasure",
		response = "pbw_objective_bridge_treasure",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"bridge_treasure"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_bridge_treasure",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_bridge_treasure",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_courtyard_crescendo_starting",
		response = "pbw_objective_courtyard_crescendo_starting",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"courtyard_crescendo_starting"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_courtyard_crescendo_starting",
				OP.TIMEDIFF,
				OP.GT,
				15
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_courtyard_crescendo_starting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_objective_courtyard_crescendo_close_to_ending",
		response = "pbw_objective_courtyard_crescendo_close_to_ending",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"courtyard_crescendo_close_to_ending"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_courtyard_crescendo_close_to_ending",
				OP.TIMEDIFF,
				OP.GT,
				15
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_courtyard_crescendo_close_to_ending",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_objective_courtyard_mission_completed",
		response = "pbw_objective_courtyard_mission_completed",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"courtyard_mission_completed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_courtyard_mission_completed",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_courtyard_mission_completed",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_courtyard_well_in_danger",
		response = "pbw_objective_courtyard_well_in_danger",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"courtyard_well_in_danger"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_courtyard_well_in_danger",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_courtyard_well_in_danger",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_objective_courtyard_well_is_lost",
		response = "pbw_objective_courtyard_well_is_lost",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"courtyard_well_is_lost"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_courtyard_well_is_lost",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_courtyard_well_is_lost",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_objective_courtyard_well_targeted",
		response = "pbw_objective_courtyard_well_targeted",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"courtyard_well_targeted"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_courtyard_well_targeted",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_courtyard_well_targeted",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_objective_courtyard_well_safe",
		response = "pbw_objective_courtyard_well_safe",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"courtyard_well_safe"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_courtyard_well_safe",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_courtyard_well_safe",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_objective_courtyard_calm_time",
		response = "pbw_objective_courtyard_calm_time",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"courtyard_calm_time"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_courtyard_calm_time",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_courtyard_calm_time",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_objective_farm_supply_started",
		response = "pbw_objective_farm_supply_started",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"objective_farm_supply_started"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_objective_farm_supply_started",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_farm_supply_started",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_farm_supply_midway",
		response = "pbw_objective_farm_supply_midway",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"objective_farm_supply_midway"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_objective_farm_supply_midway",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_farm_supply_midway",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_farm_supply_successful",
		response = "pbw_objective_farm_supply_successful",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"objective_farm_supply_successful"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_objective_farm_supply_successful",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_farm_supply_successful",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_farm_mission_successful",
		response = "pbw_objective_farm_mission_successful",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"objective_farm_mission_successful"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_objective_farm_mission_successful",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_farm_mission_successful",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_farm_spotting_farm",
		response = "pbw_objective_farm_spotting_farm",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"objective_farm_spotting_farm"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_objective_farm_spotting_farm",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_farm_spotting_farm",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_objective_farm_search_the_area",
		response = "pbw_objective_farm_search_the_area",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"objective_farm_search_the_area"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_objective_farm_search_the_area",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_objective_farm_search_the_area",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_cemetary_intro",
		response = "pbw_cemetary_intro",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"objective_cemetery_intro"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_cemetary_intro",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_cemetary_intro",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_cemetary_intro_b",
		response = "pbw_cemetary_intro_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"cemetary_intro"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_cemetary_intro_b",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_cemetary_intro_b",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_cemetary_intro_c",
		response = "pbw_cemetary_intro_c",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"cemetary_intro_b"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_cemetary_intro_c",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_cemetary_intro_c",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_city_walls_intro",
		response = "pbw_city_walls_intro",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"city_wall_intro"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_city_walls_intro",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_city_walls_intro",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_city_walls_intro_b",
		response = "pbw_city_walls_intro_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"city_walls_intro"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_city_walls_intro_b",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_city_walls_intro_b",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_city_walls_intro_c",
		response = "pbw_city_walls_intro_c",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"city_walls_intro_b"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_city_walls_intro_c",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_city_walls_intro_c",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_magnus_tower_intro",
		response = "pbw_magnus_tower_intro",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"magnus_tower_intro"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_magnus_tower_intro",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_intro",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_magnus_tower_intro_b",
		response = "pbw_magnus_tower_intro_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"magnus_tower_intro"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_magnus_tower_intro_b",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_intro_b",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_magnus_tower_intro_c",
		response = "pbw_magnus_tower_intro_c",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"magnus_tower_intro_b"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_magnus_tower_intro_c",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_magnus_tower_intro_c",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_merchant_district_intro",
		response = "pbw_merchant_district_intro",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"merchant_intro"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_merchant_district_intro",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_merchant_district_intro",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_merchant_district_intro_b",
		response = "pbw_merchant_district_intro_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"merchant_district_intro"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_merchant_district_intro_b",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_merchant_district_intro_b",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_merchant_district_intro_c",
		response = "pbw_merchant_district_intro_c",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"merchant_district_intro_b"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_merchant_district_intro_c",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_merchant_district_intro_c",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_forest_ambush_intro",
		response = "pbw_forest_ambush_intro",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"forest_ambush_intro"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_forest_ambush_intro",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_forest_ambush_intro",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_forest_ambush_intro_b",
		response = "pbw_forest_ambush_intro_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"forest_ambush_intro"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_forest_ambush_intro_b",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_forest_ambush_intro_b",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_forest_ambush_intro_c",
		response = "pbw_forest_ambush_intro_c",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"forest_ambush_intro_b"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_forest_ambush_intro_c",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_forest_ambush_intro_c",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_skaven_tunnels_intro",
		response = "pbw_skaven_tunnels_intro",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"skaven_tunnels_intro"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_skaven_tunnels_intro",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_skaven_tunnels_intro",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_skaven_tunnels_intro_b",
		response = "pbw_skaven_tunnels_intro_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"skaven_tunnels_intro"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_skaven_tunnels_intro_b",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_skaven_tunnels_intro_b",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_skaven_tunnels_intro_c",
		response = "pbw_skaven_tunnels_intro_c",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"skaven_tunnels_intro_b"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_skaven_tunnels_intro_c",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_skaven_tunnels_intro_c",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_end_boss_intro",
		response = "pbw_end_boss_intro",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"end_boss_intro"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_end_boss_intro",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_end_boss_intro",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_end_boss_intro_b",
		response = "pbw_end_boss_intro_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"end_boss_intro"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_end_boss_intro_b",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_end_boss_intro_b",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_end_boss_intro_c",
		response = "pbw_end_boss_intro_c",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"end_boss_intro_b"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_end_boss_intro_c",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_end_boss_intro_c",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_sewers_intro",
		response = "pbw_sewers_intro",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"sewers_intro"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_sewers_intro",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_sewers_intro",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_sewers_intro_b",
		response = "pbw_sewers_intro_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"sewers_intro"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_sewers_intro_b",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_sewers_intro_b",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_sewers_intro_c",
		response = "pbw_sewers_intro_c",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"sewers_intro_b"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_sewers_intro_c",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_sewers_intro_c",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_bridge_intro",
		response = "pbw_bridge_intro",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"bridge_intro"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_bridge_intro",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_bridge_intro",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_bridge_intro_b",
		response = "pbw_bridge_intro_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"bridge_intro"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_bridge_intro_b",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_bridge_intro_b",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_bridge_intro_c",
		response = "pbw_bridge_intro_c",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"bridge_intro_b"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_bridge_intro_c",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_bridge_intro_c",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_courtyard_intro",
		response = "pbw_courtyard_intro",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"courtyard_intro"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_courtyard_intro",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_courtyard_intro",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_courtyard_intro_b",
		response = "pbw_courtyard_intro_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"courtyard_intro"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_courtyard_intro_b",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_courtyard_intro_b",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_courtyard_intro_c",
		response = "pbw_courtyard_intro_c",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"courtyard_intro_b"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_courtyard_intro_c",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_courtyard_intro_c",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_docks_intro",
		response = "pbw_docks_intro",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"docks_intro"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_docks_intro",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_docks_intro",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_docks_intro_b",
		response = "pbw_docks_intro_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"docks_intro"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_docks_intro_b",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_docks_intro_b",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_docks_intro_c",
		response = "pbw_docks_intro_c",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"docks_intro_b"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_docks_intro_c",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_docks_intro_c",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_farm_intro",
		response = "pbw_farm_intro",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"objective_farm_intro"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_farm_intro",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_farm_intro",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_farm_intro_b",
		response = "pbw_farm_intro_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"objective_farm_intro"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_farm_intro_b",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_farm_intro_b",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_farm_intro_c",
		response = "pbw_farm_intro_c",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"farm_intro_b"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_farm_intro_c",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_farm_intro_c",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_wizards_tower_intro",
		response = "pbw_wizards_tower_intro",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"wizards_tower_intro"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_wizards_tower_intro",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_wizards_tower_intro",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pbw_wizards_tower_intro_b",
		response = "pbw_wizards_tower_intro_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"wizards_tower_intro"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_wizards_tower_intro_b",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_wizards_tower_intro_b",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_wizards_tower_intro_c",
		response = "pbw_wizards_tower_intro_c",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"wizards_tower_intro_b"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_wizards_tower_intro_c",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_wizards_tower_intro_c",
				OP.TIMESET
			}
		}
	})
	add_dialogues({
		pbw_targeted_by_ratling = {
			sound_events_n = 7,
			randomize_indexes_n = 0,
			face_animations_n = 7,
			database = "bright_wizard",
			category = "default",
			dialogue_animations_n = 7,
			sound_events = {
				"pbw_targeted_by_ratling_01",
				"pbw_targeted_by_ratling_03",
				"pbw_targeted_by_ratling_04",
				"pbw_targeted_by_ratling_05",
				"pbw_targeted_by_ratling_06",
				"pbw_targeted_by_ratling_07",
				"pbw_targeted_by_ratling_08"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pbw_targeted_by_ratling_01",
				"pbw_targeted_by_ratling_03",
				"pbw_targeted_by_ratling_04",
				"pbw_targeted_by_ratling_05",
				"pbw_targeted_by_ratling_06",
				"pbw_targeted_by_ratling_07",
				"pbw_targeted_by_ratling_08"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_seeing_a_gutter_runner = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "bright_wizard",
			category = "enemy_alerts",
			dialogue_animations_n = 6,
			sound_events = {
				"pbw_gameplay_seeing_a_gutter_runner_01",
				"pbw_gameplay_seeing_a_gutter_runner_02",
				"pbw_gameplay_seeing_a_gutter_runner_03",
				"pbw_gameplay_seeing_a_gutter_runner_04",
				"pbw_gameplay_seeing_a_gutter_runner_05",
				"pbw_gameplay_seeing_a_gutter_runner_06"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_surprise",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt"
			},
			localization_strings = {
				"pbw_gameplay_seeing_a_gutter_runner_01",
				"pbw_gameplay_seeing_a_gutter_runner_02",
				"pbw_gameplay_seeing_a_gutter_runner_03",
				"pbw_gameplay_seeing_a_gutter_runner_04",
				"pbw_gameplay_seeing_a_gutter_runner_05",
				"pbw_gameplay_seeing_a_gutter_runner_06"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_killing_ratling = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "enemy_alerts",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_killing_ratling_01",
				"pbw_gameplay_killing_ratling_02",
				"pbw_gameplay_killing_ratling_03",
				"pbw_gameplay_killing_ratling_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_killing_ratling_01",
				"pbw_gameplay_killing_ratling_02",
				"pbw_gameplay_killing_ratling_03",
				"pbw_gameplay_killing_ratling_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_wood_elf_being_helped_up = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_wood_elf_being_helped_up_02",
				"pbw_gameplay_wood_elf_being_helped_up_03",
				"pbw_gameplay_wood_elf_being_helped_up_01",
				"pbw_gameplay_wood_elf_being_helped_up_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_wood_elf_being_helped_up_02",
				"pbw_gameplay_wood_elf_being_helped_up_03",
				"pbw_gameplay_wood_elf_being_helped_up_01",
				"pbw_gameplay_wood_elf_being_helped_up_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_merchant_district_spotting_ruins = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_merchant_district_spotting_ruins_01",
				"pbw_objective_merchant_district_spotting_ruins_02",
				"pbw_objective_merchant_district_spotting_ruins_03",
				"pbw_objective_merchant_district_spotting_ruins_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_merchant_district_spotting_ruins_01",
				"pbw_objective_merchant_district_spotting_ruins_02",
				"pbw_objective_merchant_district_spotting_ruins_03",
				"pbw_objective_merchant_district_spotting_ruins_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_merchant_district_delivered_first_supply = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_merchant_district_delivered_first_supply_01",
				"pbw_objective_merchant_district_delivered_first_supply_02",
				"pbw_objective_merchant_district_delivered_first_supply_03",
				"pbw_objective_merchant_district_delivered_first_supply_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_merchant_district_delivered_first_supply_01",
				"pbw_objective_merchant_district_delivered_first_supply_02",
				"pbw_objective_merchant_district_delivered_first_supply_03",
				"pbw_objective_merchant_district_delivered_first_supply_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_end_boss_destroy_pillar_second = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_end_boss_destroy_pillar_second_01",
				"pbw_objective_end_boss_destroy_pillar_second_02",
				"pbw_objective_end_boss_destroy_pillar_second_03",
				"pbw_objective_end_boss_destroy_pillar_second_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_end_boss_destroy_pillar_second_01",
				"pbw_objective_end_boss_destroy_pillar_second_02",
				"pbw_objective_end_boss_destroy_pillar_second_03",
				"pbw_objective_end_boss_destroy_pillar_second_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_magnus_tower_seeing_tavern = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_objective_magnus_tower_seeing_tavern_01",
				[2.0] = "pbw_objective_magnus_tower_seeing_tavern_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_sadness"
			},
			localization_strings = {
				[1.0] = "pbw_objective_magnus_tower_seeing_tavern_01",
				[2.0] = "pbw_objective_magnus_tower_seeing_tavern_02"
			},
			randomize_indexes = {}
		},
		pbw_objective_courtyard_well_safe = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_courtyard_well_safe_01",
				"pbw_objective_courtyard_well_safe_02",
				"pbw_objective_courtyard_well_safe_03",
				"pbw_objective_courtyard_well_safe_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_courtyard_well_safe_01",
				"pbw_objective_courtyard_well_safe_02",
				"pbw_objective_courtyard_well_safe_03",
				"pbw_objective_courtyard_well_safe_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_skaven_tunnels_big_tunnels = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_skaven_tunnels_big_tunnels_01",
				"pbw_objective_skaven_tunnels_big_tunnels_02",
				"pbw_objective_skaven_tunnels_big_tunnels_03",
				"pbw_objective_skaven_tunnels_big_tunnels_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_skaven_tunnels_big_tunnels_01",
				"pbw_objective_skaven_tunnels_big_tunnels_02",
				"pbw_objective_skaven_tunnels_big_tunnels_03",
				"pbw_objective_skaven_tunnels_big_tunnels_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_heard_wood_elf_in_trouble = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "player_alerts",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_heard_wood_elf_in_trouble_01",
				"pbw_gameplay_heard_wood_elf_in_trouble_02",
				"pbw_gameplay_heard_wood_elf_in_trouble_03",
				"pbw_gameplay_heard_wood_elf_in_trouble_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pbw_gameplay_heard_wood_elf_in_trouble_01",
				"pbw_gameplay_heard_wood_elf_in_trouble_02",
				"pbw_gameplay_heard_wood_elf_in_trouble_03",
				"pbw_gameplay_heard_wood_elf_in_trouble_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_wizards_tower_skaven_attacking_wards = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_wizards_tower_skaven_attacking_wards_01",
				"pbw_objective_wizards_tower_skaven_attacking_wards_02",
				"pbw_objective_wizards_tower_skaven_attacking_wards_03",
				"pbw_objective_wizards_tower_skaven_attacking_wards_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_wizards_tower_skaven_attacking_wards_01",
				"pbw_objective_wizards_tower_skaven_attacking_wards_02",
				"pbw_objective_wizards_tower_skaven_attacking_wards_03",
				"pbw_objective_wizards_tower_skaven_attacking_wards_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_seeing_a_skaven_patrol_stormvermin = {
			sound_events_n = 7,
			randomize_indexes_n = 0,
			face_animations_n = 7,
			database = "bright_wizard",
			category = "enemy_alerts",
			dialogue_animations_n = 7,
			sound_events = {
				"pbw_gameplay_seeing_a_skaven_patrol_stormvermin_01",
				"pbw_gameplay_seeing_a_skaven_patrol_stormvermin_02",
				"pbw_gameplay_seeing_a_skaven_patrol_stormvermin_03",
				"pbw_gameplay_seeing_a_skaven_patrol_stormvermin_04",
				"pbw_gameplay_seeing_a_skaven_patrol_stormvermin_05",
				"pbw_gameplay_seeing_a_skaven_patrol_stormvermin_06",
				"pbw_gameplay_seeing_a_skaven_patrol_stormvermin_07"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_concerned",
				"face_concerned",
				"face_contempt",
				"face_nervous",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pbw_gameplay_seeing_a_skaven_patrol_stormvermin_01",
				"pbw_gameplay_seeing_a_skaven_patrol_stormvermin_02",
				"pbw_gameplay_seeing_a_skaven_patrol_stormvermin_03",
				"pbw_gameplay_seeing_a_skaven_patrol_stormvermin_04",
				"pbw_gameplay_seeing_a_skaven_patrol_stormvermin_05",
				"pbw_gameplay_seeing_a_skaven_patrol_stormvermin_06",
				"pbw_gameplay_seeing_a_skaven_patrol_stormvermin_07"
			},
			randomize_indexes = {}
		},
		pbw_objective_city_wall_bringing_down_fourth_attachment = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_city_wall_bringing_down_fourth_attachment_01",
				"pbw_objective_city_wall_bringing_down_fourth_attachment_02",
				"pbw_objective_city_wall_bringing_down_fourth_attachment_03",
				"pbw_objective_city_wall_bringing_down_fourth_attachment_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_city_wall_bringing_down_fourth_attachment_01",
				"pbw_objective_city_wall_bringing_down_fourth_attachment_02",
				"pbw_objective_city_wall_bringing_down_fourth_attachment_03",
				"pbw_objective_city_wall_bringing_down_fourth_attachment_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_skaven_tunnels_tunnel_entrance = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_skaven_tunnels_tunnel_entrance_01",
				"pbw_objective_skaven_tunnels_tunnel_entrance_02",
				"pbw_objective_skaven_tunnels_tunnel_entrance_03",
				"pbw_objective_skaven_tunnels_tunnel_entrance_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_skaven_tunnels_tunnel_entrance_01",
				"pbw_objective_skaven_tunnels_tunnel_entrance_02",
				"pbw_objective_skaven_tunnels_tunnel_entrance_03",
				"pbw_objective_skaven_tunnels_tunnel_entrance_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_forest_ambush_back_to_ferry = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_forest_ambush_back_to_ferry_01",
				"pbw_objective_forest_ambush_back_to_ferry_02",
				"pbw_objective_forest_ambush_back_to_ferry_03",
				"pbw_objective_forest_ambush_back_to_ferry_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_forest_ambush_back_to_ferry_01",
				"pbw_objective_forest_ambush_back_to_ferry_02",
				"pbw_objective_forest_ambush_back_to_ferry_03",
				"pbw_objective_forest_ambush_back_to_ferry_04"
			},
			randomize_indexes = {}
		},
		pbw_wizards_tower_intro_b = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_wizards_tower_intro_b_01",
				[2.0] = "pbw_wizards_tower_intro_b_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_wizards_tower_intro_b_01",
				[2.0] = "pbw_wizards_tower_intro_b_02"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_spots_ammo = {
			sound_events_n = 5,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "bright_wizard",
			category = "seen_items",
			dialogue_animations_n = 5,
			sound_events = {
				"pbw_gameplay_spots_ammo_01",
				"pbw_gameplay_spots_ammo_02",
				"pbw_gameplay_spots_ammo_03",
				"pbw_gameplay_spots_ammo_04",
				"pbw_gameplay_spots_ammo_05"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pbw_gameplay_spots_ammo_01",
				"pbw_gameplay_spots_ammo_02",
				"pbw_gameplay_spots_ammo_03",
				"pbw_gameplay_spots_ammo_04",
				"pbw_gameplay_spots_ammo_05"
			},
			randomize_indexes = {}
		},
		pbw_objective_merchant_district_delivered_most_supply = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_merchant_district_delivered_most_supply_01",
				"pbw_objective_merchant_district_delivered_most_supply_02",
				"pbw_objective_merchant_district_delivered_most_supply_03",
				"pbw_objective_merchant_district_delivered_most_supply_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_merchant_district_delivered_most_supply_01",
				"pbw_objective_merchant_district_delivered_most_supply_02",
				"pbw_objective_merchant_district_delivered_most_supply_03",
				"pbw_objective_merchant_district_delivered_most_supply_04"
			},
			randomize_indexes = {}
		},
		pbw_end_boss_intro_c = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_end_boss_intro_c_01",
				[2.0] = "pbw_end_boss_intro_c_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_end_boss_intro_c_01",
				[2.0] = "pbw_end_boss_intro_c_02"
			},
			randomize_indexes = {}
		},
		pbw_objective_skaven_tunnels_emerging_from_tunnels = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_skaven_tunnels_emerging_from_tunnels_01",
				"pbw_objective_skaven_tunnels_emerging_from_tunnels_02",
				"pbw_objective_skaven_tunnels_emerging_from_tunnels_03",
				"pbw_objective_skaven_tunnels_emerging_from_tunnels_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_skaven_tunnels_emerging_from_tunnels_01",
				"pbw_objective_skaven_tunnels_emerging_from_tunnels_02",
				"pbw_objective_skaven_tunnels_emerging_from_tunnels_03",
				"pbw_objective_skaven_tunnels_emerging_from_tunnels_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_dwarf_ranger_low_on_health = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_dwarf_ranger_low_on_health_01",
				"pbw_gameplay_dwarf_ranger_low_on_health_02",
				"pbw_gameplay_dwarf_ranger_low_on_health_03",
				"pbw_gameplay_dwarf_ranger_low_on_health_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pbw_gameplay_dwarf_ranger_low_on_health_01",
				"pbw_gameplay_dwarf_ranger_low_on_health_02",
				"pbw_gameplay_dwarf_ranger_low_on_health_03",
				"pbw_gameplay_dwarf_ranger_low_on_health_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_docks_second_warehouse_inside = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_docks_second_warehouse_inside_01",
				"pbw_objective_docks_second_warehouse_inside_02",
				"pbw_objective_docks_second_warehouse_inside_03",
				"pbw_objective_docks_second_warehouse_inside_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_docks_second_warehouse_inside_01",
				"pbw_objective_docks_second_warehouse_inside_02",
				"pbw_objective_docks_second_warehouse_inside_03",
				"pbw_objective_docks_second_warehouse_inside_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_cemetery_spotting_mausoleum = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_cemetery_spotting_mausoleum_01",
				"pbw_objective_cemetery_spotting_mausoleum_02",
				"pbw_objective_cemetery_spotting_mausoleum_03",
				"pbw_objective_cemetery_spotting_mausoleum_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_cemetery_spotting_mausoleum_01",
				"pbw_objective_cemetery_spotting_mausoleum_02",
				"pbw_objective_cemetery_spotting_mausoleum_03",
				"pbw_objective_cemetery_spotting_mausoleum_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_merchant_district_through_gardens = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_objective_merchant_district_through_gardens_01",
				[2.0] = "pbw_objective_merchant_district_through_gardens_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_objective_merchant_district_through_gardens_01",
				[2.0] = "pbw_objective_merchant_district_through_gardens_02"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_spots_health = {
			sound_events_n = 5,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "bright_wizard",
			category = "seen_items",
			dialogue_animations_n = 5,
			sound_events = {
				"pbw_gameplay_spots_health_01",
				"pbw_gameplay_spots_health_02",
				"pbw_gameplay_spots_health_03",
				"pbw_gameplay_spots_health_04",
				"pbw_gameplay_spots_health_05"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pbw_gameplay_spots_health_01",
				"pbw_gameplay_spots_health_02",
				"pbw_gameplay_spots_health_03",
				"pbw_gameplay_spots_health_04",
				"pbw_gameplay_spots_health_05"
			},
			randomize_indexes = {}
		},
		pbw_objective_correct_path_stairs_down = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "default",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_correct_path_stairs_down_01",
				"pbw_objective_correct_path_stairs_down_02",
				"pbw_objective_correct_path_stairs_down_03",
				"pbw_objective_correct_path_stairs_down_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_correct_path_stairs_down_01",
				"pbw_objective_correct_path_stairs_down_02",
				"pbw_objective_correct_path_stairs_down_03",
				"pbw_objective_correct_path_stairs_down_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_cemetery_spotting_crypt_maze = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_cemetery_spotting_crypt_maze_01",
				"pbw_objective_cemetery_spotting_crypt_maze_02",
				"pbw_objective_cemetery_spotting_crypt_maze_03",
				"pbw_objective_cemetery_spotting_crypt_maze_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_cemetery_spotting_crypt_maze_01",
				"pbw_objective_cemetery_spotting_crypt_maze_02",
				"pbw_objective_cemetery_spotting_crypt_maze_03",
				"pbw_objective_cemetery_spotting_crypt_maze_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_forest_ambush_doomwheel_objective_done = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_forest_ambush_doomwheel_objective_done_01",
				"pbw_objective_forest_ambush_doomwheel_objective_done_02",
				"pbw_objective_forest_ambush_doomwheel_objective_done_03",
				"pbw_objective_forest_ambush_doomwheel_objective_done_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_forest_ambush_doomwheel_objective_done_01",
				"pbw_objective_forest_ambush_doomwheel_objective_done_02",
				"pbw_objective_forest_ambush_doomwheel_objective_done_03",
				"pbw_objective_forest_ambush_doomwheel_objective_done_04"
			},
			randomize_indexes = {}
		},
		pbw_forest_ambush_intro_c = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_forest_ambush_intro_c_01",
				[2.0] = "pbw_forest_ambush_intro_c_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_forest_ambush_intro_c_01",
				[2.0] = "pbw_forest_ambush_intro_c_02"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_casual_quotes_city_01 = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "casual_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_gameplay_casual_quotes_05",
				[2.0] = "pbw_gameplay_casual_quotes_07"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_gameplay_casual_quotes_05",
				[2.0] = "pbw_gameplay_casual_quotes_07"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_throwing_bomb = {
			sound_events_n = 5,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 5,
			sound_events = {
				"pbw_gameplay_throwing_bomb_01",
				"pbw_gameplay_throwing_bomb_02",
				"pbw_gameplay_throwing_bomb_03",
				"pbw_gameplay_throwing_bomb_04",
				"pbw_gameplay_throwing_bomb_05"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_throwing_bomb_01",
				"pbw_gameplay_throwing_bomb_02",
				"pbw_gameplay_throwing_bomb_03",
				"pbw_gameplay_throwing_bomb_04",
				"pbw_gameplay_throwing_bomb_05"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_helped_by_empire_soldier = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "help_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_helped_by_empire_soldier_01",
				"pbw_gameplay_helped_by_empire_soldier_02",
				"pbw_gameplay_helped_by_empire_soldier_03",
				"pbw_gameplay_helped_by_empire_soldier_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pbw_gameplay_helped_by_empire_soldier_01",
				"pbw_gameplay_helped_by_empire_soldier_02",
				"pbw_gameplay_helped_by_empire_soldier_03",
				"pbw_gameplay_helped_by_empire_soldier_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_magnus_tower_elevator_opens_door = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_magnus_tower_elevator_opens_door_01",
				"pbw_objective_magnus_tower_elevator_opens_door_02",
				"pbw_objective_magnus_tower_elevator_opens_door_03",
				"pbw_objective_magnus_tower_elevator_opens_door_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_magnus_tower_elevator_opens_door_01",
				"pbw_objective_magnus_tower_elevator_opens_door_02",
				"pbw_objective_magnus_tower_elevator_opens_door_03",
				"pbw_objective_magnus_tower_elevator_opens_door_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_docks_second_warehouse_escape = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_docks_second_warehouse_escape_01",
				"pbw_objective_docks_second_warehouse_escape_02",
				"pbw_objective_docks_second_warehouse_escape_03",
				"pbw_objective_docks_second_warehouse_escape_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_docks_second_warehouse_escape_01",
				"pbw_objective_docks_second_warehouse_escape_02",
				"pbw_objective_docks_second_warehouse_escape_03",
				"pbw_objective_docks_second_warehouse_escape_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_city_wall_lets_reach_the_city_gate = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_city_wall_lets_reach_the_city_gate_01",
				"pbw_objective_city_wall_lets_reach_the_city_gate_02",
				"pbw_objective_city_wall_lets_reach_the_city_gate_03",
				"pbw_objective_city_wall_lets_reach_the_city_gate_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_city_wall_lets_reach_the_city_gate_01",
				"pbw_objective_city_wall_lets_reach_the_city_gate_02",
				"pbw_objective_city_wall_lets_reach_the_city_gate_03",
				"pbw_objective_city_wall_lets_reach_the_city_gate_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_sewers_seeing_last_gate = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_sewers_seeing_last_gate_01",
				"pbw_objective_sewers_seeing_last_gate_02",
				"pbw_objective_sewers_seeing_last_gate_03",
				"pbw_objective_sewers_seeing_last_gate_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_sewers_seeing_last_gate_01",
				"pbw_objective_sewers_seeing_last_gate_02",
				"pbw_objective_sewers_seeing_last_gate_03",
				"pbw_objective_sewers_seeing_last_gate_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_magnus_tower_finding_explosives = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_magnus_tower_finding_explosives_01",
				"pbw_objective_magnus_tower_finding_explosives_02",
				"pbw_objective_magnus_tower_finding_explosives_03",
				"pbw_objective_magnus_tower_finding_explosives_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pbw_objective_magnus_tower_finding_explosives_01",
				"pbw_objective_magnus_tower_finding_explosives_02",
				"pbw_objective_magnus_tower_finding_explosives_03",
				"pbw_objective_magnus_tower_finding_explosives_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_docks_first_warehouse_door = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_docks_first_warehouse_door_01",
				"pbw_objective_docks_first_warehouse_door_02",
				"pbw_objective_docks_first_warehouse_door_03",
				"pbw_objective_docks_first_warehouse_door_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_docks_first_warehouse_door_01",
				"pbw_objective_docks_first_warehouse_door_02",
				"pbw_objective_docks_first_warehouse_door_03",
				"pbw_objective_docks_first_warehouse_door_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_magnus_tower_reaching_top_of_magnus_tower = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_magnus_tower_reaching_top_of_magnus_tower_01",
				"pbw_objective_magnus_tower_reaching_top_of_magnus_tower_02",
				"pbw_objective_magnus_tower_reaching_top_of_magnus_tower_03",
				"pbw_objective_magnus_tower_reaching_top_of_magnus_tower_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"pbw_objective_magnus_tower_reaching_top_of_magnus_tower_01",
				"pbw_objective_magnus_tower_reaching_top_of_magnus_tower_02",
				"pbw_objective_magnus_tower_reaching_top_of_magnus_tower_03",
				"pbw_objective_magnus_tower_reaching_top_of_magnus_tower_04"
			},
			randomize_indexes = {}
		},
		pbw_magnus_tower_intro_c = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_magnus_tower_intro_c_01",
				[2.0] = "pbw_magnus_tower_intro_c_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_magnus_tower_intro_c_01",
				[2.0] = "pbw_magnus_tower_intro_c_02"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_killing_globadier = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "enemy_alerts",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_killing_globadier_01",
				"pbw_gameplay_killing_globadier_02",
				"pbw_gameplay_killing_globadier_03",
				"pbw_gameplay_killing_globadier_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_killing_globadier_01",
				"pbw_gameplay_killing_globadier_02",
				"pbw_gameplay_killing_globadier_03",
				"pbw_gameplay_killing_globadier_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_dwarf_ranger_on_a_frenzy = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_dwarf_ranger_on_a_frenzy_01",
				"pbw_gameplay_dwarf_ranger_on_a_frenzy_02",
				"pbw_gameplay_dwarf_ranger_on_a_frenzy_03",
				"pbw_gameplay_dwarf_ranger_on_a_frenzy_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_dwarf_ranger_on_a_frenzy_01",
				"pbw_gameplay_dwarf_ranger_on_a_frenzy_02",
				"pbw_gameplay_dwarf_ranger_on_a_frenzy_03",
				"pbw_gameplay_dwarf_ranger_on_a_frenzy_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_special_enemy_kill_ranged = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 8,
			sound_events = {
				"pbw_gameplay_special_enemy_kill_ranged_01",
				"pbw_gameplay_special_enemy_kill_ranged_02",
				"pbw_gameplay_special_enemy_kill_ranged_03",
				"pbw_gameplay_special_enemy_kill_ranged_04",
				"pbw_gameplay_special_enemy_kill_ranged_05",
				"pbw_gameplay_special_enemy_kill_ranged_06",
				"pbw_gameplay_special_enemy_kill_ranged_07",
				"pbw_gameplay_special_enemy_kill_ranged_08"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_special_enemy_kill_ranged_01",
				"pbw_gameplay_special_enemy_kill_ranged_02",
				"pbw_gameplay_special_enemy_kill_ranged_03",
				"pbw_gameplay_special_enemy_kill_ranged_04",
				"pbw_gameplay_special_enemy_kill_ranged_05",
				"pbw_gameplay_special_enemy_kill_ranged_06",
				"pbw_gameplay_special_enemy_kill_ranged_07",
				"pbw_gameplay_special_enemy_kill_ranged_08"
			},
			randomize_indexes = {}
		},
		pbw_objective_wizards_tower_open_door = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_wizards_tower_open_door_01",
				"pbw_objective_wizards_tower_open_door_02",
				"pbw_objective_wizards_tower_open_door_03",
				"pbw_objective_wizards_tower_open_door_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_wizards_tower_open_door_01",
				"pbw_objective_wizards_tower_open_door_02",
				"pbw_objective_wizards_tower_open_door_03",
				"pbw_objective_wizards_tower_open_door_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_seeing_a_skaven_slaver = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "bright_wizard",
			category = "enemy_alerts",
			dialogue_animations_n = 8,
			sound_events = {
				"pbw_gameplay_seeing_a_skaven_slaver_01",
				"pbw_gameplay_seeing_a_skaven_slaver_02",
				"pbw_gameplay_seeing_a_skaven_slaver_07",
				"pbw_gameplay_seeing_a_skaven_slaver_03",
				"pbw_gameplay_seeing_a_skaven_slaver_04",
				"pbw_gameplay_seeing_a_skaven_slaver_05",
				"pbw_gameplay_seeing_a_skaven_slaver_06",
				"pbw_gameplay_seeing_a_skaven_slaver_08"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pbw_gameplay_seeing_a_skaven_slaver_01",
				"pbw_gameplay_seeing_a_skaven_slaver_02",
				"pbw_gameplay_seeing_a_skaven_slaver_07",
				"pbw_gameplay_seeing_a_skaven_slaver_03",
				"pbw_gameplay_seeing_a_skaven_slaver_04",
				"pbw_gameplay_seeing_a_skaven_slaver_05",
				"pbw_gameplay_seeing_a_skaven_slaver_06",
				"pbw_gameplay_seeing_a_skaven_slaver_08"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_armoured_enemy_empire_soldier = {
			sound_events_n = 3,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 3,
			sound_events = {
				"pbw_gameplay_armoured_enemy_empire_soldier_01",
				"pbw_gameplay_armoured_enemy_empire_soldier_02",
				"pbw_gameplay_armoured_enemy_empire_soldier_03"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_armoured_enemy_empire_soldier_01",
				"pbw_gameplay_armoured_enemy_empire_soldier_02",
				"pbw_gameplay_armoured_enemy_empire_soldier_03"
			},
			randomize_indexes = {}
		},
		pbw_objective_wizards_tower_generic_surprise_second = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_wizards_tower_generic_surprise_second_01",
				"pbw_objective_wizards_tower_generic_surprise_second_02",
				"pbw_objective_wizards_tower_generic_surprise_second_03",
				"pbw_objective_wizards_tower_generic_surprise_second_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_wizards_tower_generic_surprise_second_01",
				"pbw_objective_wizards_tower_generic_surprise_second_02",
				"pbw_objective_wizards_tower_generic_surprise_second_03",
				"pbw_objective_wizards_tower_generic_surprise_second_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_magnus_tower_view_tower = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_magnus_tower_view_tower_01",
				"pbw_objective_magnus_tower_view_tower_02",
				"pbw_objective_magnus_tower_view_tower_03",
				"pbw_objective_magnus_tower_view_tower_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pbw_objective_magnus_tower_view_tower_01",
				"pbw_objective_magnus_tower_view_tower_02",
				"pbw_objective_magnus_tower_view_tower_03",
				"pbw_objective_magnus_tower_view_tower_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_taking_heavy_damage = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "bright_wizard",
			category = "player_alerts",
			dialogue_animations_n = 6,
			sound_events = {
				"pbw_gameplay_taking_heavy_damage_01",
				"pbw_gameplay_taking_heavy_damage_02",
				"pbw_gameplay_taking_heavy_damage_03",
				"pbw_gameplay_taking_heavy_damage_04",
				"pbw_gameplay_taking_heavy_damage_05",
				"pbw_gameplay_taking_heavy_damage_06"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_talk"
			},
			face_animations = {
				"face_pain",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_pain"
			},
			localization_strings = {
				"pbw_gameplay_taking_heavy_damage_01",
				"pbw_gameplay_taking_heavy_damage_02",
				"pbw_gameplay_taking_heavy_damage_03",
				"pbw_gameplay_taking_heavy_damage_04",
				"pbw_gameplay_taking_heavy_damage_05",
				"pbw_gameplay_taking_heavy_damage_06"
			},
			randomize_indexes = {}
		},
		pbw_objective_city_wall_bell_brought_down = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_city_wall_bell_brought_down_01",
				"pbw_objective_city_wall_bell_brought_down_02",
				"pbw_objective_city_wall_bell_brought_down_03",
				"pbw_objective_city_wall_bell_brought_down_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_city_wall_bell_brought_down_01",
				"pbw_objective_city_wall_bell_brought_down_02",
				"pbw_objective_city_wall_bell_brought_down_03",
				"pbw_objective_city_wall_bell_brought_down_04"
			},
			randomize_indexes = {}
		},
		pbw_farm_intro_b = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_farm_intro_b_01",
				[2.0] = "pbw_farm_intro_b_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_farm_intro_b_01",
				[2.0] = "pbw_farm_intro_b_02"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_armoured_enemy_wood_elf = {
			sound_events_n = 3,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 3,
			sound_events = {
				"pbw_gameplay_armoured_enemy_wood_elf_01",
				"pbw_gameplay_armoured_enemy_wood_elf_02",
				"pbw_gameplay_armoured_enemy_wood_elf_03"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_armoured_enemy_wood_elf_01",
				"pbw_gameplay_armoured_enemy_wood_elf_02",
				"pbw_gameplay_armoured_enemy_wood_elf_03"
			},
			randomize_indexes = {}
		},
		pbw_objective_forest_ambush_reaching_skaven_camp = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_forest_ambush_reaching_skaven_camp_01",
				"pbw_objective_forest_ambush_reaching_skaven_camp_02",
				"pbw_objective_forest_ambush_reaching_skaven_camp_03",
				"pbw_objective_forest_ambush_reaching_skaven_camp_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_forest_ambush_reaching_skaven_camp_01",
				"pbw_objective_forest_ambush_reaching_skaven_camp_02",
				"pbw_objective_forest_ambush_reaching_skaven_camp_03",
				"pbw_objective_forest_ambush_reaching_skaven_camp_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_correct_path_up = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "default",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_correct_path_up_01",
				"pbw_objective_correct_path_up_02",
				"pbw_objective_correct_path_up_03",
				"pbw_objective_correct_path_up_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_correct_path_up_01",
				"pbw_objective_correct_path_up_02",
				"pbw_objective_correct_path_up_03",
				"pbw_objective_correct_path_up_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_docks_explosion = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_objective_docks_explosion_01",
				[2.0] = "pbw_objective_docks_explosion_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_objective_docks_explosion_01",
				[2.0] = "pbw_objective_docks_explosion_02"
			},
			randomize_indexes = {}
		},
		pbw_objective_forest_ambush_boat_arrives = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_forest_ambush_boat_arrives_01",
				"pbw_objective_forest_ambush_boat_arrives_02",
				"pbw_objective_forest_ambush_boat_arrives_03",
				"pbw_objective_forest_ambush_boat_arrives_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_forest_ambush_boat_arrives_01",
				"pbw_objective_forest_ambush_boat_arrives_02",
				"pbw_objective_forest_ambush_boat_arrives_03",
				"pbw_objective_forest_ambush_boat_arrives_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_skaven_tunnels_lighting_the_fuse = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_skaven_tunnels_lighting_the_fuse_01",
				"pbw_objective_skaven_tunnels_lighting_the_fuse_02",
				"pbw_objective_skaven_tunnels_lighting_the_fuse_03",
				"pbw_objective_skaven_tunnels_lighting_the_fuse_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_skaven_tunnels_lighting_the_fuse_01",
				"pbw_objective_skaven_tunnels_lighting_the_fuse_02",
				"pbw_objective_skaven_tunnels_lighting_the_fuse_03",
				"pbw_objective_skaven_tunnels_lighting_the_fuse_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_friendly_fire_dwarf_ranger = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_friendly_fire_dwarf_ranger_01",
				"pbw_gameplay_friendly_fire_dwarf_ranger_02",
				"pbw_gameplay_friendly_fire_dwarf_ranger_03",
				"pbw_gameplay_friendly_fire_dwarf_ranger_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"pbw_gameplay_friendly_fire_dwarf_ranger_01",
				"pbw_gameplay_friendly_fire_dwarf_ranger_02",
				"pbw_gameplay_friendly_fire_dwarf_ranger_03",
				"pbw_gameplay_friendly_fire_dwarf_ranger_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_cemetery_spotting_plague_cauldron = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_cemetery_spotting_plague_cauldron_01",
				"pbw_objective_cemetery_spotting_plague_cauldron_02",
				"pbw_objective_cemetery_spotting_plague_cauldron_03",
				"pbw_objective_cemetery_spotting_plague_cauldron_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_cemetery_spotting_plague_cauldron_01",
				"pbw_objective_cemetery_spotting_plague_cauldron_02",
				"pbw_objective_cemetery_spotting_plague_cauldron_03",
				"pbw_objective_cemetery_spotting_plague_cauldron_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_heard_dwarf_ranger_in_trouble = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "player_alerts",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_heard_dwarf_ranger_in_trouble_01",
				"pbw_gameplay_heard_dwarf_ranger_in_trouble_02",
				"pbw_gameplay_heard_dwarf_ranger_in_trouble_03",
				"pbw_gameplay_heard_dwarf_ranger_in_trouble_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_heard_dwarf_ranger_in_trouble_01",
				"pbw_gameplay_heard_dwarf_ranger_in_trouble_02",
				"pbw_gameplay_heard_dwarf_ranger_in_trouble_03",
				"pbw_gameplay_heard_dwarf_ranger_in_trouble_04"
			},
			randomize_indexes = {}
		},
		pbw_bridge_intro = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_bridge_intro_a_01",
				[2.0] = "pbw_bridge_intro_a_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_bridge_intro_a_01",
				[2.0] = "pbw_bridge_intro_a_02"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_healing_empire_soldier = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_healing_empire_soldier_01",
				"pbw_gameplay_healing_empire_soldier_02",
				"pbw_gameplay_healing_empire_soldier_03",
				"pbw_gameplay_healing_empire_soldier_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_healing_empire_soldier_01",
				"pbw_gameplay_healing_empire_soldier_02",
				"pbw_gameplay_healing_empire_soldier_03",
				"pbw_gameplay_healing_empire_soldier_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_magnus_tower_seeing_gate = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_magnus_tower_seeing_gate_01",
				"pbw_objective_magnus_tower_seeing_gate_02",
				"pbw_objective_magnus_tower_seeing_gate_03",
				"pbw_objective_magnus_tower_seeing_gate_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pbw_objective_magnus_tower_seeing_gate_01",
				"pbw_objective_magnus_tower_seeing_gate_02",
				"pbw_objective_magnus_tower_seeing_gate_03",
				"pbw_objective_magnus_tower_seeing_gate_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_docks_leave = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_docks_leave_01",
				"pbw_objective_docks_leave_02",
				"pbw_objective_docks_leave_03",
				"pbw_objective_docks_leave_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_docks_leave_01",
				"pbw_objective_docks_leave_02",
				"pbw_objective_docks_leave_03",
				"pbw_objective_docks_leave_04"
			},
			randomize_indexes = {}
		},
		pbw_curse = {
			sound_events_n = 12,
			randomize_indexes_n = 0,
			face_animations_n = 12,
			database = "bright_wizard",
			category = "casual_talk",
			dialogue_animations_n = 12,
			sound_events = {
				"pbw_curse_01",
				"pbw_curse_02",
				"pbw_curse_03",
				"pbw_curse_04",
				"pbw_curse_05",
				"pbw_curse_06",
				"pbw_curse_07",
				"pbw_curse_08",
				"pbw_curse_09",
				"pbw_curse_10",
				"pbw_curse_11",
				"pbw_curse_12"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"pbw_curse_01",
				"pbw_curse_02",
				"pbw_curse_03",
				"pbw_curse_04",
				"pbw_curse_05",
				"pbw_curse_06",
				"pbw_curse_07",
				"pbw_curse_08",
				"pbw_curse_09",
				"pbw_curse_10",
				"pbw_curse_11",
				"pbw_curse_12"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_wood_elf_grabbed = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "bright_wizard",
			category = "player_alerts",
			dialogue_animations_n = 6,
			sound_events = {
				"pbw_gameplay_wood_elf_grabbed_01",
				"pbw_gameplay_wood_elf_grabbed_03",
				"pbw_gameplay_wood_elf_grabbed_05",
				"pbw_gameplay_wood_elf_grabbed_02",
				"pbw_gameplay_wood_elf_grabbed_04",
				"pbw_gameplay_wood_elf_grabbed_06"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_wood_elf_grabbed_01",
				"pbw_gameplay_wood_elf_grabbed_03",
				"pbw_gameplay_wood_elf_grabbed_05",
				"pbw_gameplay_wood_elf_grabbed_02",
				"pbw_gameplay_wood_elf_grabbed_04",
				"pbw_gameplay_wood_elf_grabbed_06"
			},
			randomize_indexes = {}
		},
		pbw_objective_cemetery_spotting_skaven_tunnels = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_cemetery_spotting_skaven_tunnels_01",
				"pbw_objective_cemetery_spotting_skaven_tunnels_02",
				"pbw_objective_cemetery_spotting_skaven_tunnels_03",
				"pbw_objective_cemetery_spotting_skaven_tunnels_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_cemetery_spotting_skaven_tunnels_01",
				"pbw_objective_cemetery_spotting_skaven_tunnels_02",
				"pbw_objective_cemetery_spotting_skaven_tunnels_03",
				"pbw_objective_cemetery_spotting_skaven_tunnels_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_wizards_tower_generic_surprise = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_wizards_tower_generic_surprise_01",
				"pbw_objective_wizards_tower_generic_surprise_02",
				"pbw_objective_wizards_tower_generic_surprise_03",
				"pbw_objective_wizards_tower_generic_surprise_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_wizards_tower_generic_surprise_01",
				"pbw_objective_wizards_tower_generic_surprise_02",
				"pbw_objective_wizards_tower_generic_surprise_03",
				"pbw_objective_wizards_tower_generic_surprise_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_courtyard_well_in_danger = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_courtyard_well_in_danger_01",
				"pbw_objective_courtyard_well_in_danger_02",
				"pbw_objective_courtyard_well_in_danger_03",
				"pbw_objective_courtyard_well_in_danger_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_courtyard_well_in_danger_01",
				"pbw_objective_courtyard_well_in_danger_02",
				"pbw_objective_courtyard_well_in_danger_03",
				"pbw_objective_courtyard_well_in_danger_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_docks_second_warehouse_door = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_docks_second_warehouse_door_01",
				"pbw_objective_docks_second_warehouse_door_02",
				"pbw_objective_docks_second_warehouse_door_03",
				"pbw_objective_docks_second_warehouse_door_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_docks_second_warehouse_door_01",
				"pbw_objective_docks_second_warehouse_door_02",
				"pbw_objective_docks_second_warehouse_door_03",
				"pbw_objective_docks_second_warehouse_door_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_witch_hunter_low_on_health = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_witch_hunter_low_on_health_01",
				"pbw_gameplay_witch_hunter_low_on_health_02",
				"pbw_gameplay_witch_hunter_low_on_health_03",
				"pbw_gameplay_witch_hunter_low_on_health_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pbw_gameplay_witch_hunter_low_on_health_01",
				"pbw_gameplay_witch_hunter_low_on_health_02",
				"pbw_gameplay_witch_hunter_low_on_health_03",
				"pbw_gameplay_witch_hunter_low_on_health_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_end_boss_spot_moon = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_end_boss_spot_moon_01",
				"pbw_objective_end_boss_spot_moon_02",
				"pbw_objective_end_boss_spot_moon_03",
				"pbw_objective_end_boss_spot_moon_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_end_boss_spot_moon_01",
				"pbw_objective_end_boss_spot_moon_02",
				"pbw_objective_end_boss_spot_moon_03",
				"pbw_objective_end_boss_spot_moon_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_low_on_health = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 8,
			sound_events = {
				"pbw_gameplay_low_on_health_01",
				"pbw_gameplay_low_on_health_02",
				"pbw_gameplay_low_on_health_03",
				"pbw_gameplay_low_on_health_04",
				"pbw_gameplay_low_on_health_05",
				"pbw_gameplay_low_on_health_06",
				"pbw_gameplay_low_on_health_07",
				"pbw_gameplay_low_on_health_08"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_exhausted",
				"face_exhausted",
				"face_exhausted",
				"face_exhausted",
				"face_exhausted",
				"face_exhausted",
				"face_exhausted",
				"face_exhausted"
			},
			localization_strings = {
				"pbw_gameplay_low_on_health_01",
				"pbw_gameplay_low_on_health_02",
				"pbw_gameplay_low_on_health_03",
				"pbw_gameplay_low_on_health_04",
				"pbw_gameplay_low_on_health_05",
				"pbw_gameplay_low_on_health_06",
				"pbw_gameplay_low_on_health_07",
				"pbw_gameplay_low_on_health_08"
			},
			randomize_indexes = {}
		},
		pbw_objective_sewers_door_has_opened = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_sewers_door_has_opened_01",
				"pbw_objective_sewers_door_has_opened_02",
				"pbw_objective_sewers_door_has_opened_03",
				"pbw_objective_sewers_door_has_opened_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_sewers_door_has_opened_01",
				"pbw_objective_sewers_door_has_opened_02",
				"pbw_objective_sewers_door_has_opened_03",
				"pbw_objective_sewers_door_has_opened_04"
			},
			randomize_indexes = {}
		},
		pbw_skaven_tunnels_intro_c = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_skaven_tunnels_intro_c_01",
				[2.0] = "pbw_skaven_tunnels_intro_c_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_skaven_tunnels_intro_c_01",
				[2.0] = "pbw_skaven_tunnels_intro_c_02"
			},
			randomize_indexes = {}
		},
		pbw_objective_forest_ambush_finding_explosives = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_forest_ambush_finding_explosives_01",
				"pbw_objective_forest_ambush_finding_explosives_02",
				"pbw_objective_forest_ambush_finding_explosives_03",
				"pbw_objective_forest_ambush_finding_explosives_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_forest_ambush_finding_explosives_01",
				"pbw_objective_forest_ambush_finding_explosives_02",
				"pbw_objective_forest_ambush_finding_explosives_03",
				"pbw_objective_forest_ambush_finding_explosives_04"
			},
			randomize_indexes = {}
		},
		pbw_city_walls_intro = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_city_walls_intro_a_01",
				[2.0] = "pbw_city_walls_intro_a_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_city_walls_intro_a_01",
				[2.0] = "pbw_city_walls_intro_a_02"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_empire_soldier_on_a_frenzy = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_empire_soldier_on_a_frenzy_01",
				"pbw_gameplay_empire_soldier_on_a_frenzy_02",
				"pbw_gameplay_empire_soldier_on_a_frenzy_03",
				"pbw_gameplay_empire_soldier_on_a_frenzy_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_empire_soldier_on_a_frenzy_01",
				"pbw_gameplay_empire_soldier_on_a_frenzy_02",
				"pbw_gameplay_empire_soldier_on_a_frenzy_03",
				"pbw_gameplay_empire_soldier_on_a_frenzy_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_empire_soldier_grabbed = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "bright_wizard",
			category = "player_alerts",
			dialogue_animations_n = 6,
			sound_events = {
				"pbw_gameplay_empire_soldier_grabbed_01",
				"pbw_gameplay_empire_soldier_grabbed_02",
				"pbw_gameplay_empire_soldier_grabbed_03",
				"pbw_gameplay_empire_soldier_grabbed_04",
				"pbw_gameplay_empire_soldier_grabbed_05",
				"pbw_gameplay_empire_soldier_grabbed_06"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_empire_soldier_grabbed_01",
				"pbw_gameplay_empire_soldier_grabbed_02",
				"pbw_gameplay_empire_soldier_grabbed_03",
				"pbw_gameplay_empire_soldier_grabbed_04",
				"pbw_gameplay_empire_soldier_grabbed_05",
				"pbw_gameplay_empire_soldier_grabbed_06"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_empire_soldier_dead = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "player_alerts",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_empire_soldier_dead_01",
				"pbw_gameplay_empire_soldier_dead_02",
				"pbw_gameplay_empire_soldier_dead_03",
				"pbw_gameplay_empire_soldier_dead_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_empire_soldier_dead_01",
				"pbw_gameplay_empire_soldier_dead_02",
				"pbw_gameplay_empire_soldier_dead_03",
				"pbw_gameplay_empire_soldier_dead_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_correct_path_down = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "default",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_correct_path_down_01",
				"pbw_objective_correct_path_down_02",
				"pbw_objective_correct_path_down_03",
				"pbw_objective_correct_path_down_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_correct_path_down_01",
				"pbw_objective_correct_path_down_02",
				"pbw_objective_correct_path_down_03",
				"pbw_objective_correct_path_down_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_farm_mission_successful = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_farm_mission_successful_01",
				"pbw_objective_farm_mission_successful_02",
				"pbw_objective_farm_mission_successful_03",
				"pbw_objective_farm_mission_successful_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_farm_mission_successful_01",
				"pbw_objective_farm_mission_successful_02",
				"pbw_objective_farm_mission_successful_03",
				"pbw_objective_farm_mission_successful_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_magnus_tower_over_rooftops = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_objective_magnus_tower_over_rooftops_01",
				[2.0] = "pbw_objective_magnus_tower_over_rooftops_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_fear",
				[2.0] = "face_fear"
			},
			localization_strings = {
				[1.0] = "pbw_objective_magnus_tower_over_rooftops_01",
				[2.0] = "pbw_objective_magnus_tower_over_rooftops_02"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_spots_potion = {
			sound_events_n = 5,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "bright_wizard",
			category = "seen_items",
			dialogue_animations_n = 5,
			sound_events = {
				"pbw_gameplay_spots_potion_01",
				"pbw_gameplay_spots_potion_02",
				"pbw_gameplay_spots_potion_03",
				"pbw_gameplay_spots_potion_04",
				"pbw_gameplay_spots_potion_05"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pbw_gameplay_spots_potion_01",
				"pbw_gameplay_spots_potion_02",
				"pbw_gameplay_spots_potion_03",
				"pbw_gameplay_spots_potion_04",
				"pbw_gameplay_spots_potion_05"
			},
			randomize_indexes = {}
		},
		pbw_objective_cemetery_bringing_down_fourth_attachment = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_cemetery_bringing_down_fourth_attachment_01",
				"pbw_objective_cemetery_bringing_down_fourth_attachment_02",
				"pbw_objective_cemetery_bringing_down_fourth_attachment_03",
				"pbw_objective_cemetery_bringing_down_fourth_attachment_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_cemetery_bringing_down_fourth_attachment_01",
				"pbw_objective_cemetery_bringing_down_fourth_attachment_02",
				"pbw_objective_cemetery_bringing_down_fourth_attachment_03",
				"pbw_objective_cemetery_bringing_down_fourth_attachment_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_dead_body = {
			sound_events_n = 5,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "bright_wizard",
			category = "default",
			dialogue_animations_n = 5,
			sound_events = {
				"pbw_gameplay_dead_body_01",
				"pbw_gameplay_dead_body_02",
				"pbw_gameplay_dead_body_03",
				"pbw_gameplay_dead_body_04",
				"pbw_gameplay_dead_body_05"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_dead_body_01",
				"pbw_gameplay_dead_body_02",
				"pbw_gameplay_dead_body_03",
				"pbw_gameplay_dead_body_04",
				"pbw_gameplay_dead_body_05"
			},
			randomize_indexes = {}
		},
		pbw_cemetary_intro = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_cemetary_intro_a_01",
				[2.0] = "pbw_cemetary_intro_a_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_cemetary_intro_a_01",
				[2.0] = "pbw_cemetary_intro_a_02"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_hit_by_goo = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "bright_wizard",
			category = "player_alerts",
			dialogue_animations_n = 6,
			sound_events = {
				"pbw_gameplay_hit_by_goo_01",
				"pbw_gameplay_hit_by_goo_02",
				"pbw_gameplay_hit_by_goo_03",
				"pbw_gameplay_hit_by_goo_04",
				"pbw_gameplay_hit_by_goo_05",
				"pbw_gameplay_hit_by_goo_06"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_surprise",
				"face_surprise",
				"face_surprise",
				"face_surprise",
				"face_surprise",
				"face_surprise"
			},
			localization_strings = {
				"pbw_gameplay_hit_by_goo_01",
				"pbw_gameplay_hit_by_goo_02",
				"pbw_gameplay_hit_by_goo_03",
				"pbw_gameplay_hit_by_goo_04",
				"pbw_gameplay_hit_by_goo_05",
				"pbw_gameplay_hit_by_goo_06"
			},
			randomize_indexes = {}
		},
		pbw_objective_correct_path_bridge = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "default",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_correct_path_bridge_01",
				"pbw_objective_correct_path_bridge_14",
				"pbw_objective_correct_path_bridge_15",
				"pbw_objective_correct_path_bridge_16"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_correct_path_bridge_01",
				"pbw_objective_correct_path_bridge_14",
				"pbw_objective_correct_path_bridge_15",
				"pbw_objective_correct_path_bridge_16"
			},
			randomize_indexes = {}
		},
		pbw_objective_wizards_tower_library = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_wizards_tower_library_01",
				"pbw_objective_wizards_tower_library_02",
				"pbw_objective_wizards_tower_library_03",
				"pbw_objective_wizards_tower_library_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_wizards_tower_library_01",
				"pbw_objective_wizards_tower_library_02",
				"pbw_objective_wizards_tower_library_03",
				"pbw_objective_wizards_tower_library_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_merchant_district_delivered_quarter_supply = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_merchant_district_delivered_quarter_supply_01",
				"pbw_objective_merchant_district_delivered_quarter_supply_02",
				"pbw_objective_merchant_district_delivered_quarter_supply_03",
				"pbw_objective_merchant_district_delivered_quarter_supply_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_merchant_district_delivered_quarter_supply_01",
				"pbw_objective_merchant_district_delivered_quarter_supply_02",
				"pbw_objective_merchant_district_delivered_quarter_supply_03",
				"pbw_objective_merchant_district_delivered_quarter_supply_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_heard_empire_soldier_in_trouble = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "player_alerts",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_heard_empire_soldier_in_trouble_01",
				"pbw_gameplay_heard_empire_soldier_in_trouble_02",
				"pbw_gameplay_heard_empire_soldier_in_trouble_03",
				"pbw_gameplay_heard_empire_soldier_in_trouble_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_heard_empire_soldier_in_trouble_01",
				"pbw_gameplay_heard_empire_soldier_in_trouble_02",
				"pbw_gameplay_heard_empire_soldier_in_trouble_03",
				"pbw_gameplay_heard_empire_soldier_in_trouble_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_cemetery_spotting_graveyard = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_cemetery_spotting_graveyard_01",
				"pbw_objective_cemetery_spotting_graveyard_02",
				"pbw_objective_cemetery_spotting_graveyard_03",
				"pbw_objective_cemetery_spotting_graveyard_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_cemetery_spotting_graveyard_01",
				"pbw_objective_cemetery_spotting_graveyard_02",
				"pbw_objective_cemetery_spotting_graveyard_03",
				"pbw_objective_cemetery_spotting_graveyard_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_merchant_district_apothecary = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_objective_merchant_district_apothecary_01",
				[2.0] = "pbw_objective_merchant_district_apothecary_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_objective_merchant_district_apothecary_01",
				[2.0] = "pbw_objective_merchant_district_apothecary_02"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_healing_wood_elf = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_healing_wood_elf_01",
				"pbw_gameplay_healing_wood_elf_02",
				"pbw_gameplay_healing_wood_elf_03",
				"pbw_gameplay_healing_wood_elf_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_healing_wood_elf_01",
				"pbw_gameplay_healing_wood_elf_02",
				"pbw_gameplay_healing_wood_elf_03",
				"pbw_gameplay_healing_wood_elf_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_magnus_tower_seeing_tower = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_objective_magnus_tower_seeing_tower_01",
				[2.0] = "pbw_objective_magnus_tower_seeing_tower_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_objective_magnus_tower_seeing_tower_01",
				[2.0] = "pbw_objective_magnus_tower_seeing_tower_02"
			},
			randomize_indexes = {}
		},
		pbw_objective_cemetery_spotting_plague_pyre = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_cemetery_spotting_plague_pyre_01",
				"pbw_objective_cemetery_spotting_plague_pyre_02",
				"pbw_objective_cemetery_spotting_plague_pyre_03",
				"pbw_objective_cemetery_spotting_plague_pyre_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_cemetery_spotting_plague_pyre_01",
				"pbw_objective_cemetery_spotting_plague_pyre_02",
				"pbw_objective_cemetery_spotting_plague_pyre_03",
				"pbw_objective_cemetery_spotting_plague_pyre_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_achieved_all_but_one_goal = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "default",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_achieved_all_but_one_goal_01",
				"pbw_objective_achieved_all_but_one_goal_02",
				"pbw_objective_achieved_all_but_one_goal_03",
				"pbw_objective_achieved_all_but_one_goal_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_achieved_all_but_one_goal_01",
				"pbw_objective_achieved_all_but_one_goal_02",
				"pbw_objective_achieved_all_but_one_goal_03",
				"pbw_objective_achieved_all_but_one_goal_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_empire_soldier_being_helped_up = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_empire_soldier_being_helped_up_01",
				"pbw_gameplay_empire_soldier_being_helped_up_02",
				"pbw_gameplay_empire_soldier_being_helped_up_03",
				"pbw_gameplay_empire_soldier_being_helped_up_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_empire_soldier_being_helped_up_01",
				"pbw_gameplay_empire_soldier_being_helped_up_02",
				"pbw_gameplay_empire_soldier_being_helped_up_03",
				"pbw_gameplay_empire_soldier_being_helped_up_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_merchant_district_crescendo_starting = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_merchant_district_crescendo_starting_01",
				"pbw_objective_merchant_district_crescendo_starting_02",
				"pbw_objective_merchant_district_crescendo_starting_03",
				"pbw_objective_merchant_district_crescendo_starting_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_merchant_district_crescendo_starting_01",
				"pbw_objective_merchant_district_crescendo_starting_02",
				"pbw_objective_merchant_district_crescendo_starting_03",
				"pbw_objective_merchant_district_crescendo_starting_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_wood_elf_low_on_health = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_wood_elf_low_on_health_01",
				"pbw_gameplay_wood_elf_low_on_health_02",
				"pbw_gameplay_wood_elf_low_on_health_03",
				"pbw_gameplay_wood_elf_low_on_health_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_shout"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pbw_gameplay_wood_elf_low_on_health_01",
				"pbw_gameplay_wood_elf_low_on_health_02",
				"pbw_gameplay_wood_elf_low_on_health_03",
				"pbw_gameplay_wood_elf_low_on_health_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_wizards_tower_mission_successful = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_wizards_tower_mission_successful_01",
				"pbw_objective_wizards_tower_mission_successful_02",
				"pbw_objective_wizards_tower_mission_successful_03",
				"pbw_objective_wizards_tower_mission_successful_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_wizards_tower_mission_successful_01",
				"pbw_objective_wizards_tower_mission_successful_02",
				"pbw_objective_wizards_tower_mission_successful_03",
				"pbw_objective_wizards_tower_mission_successful_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_killing_lootrat = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "enemy_alerts",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_killing_lootrat_01",
				"pbw_gameplay_killing_lootrat_02",
				"pbw_gameplay_killing_lootrat_03",
				"pbw_gameplay_killing_lootrat_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_killing_lootrat_01",
				"pbw_gameplay_killing_lootrat_02",
				"pbw_gameplay_killing_lootrat_03",
				"pbw_gameplay_killing_lootrat_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_courtyard_crescendo_close_to_ending = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_courtyard_crescendo_close_to_ending_01",
				"pbw_objective_courtyard_crescendo_close_to_ending_02",
				"pbw_objective_courtyard_crescendo_close_to_ending_03",
				"pbw_objective_courtyard_crescendo_close_to_ending_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_courtyard_crescendo_close_to_ending_01",
				"pbw_objective_courtyard_crescendo_close_to_ending_02",
				"pbw_objective_courtyard_crescendo_close_to_ending_03",
				"pbw_objective_courtyard_crescendo_close_to_ending_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_end_boss_destroy_pillar_third = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_end_boss_destroy_pillar_third_01",
				"pbw_objective_end_boss_destroy_pillar_third_02",
				"pbw_objective_end_boss_destroy_pillar_third_03",
				"pbw_objective_end_boss_destroy_pillar_third_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_end_boss_destroy_pillar_third_01",
				"pbw_objective_end_boss_destroy_pillar_third_02",
				"pbw_objective_end_boss_destroy_pillar_third_03",
				"pbw_objective_end_boss_destroy_pillar_third_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_merchant_district_approaching_timelimit = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_merchant_district_approaching_timelimit_01",
				"pbw_objective_merchant_district_approaching_timelimit_02",
				"pbw_objective_merchant_district_approaching_timelimit_03",
				"pbw_objective_merchant_district_approaching_timelimit_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_merchant_district_approaching_timelimit_01",
				"pbw_objective_merchant_district_approaching_timelimit_02",
				"pbw_objective_merchant_district_approaching_timelimit_03",
				"pbw_objective_merchant_district_approaching_timelimit_04"
			},
			randomize_indexes = {}
		},
		pbw_wizards_tower_intro_c = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_wizards_tower_intro_c_01",
				[2.0] = "pbw_wizards_tower_intro_c_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_wizards_tower_intro_c_01",
				[2.0] = "pbw_wizards_tower_intro_c_02"
			},
			randomize_indexes = {}
		},
		pbw_objective_cemetery_through_crypt_c = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_cemetery_through_crypt_c_01",
				"pbw_objective_cemetery_through_crypt_c_02",
				"pbw_objective_cemetery_through_crypt_c_03",
				"pbw_objective_cemetery_through_crypt_c_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_cemetery_through_crypt_c_01",
				"pbw_objective_cemetery_through_crypt_c_02",
				"pbw_objective_cemetery_through_crypt_c_03",
				"pbw_objective_cemetery_through_crypt_c_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_skaven_tunnels_entering_chasm = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_skaven_tunnels_entering_chasm_01",
				"pbw_objective_skaven_tunnels_entering_chasm_02",
				"pbw_objective_skaven_tunnels_entering_chasm_03",
				"pbw_objective_skaven_tunnels_entering_chasm_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_skaven_tunnels_entering_chasm_01",
				"pbw_objective_skaven_tunnels_entering_chasm_02",
				"pbw_objective_skaven_tunnels_entering_chasm_03",
				"pbw_objective_skaven_tunnels_entering_chasm_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_nearing_objective_deadline = {
			sound_events_n = 3,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "bright_wizard",
			category = "default",
			dialogue_animations_n = 3,
			sound_events = {
				"pbw_objective_nearing_objective_deadline_01",
				"pbw_objective_nearing_objective_deadline_02",
				"pbw_objective_nearing_objective_deadline_03"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_nearing_objective_deadline_01",
				"pbw_objective_nearing_objective_deadline_02",
				"pbw_objective_nearing_objective_deadline_03"
			},
			randomize_indexes = {}
		},
		pbw_objective_picking_up_grimoire = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "default",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_picking_up_grimoire_01",
				"pbw_objective_picking_up_grimoire_02",
				"pbw_objective_picking_up_grimoire_03",
				"pbw_objective_picking_up_grimoire_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_picking_up_grimoire_01",
				"pbw_objective_picking_up_grimoire_02",
				"pbw_objective_picking_up_grimoire_03",
				"pbw_objective_picking_up_grimoire_04"
			},
			randomize_indexes = {}
		},
		pbw_bridge_intro_b = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_bridge_intro_b_01",
				[2.0] = "pbw_bridge_intro_b_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_bridge_intro_b_01",
				[2.0] = "pbw_bridge_intro_b_02"
			},
			randomize_indexes = {}
		},
		pbw_objective_wizards_tower_commenting_paintings = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_wizards_tower_commenting_paintings_01",
				"pbw_objective_wizards_tower_commenting_paintings_02",
				"pbw_objective_wizards_tower_commenting_paintings_03",
				"pbw_objective_wizards_tower_commenting_paintings_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_wizards_tower_commenting_paintings_01",
				"pbw_objective_wizards_tower_commenting_paintings_02",
				"pbw_objective_wizards_tower_commenting_paintings_03",
				"pbw_objective_wizards_tower_commenting_paintings_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_merchant_district_spotting_market = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_merchant_district_spotting_market_01",
				"pbw_objective_merchant_district_spotting_market_02",
				"pbw_objective_merchant_district_spotting_market_03",
				"pbw_objective_merchant_district_spotting_market_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_merchant_district_spotting_market_01",
				"pbw_objective_merchant_district_spotting_market_02",
				"pbw_objective_merchant_district_spotting_market_03",
				"pbw_objective_merchant_district_spotting_market_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_seeing_a_skaven_ratling_gun = {
			sound_events_n = 7,
			randomize_indexes_n = 0,
			face_animations_n = 7,
			database = "bright_wizard",
			category = "enemy_alerts",
			dialogue_animations_n = 7,
			sound_events = {
				"pbw_gameplay_seeing_a_skaven_ratling_gun_01",
				"pbw_gameplay_seeing_a_skaven_ratling_gun_02",
				"pbw_gameplay_seeing_a_skaven_ratling_gun_03",
				"pbw_gameplay_seeing_a_skaven_ratling_gun_04",
				"pbw_gameplay_seeing_a_skaven_ratling_gun_05",
				"pbw_gameplay_seeing_a_skaven_ratling_gun_06",
				"pbw_gameplay_seeing_a_skaven_ratling_gun_07"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pbw_gameplay_seeing_a_skaven_ratling_gun_01",
				"pbw_gameplay_seeing_a_skaven_ratling_gun_02",
				"pbw_gameplay_seeing_a_skaven_ratling_gun_03",
				"pbw_gameplay_seeing_a_skaven_ratling_gun_04",
				"pbw_gameplay_seeing_a_skaven_ratling_gun_05",
				"pbw_gameplay_seeing_a_skaven_ratling_gun_06",
				"pbw_gameplay_seeing_a_skaven_ratling_gun_07"
			},
			randomize_indexes = {}
		},
		pbw_objective_magnus_tower_entering_guardhouse = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_magnus_tower_entering_guardhouse_01",
				"pbw_objective_magnus_tower_entering_guardhouse_02",
				"pbw_objective_magnus_tower_entering_guardhouse_03",
				"pbw_objective_magnus_tower_entering_guardhouse_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pbw_objective_magnus_tower_entering_guardhouse_01",
				"pbw_objective_magnus_tower_entering_guardhouse_02",
				"pbw_objective_magnus_tower_entering_guardhouse_03",
				"pbw_objective_magnus_tower_entering_guardhouse_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_incoming_skaven_rat_ogre = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "bright_wizard",
			category = "enemy_alerts",
			dialogue_animations_n = 8,
			sound_events = {
				"pbw_gameplay_incoming_skaven_rat_ogre_01",
				"pbw_gameplay_incoming_skaven_rat_ogre_05",
				"pbw_gameplay_incoming_skaven_rat_ogre_06",
				"pbw_gameplay_incoming_skaven_rat_ogre_02",
				"pbw_gameplay_incoming_skaven_rat_ogre_03",
				"pbw_gameplay_incoming_skaven_rat_ogre_04",
				"pbw_gameplay_incoming_skaven_rat_ogre_07",
				"pbw_gameplay_incoming_skaven_rat_ogre_08"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pbw_gameplay_incoming_skaven_rat_ogre_01",
				"pbw_gameplay_incoming_skaven_rat_ogre_05",
				"pbw_gameplay_incoming_skaven_rat_ogre_06",
				"pbw_gameplay_incoming_skaven_rat_ogre_02",
				"pbw_gameplay_incoming_skaven_rat_ogre_03",
				"pbw_gameplay_incoming_skaven_rat_ogre_04",
				"pbw_gameplay_incoming_skaven_rat_ogre_07",
				"pbw_gameplay_incoming_skaven_rat_ogre_08"
			},
			randomize_indexes = {}
		},
		pbw_objective_city_wall_door_opened_by_the_falling_bell = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_city_wall_door_opened_by_the_falling_bell_01",
				"pbw_objective_city_wall_door_opened_by_the_falling_bell_02",
				"pbw_objective_city_wall_door_opened_by_the_falling_bell_03",
				"pbw_objective_city_wall_door_opened_by_the_falling_bell_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_city_wall_door_opened_by_the_falling_bell_01",
				"pbw_objective_city_wall_door_opened_by_the_falling_bell_02",
				"pbw_objective_city_wall_door_opened_by_the_falling_bell_03",
				"pbw_objective_city_wall_door_opened_by_the_falling_bell_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_magnus_tower_arriving_late = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_objective_magnus_tower_arriving_late_01",
				[2.0] = "pbw_objective_magnus_tower_arriving_late_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_happy"
			},
			localization_strings = {
				[1.0] = "pbw_objective_magnus_tower_arriving_late_01",
				[2.0] = "pbw_objective_magnus_tower_arriving_late_02"
			},
			randomize_indexes = {}
		},
		pbw_objective_city_wall_crescendo_starting = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_city_wall_crescendo_starting_01",
				"pbw_objective_city_wall_crescendo_starting_02",
				"pbw_objective_city_wall_crescendo_starting_03",
				"pbw_objective_city_wall_crescendo_starting_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_city_wall_crescendo_starting_01",
				"pbw_objective_city_wall_crescendo_starting_02",
				"pbw_objective_city_wall_crescendo_starting_03",
				"pbw_objective_city_wall_crescendo_starting_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_end_boss_reaching_the_tunnels = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_end_boss_reaching_the_tunnels_01",
				"pbw_objective_end_boss_reaching_the_tunnels_02",
				"pbw_objective_end_boss_reaching_the_tunnels_03",
				"pbw_objective_end_boss_reaching_the_tunnels_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_end_boss_reaching_the_tunnels_01",
				"pbw_objective_end_boss_reaching_the_tunnels_02",
				"pbw_objective_end_boss_reaching_the_tunnels_03",
				"pbw_objective_end_boss_reaching_the_tunnels_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_healing_dwarf_ranger = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_healing_dwarf_ranger_01",
				"pbw_gameplay_healing_dwarf_ranger_02",
				"pbw_gameplay_healing_dwarf_ranger_03",
				"pbw_gameplay_healing_dwarf_ranger_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_healing_dwarf_ranger_01",
				"pbw_gameplay_healing_dwarf_ranger_02",
				"pbw_gameplay_healing_dwarf_ranger_03",
				"pbw_gameplay_healing_dwarf_ranger_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_dropping_grimoire = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "default",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_dropping_grimoire_01",
				"pbw_objective_dropping_grimoire_02",
				"pbw_objective_dropping_grimoire_03",
				"pbw_objective_dropping_grimoire_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_dropping_grimoire_01",
				"pbw_objective_dropping_grimoire_02",
				"pbw_objective_dropping_grimoire_03",
				"pbw_objective_dropping_grimoire_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_sewers_crescendo_starting = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_sewers_crescendo_starting_01",
				"pbw_objective_sewers_crescendo_starting_02",
				"pbw_objective_sewers_crescendo_starting_03",
				"pbw_objective_sewers_crescendo_starting_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_sewers_crescendo_starting_01",
				"pbw_objective_sewers_crescendo_starting_02",
				"pbw_objective_sewers_crescendo_starting_03",
				"pbw_objective_sewers_crescendo_starting_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_correct_path_stairs_up = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "default",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_correct_path_stairs_up_01",
				"pbw_objective_correct_path_stairs_up_02",
				"pbw_objective_correct_path_stairs_up_03",
				"pbw_objective_correct_path_stairs_up_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_correct_path_stairs_up_01",
				"pbw_objective_correct_path_stairs_up_02",
				"pbw_objective_correct_path_stairs_up_03",
				"pbw_objective_correct_path_stairs_up_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_forest_ambush_spotting_watch_tower = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_forest_ambush_spotting_watch_tower_01",
				"pbw_objective_forest_ambush_spotting_watch_tower_02",
				"pbw_objective_forest_ambush_spotting_watch_tower_03",
				"pbw_objective_forest_ambush_spotting_watch_tower_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_forest_ambush_spotting_watch_tower_01",
				"pbw_objective_forest_ambush_spotting_watch_tower_02",
				"pbw_objective_forest_ambush_spotting_watch_tower_03",
				"pbw_objective_forest_ambush_spotting_watch_tower_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_bridge_mission_completed = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_bridge_mission_completed_01",
				"pbw_objective_bridge_mission_completed_02",
				"pbw_objective_bridge_mission_completed_03",
				"pbw_objective_bridge_mission_completed_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_bridge_mission_completed_01",
				"pbw_objective_bridge_mission_completed_02",
				"pbw_objective_bridge_mission_completed_03",
				"pbw_objective_bridge_mission_completed_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_cemetery_bringing_down_third_attachment = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_cemetery_bringing_down_third_attachment_01",
				"pbw_objective_cemetery_bringing_down_third_attachment_02",
				"pbw_objective_cemetery_bringing_down_third_attachment_03",
				"pbw_objective_cemetery_bringing_down_third_attachment_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_cemetery_bringing_down_third_attachment_01",
				"pbw_objective_cemetery_bringing_down_third_attachment_02",
				"pbw_objective_cemetery_bringing_down_third_attachment_03",
				"pbw_objective_cemetery_bringing_down_third_attachment_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_sewers_disgust = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_sewers_disgust_01",
				"pbw_objective_sewers_disgust_02",
				"pbw_objective_sewers_disgust_03",
				"pbw_objective_sewers_disgust_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_sewers_disgust_01",
				"pbw_objective_sewers_disgust_02",
				"pbw_objective_sewers_disgust_03",
				"pbw_objective_sewers_disgust_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_skaven_tunnels_deeper = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_skaven_tunnels_deeper_01",
				"pbw_objective_skaven_tunnels_deeper_02",
				"pbw_objective_skaven_tunnels_deeper_03",
				"pbw_objective_skaven_tunnels_deeper_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_skaven_tunnels_deeper_01",
				"pbw_objective_skaven_tunnels_deeper_02",
				"pbw_objective_skaven_tunnels_deeper_03",
				"pbw_objective_skaven_tunnels_deeper_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_bridge_treasure = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_objective_bridge_treasure_01",
				[2.0] = "pbw_objective_bridge_treasure_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_objective_bridge_treasure_01",
				[2.0] = "pbw_objective_bridge_treasure_02"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_killing_gutterrunner = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "enemy_alerts",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_killing_gutterrunner_01",
				"pbw_gameplay_killing_gutterrunner_02",
				"pbw_gameplay_killing_gutterrunner_03",
				"pbw_gameplay_killing_gutterrunner_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_killing_gutterrunner_01",
				"pbw_gameplay_killing_gutterrunner_02",
				"pbw_gameplay_killing_gutterrunner_03",
				"pbw_gameplay_killing_gutterrunner_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_self_heal = {
			sound_events_n = 5,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 5,
			sound_events = {
				"pbw_gameplay_self_heal_01",
				"pbw_gameplay_self_heal_02",
				"pbw_gameplay_self_heal_03",
				"pbw_gameplay_self_heal_04",
				"pbw_gameplay_self_heal_05"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_exhausted",
				"face_exhausted",
				"face_exhausted",
				"face_exhausted",
				"face_exhausted"
			},
			localization_strings = {
				"pbw_gameplay_self_heal_01",
				"pbw_gameplay_self_heal_02",
				"pbw_gameplay_self_heal_03",
				"pbw_gameplay_self_heal_04",
				"pbw_gameplay_self_heal_05"
			},
			randomize_indexes = {}
		},
		pbw_objective_end_boss_reaching_the_inner_sanctum = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_end_boss_reaching_the_inner_sanctum_01",
				"pbw_objective_end_boss_reaching_the_inner_sanctum_02",
				"pbw_objective_end_boss_reaching_the_inner_sanctum_03",
				"pbw_objective_end_boss_reaching_the_inner_sanctum_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_end_boss_reaching_the_inner_sanctum_01",
				"pbw_objective_end_boss_reaching_the_inner_sanctum_02",
				"pbw_objective_end_boss_reaching_the_inner_sanctum_03",
				"pbw_objective_end_boss_reaching_the_inner_sanctum_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_magnus_tower_up_stairs = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_objective_magnus_tower_up_stairs_01",
				[2.0] = "pbw_objective_magnus_tower_up_stairs_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_pain",
				[2.0] = "face_pain"
			},
			localization_strings = {
				[1.0] = "pbw_objective_magnus_tower_up_stairs_01",
				[2.0] = "pbw_objective_magnus_tower_up_stairs_02"
			},
			randomize_indexes = {}
		},
		pbw_wizards_tower_intro = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_wizards_tower_intro_a_01",
				[2.0] = "pbw_wizards_tower_intro_a_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_wizards_tower_intro_a_01",
				[2.0] = "pbw_wizards_tower_intro_a_02"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_dwarf_ranger_grabbed = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "bright_wizard",
			category = "player_alerts",
			dialogue_animations_n = 6,
			sound_events = {
				"pbw_gameplay_dwarf_ranger_grabbed_01",
				"pbw_gameplay_dwarf_ranger_grabbed_02",
				"pbw_gameplay_dwarf_ranger_grabbed_03",
				"pbw_gameplay_dwarf_ranger_grabbed_04",
				"pbw_gameplay_dwarf_ranger_grabbed_05",
				"pbw_gameplay_dwarf_ranger_grabbed_06"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_dwarf_ranger_grabbed_01",
				"pbw_gameplay_dwarf_ranger_grabbed_02",
				"pbw_gameplay_dwarf_ranger_grabbed_03",
				"pbw_gameplay_dwarf_ranger_grabbed_04",
				"pbw_gameplay_dwarf_ranger_grabbed_05",
				"pbw_gameplay_dwarf_ranger_grabbed_06"
			},
			randomize_indexes = {}
		},
		pbw_objective_wizards_tower_close_to_wizard = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_wizards_tower_close_to_wizard_01",
				"pbw_objective_wizards_tower_close_to_wizard_02",
				"pbw_objective_wizards_tower_close_to_wizard_03",
				"pbw_objective_wizards_tower_close_to_wizard_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_wizards_tower_close_to_wizard_01",
				"pbw_objective_wizards_tower_close_to_wizard_02",
				"pbw_objective_wizards_tower_close_to_wizard_03",
				"pbw_objective_wizards_tower_close_to_wizard_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_cemetery_spotting_hedge_maze = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_cemetery_spotting_hedge_maze_01",
				"pbw_objective_cemetery_spotting_hedge_maze_02",
				"pbw_objective_cemetery_spotting_hedge_maze_03",
				"pbw_objective_cemetery_spotting_hedge_maze_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_cemetery_spotting_hedge_maze_01",
				"pbw_objective_cemetery_spotting_hedge_maze_02",
				"pbw_objective_cemetery_spotting_hedge_maze_03",
				"pbw_objective_cemetery_spotting_hedge_maze_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_wizards_tower_commenting_skaven = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_wizards_tower_commenting_skaven_01",
				"pbw_objective_wizards_tower_commenting_skaven_02",
				"pbw_objective_wizards_tower_commenting_skaven_03",
				"pbw_objective_wizards_tower_commenting_skaven_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_wizards_tower_commenting_skaven_01",
				"pbw_objective_wizards_tower_commenting_skaven_02",
				"pbw_objective_wizards_tower_commenting_skaven_03",
				"pbw_objective_wizards_tower_commenting_skaven_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_wizards_tower_crescendo_end = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_wizards_tower_crescendo_end_01",
				"pbw_objective_wizards_tower_crescendo_end_02",
				"pbw_objective_wizards_tower_crescendo_end_03",
				"pbw_objective_wizards_tower_crescendo_end_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_wizards_tower_crescendo_end_01",
				"pbw_objective_wizards_tower_crescendo_end_02",
				"pbw_objective_wizards_tower_crescendo_end_03",
				"pbw_objective_wizards_tower_crescendo_end_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_courtyard_crescendo_starting = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_courtyard_crescendo_starting_01",
				"pbw_objective_courtyard_crescendo_starting_02",
				"pbw_objective_courtyard_crescendo_starting_03",
				"pbw_objective_courtyard_crescendo_starting_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_courtyard_crescendo_starting_01",
				"pbw_objective_courtyard_crescendo_starting_02",
				"pbw_objective_courtyard_crescendo_starting_03",
				"pbw_objective_courtyard_crescendo_starting_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_skaven_tunnels_picking_up_explosives = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_skaven_tunnels_picking_up_explosives_01",
				"pbw_objective_skaven_tunnels_picking_up_explosives_02",
				"pbw_objective_skaven_tunnels_picking_up_explosives_03",
				"pbw_objective_skaven_tunnels_picking_up_explosives_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_skaven_tunnels_picking_up_explosives_01",
				"pbw_objective_skaven_tunnels_picking_up_explosives_02",
				"pbw_objective_skaven_tunnels_picking_up_explosives_03",
				"pbw_objective_skaven_tunnels_picking_up_explosives_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_correct_path_this_way = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "default",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_correct_path_this_way_01",
				"pbw_objective_correct_path_this_way_02",
				"pbw_objective_correct_path_this_way_03",
				"pbw_objective_correct_path_this_way_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_correct_path_this_way_01",
				"pbw_objective_correct_path_this_way_02",
				"pbw_objective_correct_path_this_way_03",
				"pbw_objective_correct_path_this_way_04"
			},
			randomize_indexes = {}
		},
		pbw_sewers_intro_b = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_sewers_intro_b_01",
				[2.0] = "pbw_sewers_intro_b_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_sewers_intro_b_01",
				[2.0] = "pbw_sewers_intro_b_02"
			},
			randomize_indexes = {}
		},
		pbw_objective_forest_ambush_spotting_first_doomwheel = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_forest_ambush_spotting_first_doomwheel_01",
				"pbw_objective_forest_ambush_spotting_first_doomwheel_02",
				"pbw_objective_forest_ambush_spotting_first_doomwheel_03",
				"pbw_objective_forest_ambush_spotting_first_doomwheel_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_forest_ambush_spotting_first_doomwheel_01",
				"pbw_objective_forest_ambush_spotting_first_doomwheel_02",
				"pbw_objective_forest_ambush_spotting_first_doomwheel_03",
				"pbw_objective_forest_ambush_spotting_first_doomwheel_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_merchant_district_granary_empty = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_objective_merchant_district_granary_empty_01",
				[2.0] = "pbw_objective_merchant_district_granary_empty_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_objective_merchant_district_granary_empty_01",
				[2.0] = "pbw_objective_merchant_district_granary_empty_02"
			},
			randomize_indexes = {}
		},
		pbw_objective_skaven_tunnels_crescendo_starting = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_skaven_tunnels_crescendo_starting_01",
				"pbw_objective_skaven_tunnels_crescendo_starting_02",
				"pbw_objective_skaven_tunnels_crescendo_starting_03",
				"pbw_objective_skaven_tunnels_crescendo_starting_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_skaven_tunnels_crescendo_starting_01",
				"pbw_objective_skaven_tunnels_crescendo_starting_02",
				"pbw_objective_skaven_tunnels_crescendo_starting_03",
				"pbw_objective_skaven_tunnels_crescendo_starting_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_end_boss_vista = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_end_boss_vista_01",
				"pbw_objective_end_boss_vista_02",
				"pbw_objective_end_boss_vista_03",
				"pbw_objective_end_boss_vista_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_end_boss_vista_01",
				"pbw_objective_end_boss_vista_02",
				"pbw_objective_end_boss_vista_03",
				"pbw_objective_end_boss_vista_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_heard_witch_hunter_in_trouble = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "player_alerts",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_heard_witch_hunter_in_trouble_01",
				"pbw_gameplay_heard_witch_hunter_in_trouble_02",
				"pbw_gameplay_heard_witch_hunter_in_trouble_03",
				"pbw_gameplay_heard_witch_hunter_in_trouble_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_heard_witch_hunter_in_trouble_01",
				"pbw_gameplay_heard_witch_hunter_in_trouble_02",
				"pbw_gameplay_heard_witch_hunter_in_trouble_03",
				"pbw_gameplay_heard_witch_hunter_in_trouble_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_magnus_tower_call_elevator = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_magnus_tower_call_elevator_01",
				"pbw_objective_magnus_tower_call_elevator_02",
				"pbw_objective_magnus_tower_call_elevator_03",
				"pbw_objective_magnus_tower_call_elevator_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_contempt",
				"face_contempt",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_magnus_tower_call_elevator_01",
				"pbw_objective_magnus_tower_call_elevator_02",
				"pbw_objective_magnus_tower_call_elevator_03",
				"pbw_objective_magnus_tower_call_elevator_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_empire_soldier_low_on_health = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_empire_soldier_low_on_health_01",
				"pbw_gameplay_empire_soldier_low_on_health_02",
				"pbw_gameplay_empire_soldier_low_on_health_03",
				"pbw_gameplay_empire_soldier_low_on_health_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_shout"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pbw_gameplay_empire_soldier_low_on_health_01",
				"pbw_gameplay_empire_soldier_low_on_health_02",
				"pbw_gameplay_empire_soldier_low_on_health_03",
				"pbw_gameplay_empire_soldier_low_on_health_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_helped_by_dwarf_ranger = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "help_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_helped_by_dwarf_ranger_01",
				"pbw_gameplay_helped_by_dwarf_ranger_02",
				"pbw_gameplay_helped_by_dwarf_ranger_03",
				"pbw_gameplay_helped_by_dwarf_ranger_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pbw_gameplay_helped_by_dwarf_ranger_01",
				"pbw_gameplay_helped_by_dwarf_ranger_02",
				"pbw_gameplay_helped_by_dwarf_ranger_03",
				"pbw_gameplay_helped_by_dwarf_ranger_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_courtyard_well_targeted = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_courtyard_well_targeted_01",
				"pbw_objective_courtyard_well_targeted_02",
				"pbw_objective_courtyard_well_targeted_03",
				"pbw_objective_courtyard_well_targeted_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_courtyard_well_targeted_01",
				"pbw_objective_courtyard_well_targeted_02",
				"pbw_objective_courtyard_well_targeted_03",
				"pbw_objective_courtyard_well_targeted_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_cemetery_through_crypt_b = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_cemetery_through_crypt_b_01",
				"pbw_objective_cemetery_through_crypt_b_02",
				"pbw_objective_cemetery_through_crypt_b_03",
				"pbw_objective_cemetery_through_crypt_b_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_cemetery_through_crypt_b_01",
				"pbw_objective_cemetery_through_crypt_b_02",
				"pbw_objective_cemetery_through_crypt_b_03",
				"pbw_objective_cemetery_through_crypt_b_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_courtyard_calm_time = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_courtyard_calm_time_01",
				"pbw_objective_courtyard_calm_time_02",
				"pbw_objective_courtyard_calm_time_03",
				"pbw_objective_courtyard_calm_time_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_courtyard_calm_time_01",
				"pbw_objective_courtyard_calm_time_02",
				"pbw_objective_courtyard_calm_time_03",
				"pbw_objective_courtyard_calm_time_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_merchant_district_spotting_blocked_route = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_merchant_district_spotting_blocked_route_01",
				"pbw_objective_merchant_district_spotting_blocked_route_02",
				"pbw_objective_merchant_district_spotting_blocked_route_03",
				"pbw_objective_merchant_district_spotting_blocked_route_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_merchant_district_spotting_blocked_route_01",
				"pbw_objective_merchant_district_spotting_blocked_route_02",
				"pbw_objective_merchant_district_spotting_blocked_route_03",
				"pbw_objective_merchant_district_spotting_blocked_route_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_player_pounced = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "bright_wizard",
			category = "player_alerts",
			dialogue_animations_n = 6,
			sound_events = {
				"pbw_gameplay_player_pounced_01",
				"pbw_gameplay_player_pounced_02",
				"pbw_gameplay_player_pounced_03",
				"pbw_gameplay_player_pounced_04",
				"pbw_gameplay_player_pounced_05",
				"pbw_gameplay_player_pounced_06"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pbw_gameplay_player_pounced_01",
				"pbw_gameplay_player_pounced_02",
				"pbw_gameplay_player_pounced_03",
				"pbw_gameplay_player_pounced_04",
				"pbw_gameplay_player_pounced_05",
				"pbw_gameplay_player_pounced_06"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_tension_no_enemies = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "bright_wizard",
			category = "casual_talk",
			dialogue_animations_n = 8,
			sound_events = {
				"pbw_gameplay_tension_no_enemies_01",
				"pbw_gameplay_tension_no_enemies_02",
				"pbw_gameplay_tension_no_enemies_03",
				"pbw_gameplay_tension_no_enemies_04",
				"pbw_gameplay_tension_no_enemies_05",
				"pbw_gameplay_tension_no_enemies_06",
				"pbw_gameplay_tension_no_enemies_07",
				"pbw_gameplay_tension_no_enemies_08"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pbw_gameplay_tension_no_enemies_01",
				"pbw_gameplay_tension_no_enemies_02",
				"pbw_gameplay_tension_no_enemies_03",
				"pbw_gameplay_tension_no_enemies_04",
				"pbw_gameplay_tension_no_enemies_05",
				"pbw_gameplay_tension_no_enemies_06",
				"pbw_gameplay_tension_no_enemies_07",
				"pbw_gameplay_tension_no_enemies_08"
			},
			randomize_indexes = {}
		},
		pbw_objective_forest_ambush_spotting_coaching_inn = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_forest_ambush_spotting_coaching_inn_01",
				"pbw_objective_forest_ambush_spotting_coaching_inn_02",
				"pbw_objective_forest_ambush_spotting_coaching_inn_03",
				"pbw_objective_forest_ambush_spotting_coaching_inn_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_forest_ambush_spotting_coaching_inn_01",
				"pbw_objective_forest_ambush_spotting_coaching_inn_02",
				"pbw_objective_forest_ambush_spotting_coaching_inn_03",
				"pbw_objective_forest_ambush_spotting_coaching_inn_04"
			},
			randomize_indexes = {}
		},
		pbw_city_walls_intro_c = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_city_walls_intro_c_01",
				[2.0] = "pbw_city_walls_intro_c_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_city_walls_intro_c_01",
				[2.0] = "pbw_city_walls_intro_c_02"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_overcharge = {
			sound_events_n = 5,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 5,
			sound_events = {
				"pbw_gameplay_overcharge_01",
				"pbw_gameplay_overcharge_02",
				"pbw_gameplay_overcharge_03",
				"pbw_gameplay_overcharge_04",
				"pbw_gameplay_overcharge_05"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_pain",
				"face_pain",
				"face_pain",
				"face_pain",
				"face_pain"
			},
			localization_strings = {
				"pbw_gameplay_overcharge_01",
				"pbw_gameplay_overcharge_02",
				"pbw_gameplay_overcharge_03",
				"pbw_gameplay_overcharge_04",
				"pbw_gameplay_overcharge_05"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_spots_health_flask = {
			sound_events_n = 5,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "bright_wizard",
			category = "seen_items",
			dialogue_animations_n = 5,
			sound_events = {
				"pbw_gameplay_spots_health_01",
				"pbw_gameplay_spots_health_02",
				"pbw_gameplay_spots_health_03",
				"pbw_gameplay_spots_health_04",
				"pbw_gameplay_spots_health_05"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pbw_gameplay_spots_health_01",
				"pbw_gameplay_spots_health_02",
				"pbw_gameplay_spots_health_03",
				"pbw_gameplay_spots_health_04",
				"pbw_gameplay_spots_health_05"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_casual_quotes = {
			sound_events_n = 7,
			randomize_indexes_n = 0,
			face_animations_n = 7,
			database = "bright_wizard",
			category = "casual_talk",
			dialogue_animations_n = 7,
			sound_events = {
				"pbw_gameplay_casual_quotes_01",
				"pbw_gameplay_casual_quotes_02",
				"pbw_gameplay_casual_quotes_03",
				"pbw_gameplay_casual_quotes_06",
				"pbw_gameplay_casual_quotes_08",
				"pbw_gameplay_casual_quotes_09",
				"pbw_gameplay_casual_quotes_10"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_shout",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_sadness",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pbw_gameplay_casual_quotes_01",
				"pbw_gameplay_casual_quotes_02",
				"pbw_gameplay_casual_quotes_03",
				"pbw_gameplay_casual_quotes_06",
				"pbw_gameplay_casual_quotes_08",
				"pbw_gameplay_casual_quotes_09",
				"pbw_gameplay_casual_quotes_10"
			},
			randomize_indexes = {}
		},
		pbw_objective_forest_ambush_spotting_lodge_ruins = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_forest_ambush_spotting_lodge_ruins_01",
				"pbw_objective_forest_ambush_spotting_lodge_ruins_02",
				"pbw_objective_forest_ambush_spotting_lodge_ruins_03",
				"pbw_objective_forest_ambush_spotting_lodge_ruins_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_forest_ambush_spotting_lodge_ruins_01",
				"pbw_objective_forest_ambush_spotting_lodge_ruins_02",
				"pbw_objective_forest_ambush_spotting_lodge_ruins_03",
				"pbw_objective_forest_ambush_spotting_lodge_ruins_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_sewers_horde_defeated = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_sewers_horde_defeated_01",
				"pbw_objective_sewers_horde_defeated_02",
				"pbw_objective_sewers_horde_defeated_03",
				"pbw_objective_sewers_horde_defeated_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_sewers_horde_defeated_01",
				"pbw_objective_sewers_horde_defeated_02",
				"pbw_objective_sewers_horde_defeated_03",
				"pbw_objective_sewers_horde_defeated_04"
			},
			randomize_indexes = {}
		},
		pbw_sewers_intro = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_sewers_intro_a_01",
				[2.0] = "pbw_sewers_intro_a_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_sewers_intro_a_01",
				[2.0] = "pbw_sewers_intro_a_02"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_killing_packmaster = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "enemy_alerts",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_killing_packmaster_01",
				"pbw_gameplay_killing_packmaster_02",
				"pbw_gameplay_killing_packmaster_03",
				"pbw_gameplay_killing_packmaster_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_killing_packmaster_01",
				"pbw_gameplay_killing_packmaster_02",
				"pbw_gameplay_killing_packmaster_03",
				"pbw_gameplay_killing_packmaster_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_cemetery_spotting_victim = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_cemetery_spotting_victim_01",
				"pbw_objective_cemetery_spotting_victim_02",
				"pbw_objective_cemetery_spotting_victim_03",
				"pbw_objective_cemetery_spotting_victim_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_cemetery_spotting_victim_01",
				"pbw_objective_cemetery_spotting_victim_02",
				"pbw_objective_cemetery_spotting_victim_03",
				"pbw_objective_cemetery_spotting_victim_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_friendly_fire_empire_soldier = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_friendly_fire_empire_soldier_01",
				"pbw_gameplay_friendly_fire_empire_soldier_02",
				"pbw_gameplay_friendly_fire_empire_soldier_03",
				"pbw_gameplay_friendly_fire_empire_soldier_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"pbw_gameplay_friendly_fire_empire_soldier_01",
				"pbw_gameplay_friendly_fire_empire_soldier_02",
				"pbw_gameplay_friendly_fire_empire_soldier_03",
				"pbw_gameplay_friendly_fire_empire_soldier_04"
			},
			randomize_indexes = {}
		},
		pbw_courtyard_intro_b = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_courtyard_intro_b_01",
				[2.0] = "pbw_courtyard_intro_b_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_courtyard_intro_b_01",
				[2.0] = "pbw_courtyard_intro_b_02"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_knocked_down = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "bright_wizard",
			category = "player_alerts",
			dialogue_animations_n = 6,
			sound_events = {
				"pbw_gameplay_knocked_down_01",
				"pbw_gameplay_knocked_down_02",
				"pbw_gameplay_knocked_down_03",
				"pbw_gameplay_knocked_down_04",
				"pbw_gameplay_knocked_down_05",
				"pbw_gameplay_knocked_down_06"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_fear",
				"face_fear",
				"face_exhausted"
			},
			localization_strings = {
				"pbw_gameplay_knocked_down_01",
				"pbw_gameplay_knocked_down_02",
				"pbw_gameplay_knocked_down_03",
				"pbw_gameplay_knocked_down_04",
				"pbw_gameplay_knocked_down_05",
				"pbw_gameplay_knocked_down_06"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_activating_magic_weapon_defensive = {
			sound_events_n = 5,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 5,
			sound_events = {
				"pbw_gameplay_activating_magic_weapon_defensive_01",
				"pbw_gameplay_activating_magic_weapon_defensive_02",
				"pbw_gameplay_activating_magic_weapon_defensive_03",
				"pbw_gameplay_activating_magic_weapon_defensive_04",
				"pbw_gameplay_activating_magic_weapon_defensive_05"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_activating_magic_weapon_defensive_01",
				"pbw_gameplay_activating_magic_weapon_defensive_02",
				"pbw_gameplay_activating_magic_weapon_defensive_03",
				"pbw_gameplay_activating_magic_weapon_defensive_04",
				"pbw_gameplay_activating_magic_weapon_defensive_05"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_friendly_fire_wood_elf = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_friendly_fire_wood_elf_01",
				"pbw_gameplay_friendly_fire_wood_elf_02",
				"pbw_gameplay_friendly_fire_wood_elf_03",
				"pbw_gameplay_friendly_fire_wood_elf_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"pbw_gameplay_friendly_fire_wood_elf_01",
				"pbw_gameplay_friendly_fire_wood_elf_02",
				"pbw_gameplay_friendly_fire_wood_elf_03",
				"pbw_gameplay_friendly_fire_wood_elf_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_forest_ambush_spotting_bridge = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_forest_ambush_spotting_bridge_01",
				"pbw_objective_forest_ambush_spotting_bridge_02",
				"pbw_objective_forest_ambush_spotting_bridge_03",
				"pbw_objective_forest_ambush_spotting_bridge_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_forest_ambush_spotting_bridge_01",
				"pbw_objective_forest_ambush_spotting_bridge_02",
				"pbw_objective_forest_ambush_spotting_bridge_03",
				"pbw_objective_forest_ambush_spotting_bridge_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_wizards_tower_crescendo_starting = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_wizards_tower_crescendo_starting_01",
				"pbw_objective_wizards_tower_crescendo_starting_02",
				"pbw_objective_wizards_tower_crescendo_starting_03",
				"pbw_objective_wizards_tower_crescendo_starting_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_wizards_tower_crescendo_starting_01",
				"pbw_objective_wizards_tower_crescendo_starting_02",
				"pbw_objective_wizards_tower_crescendo_starting_03",
				"pbw_objective_wizards_tower_crescendo_starting_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_forest_ambush_spotting_trunk = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_forest_ambush_spotting_trunk_01",
				"pbw_objective_forest_ambush_spotting_trunk_02",
				"pbw_objective_forest_ambush_spotting_trunk_03",
				"pbw_objective_forest_ambush_spotting_trunk_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_forest_ambush_spotting_trunk_01",
				"pbw_objective_forest_ambush_spotting_trunk_02",
				"pbw_objective_forest_ambush_spotting_trunk_03",
				"pbw_objective_forest_ambush_spotting_trunk_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_interacting_with_objective = {
			sound_events_n = 3,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "bright_wizard",
			category = "default",
			dialogue_animations_n = 3,
			sound_events = {
				"pbw_objective_interacting_with_objective_01",
				"pbw_objective_interacting_with_objective_02",
				"pbw_objective_interacting_with_objective_03"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_interacting_with_objective_01",
				"pbw_objective_interacting_with_objective_02",
				"pbw_objective_interacting_with_objective_03"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_seeing_a_stormvermin = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "bright_wizard",
			category = "enemy_alerts",
			dialogue_animations_n = 8,
			sound_events = {
				"pbw_gameplay_seeing_a_stormvermin_01",
				"pbw_gameplay_seeing_a_stormvermin_02",
				"pbw_gameplay_seeing_a_stormvermin_03",
				"pbw_gameplay_seeing_a_stormvermin_04",
				"pbw_gameplay_seeing_a_stormvermin_05",
				"pbw_gameplay_seeing_a_stormvermin_06",
				"pbw_gameplay_seeing_a_stormvermin_07",
				"pbw_gameplay_seeing_a_stormvermin_08"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_neutral",
				"face_neutral",
				"face_contempt",
				"face_neutral",
				"face_angry"
			},
			localization_strings = {
				"pbw_gameplay_seeing_a_stormvermin_01",
				"pbw_gameplay_seeing_a_stormvermin_02",
				"pbw_gameplay_seeing_a_stormvermin_03",
				"pbw_gameplay_seeing_a_stormvermin_04",
				"pbw_gameplay_seeing_a_stormvermin_05",
				"pbw_gameplay_seeing_a_stormvermin_06",
				"pbw_gameplay_seeing_a_stormvermin_07",
				"pbw_gameplay_seeing_a_stormvermin_08"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_wood_elf_dead = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "player_alerts",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_wood_elf_dead_01",
				"pbw_gameplay_wood_elf_dead_02",
				"pbw_gameplay_wood_elf_dead_03",
				"pbw_gameplay_wood_elf_dead_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_sadness",
				"face_sadness",
				"face_sadness",
				"face_sadness"
			},
			localization_strings = {
				"pbw_gameplay_wood_elf_dead_01",
				"pbw_gameplay_wood_elf_dead_02",
				"pbw_gameplay_wood_elf_dead_03",
				"pbw_gameplay_wood_elf_dead_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_cemetery_spotting_the_attachements = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_cemetery_spotting_the_attachements_01",
				"pbw_objective_cemetery_spotting_the_attachements_02",
				"pbw_objective_cemetery_spotting_the_attachements_03",
				"pbw_objective_cemetery_spotting_the_attachements_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_cemetery_spotting_the_attachements_01",
				"pbw_objective_cemetery_spotting_the_attachements_02",
				"pbw_objective_cemetery_spotting_the_attachements_03",
				"pbw_objective_cemetery_spotting_the_attachements_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_incoming_globadier = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "bright_wizard",
			category = "player_alerts",
			dialogue_animations_n = 6,
			sound_events = {
				"pbw_gameplay_incoming_globadier_01",
				"pbw_gameplay_incoming_globadier_02",
				"pbw_gameplay_incoming_globadier_03",
				"pbw_gameplay_incoming_globadier_04",
				"pbw_gameplay_incoming_globadier_05",
				"pbw_gameplay_incoming_globadier_06"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pbw_gameplay_incoming_globadier_01",
				"pbw_gameplay_incoming_globadier_02",
				"pbw_gameplay_incoming_globadier_03",
				"pbw_gameplay_incoming_globadier_04",
				"pbw_gameplay_incoming_globadier_05",
				"pbw_gameplay_incoming_globadier_06"
			},
			randomize_indexes = {}
		},
		pbw_objective_merchant_district_delivered_half_supply = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_merchant_district_delivered_half_supply_01",
				"pbw_objective_merchant_district_delivered_half_supply_02",
				"pbw_objective_merchant_district_delivered_half_supply_03",
				"pbw_objective_merchant_district_delivered_half_supply_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_merchant_district_delivered_half_supply_01",
				"pbw_objective_merchant_district_delivered_half_supply_02",
				"pbw_objective_merchant_district_delivered_half_supply_03",
				"pbw_objective_merchant_district_delivered_half_supply_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_cemetery_bringing_down_first_attachment = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_cemetery_bringing_down_first_attachment_01",
				"pbw_objective_cemetery_bringing_down_first_attachment_02",
				"pbw_objective_cemetery_bringing_down_first_attachment_03",
				"pbw_objective_cemetery_bringing_down_first_attachment_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_cemetery_bringing_down_first_attachment_01",
				"pbw_objective_cemetery_bringing_down_first_attachment_02",
				"pbw_objective_cemetery_bringing_down_first_attachment_03",
				"pbw_objective_cemetery_bringing_down_first_attachment_04"
			},
			randomize_indexes = {}
		},
		pbw_docks_intro = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_docks_intro_a_01",
				[2.0] = "pbw_docks_intro_a_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_docks_intro_a_01",
				[2.0] = "pbw_docks_intro_a_02"
			},
			randomize_indexes = {}
		},
		pbw_objective_wizards_tower_hall_of_mysteries = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_wizards_tower_hall_of_mysteries_01",
				"pbw_objective_wizards_tower_hall_of_mysteries_02",
				"pbw_objective_wizards_tower_hall_of_mysteries_03",
				"pbw_objective_wizards_tower_hall_of_mysteries_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_wizards_tower_hall_of_mysteries_01",
				"pbw_objective_wizards_tower_hall_of_mysteries_02",
				"pbw_objective_wizards_tower_hall_of_mysteries_03",
				"pbw_objective_wizards_tower_hall_of_mysteries_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_courtyard_well_is_lost = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_courtyard_well_is_lost_01",
				"pbw_objective_courtyard_well_is_lost_02",
				"pbw_objective_courtyard_well_is_lost_03",
				"pbw_objective_courtyard_well_is_lost_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_courtyard_well_is_lost_01",
				"pbw_objective_courtyard_well_is_lost_02",
				"pbw_objective_courtyard_well_is_lost_03",
				"pbw_objective_courtyard_well_is_lost_04"
			},
			randomize_indexes = {}
		},
		pbw_farm_intro = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_farm_intro_a_01",
				[2.0] = "pbw_farm_intro_a_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_farm_intro_a_01",
				[2.0] = "pbw_farm_intro_a_02"
			},
			randomize_indexes = {}
		},
		pbw_docks_intro_c = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_docks_intro_c_01",
				[2.0] = "pbw_docks_intro_c_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_docks_intro_c_01",
				[2.0] = "pbw_docks_intro_c_02"
			},
			randomize_indexes = {}
		},
		pbw_objective_docks_first_warehouse_inside = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_docks_first_warehouse_inside_01",
				"pbw_objective_docks_first_warehouse_inside_02",
				"pbw_objective_docks_first_warehouse_inside_03",
				"pbw_objective_docks_first_warehouse_inside_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_docks_first_warehouse_inside_01",
				"pbw_objective_docks_first_warehouse_inside_02",
				"pbw_objective_docks_first_warehouse_inside_03",
				"pbw_objective_docks_first_warehouse_inside_04"
			},
			randomize_indexes = {}
		},
		pbw_docks_intro_b = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_docks_intro_b_01",
				[2.0] = "pbw_docks_intro_b_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_docks_intro_b_01",
				[2.0] = "pbw_docks_intro_b_02"
			},
			randomize_indexes = {}
		},
		pbw_courtyard_intro_c = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_courtyard_intro_c_01",
				[2.0] = "pbw_courtyard_intro_c_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_courtyard_intro_c_01",
				[2.0] = "pbw_courtyard_intro_c_02"
			},
			randomize_indexes = {}
		},
		pbw_courtyard_intro = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_courtyard_intro_a_01",
				[2.0] = "pbw_courtyard_intro_a_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_courtyard_intro_a_01",
				[2.0] = "pbw_courtyard_intro_a_02"
			},
			randomize_indexes = {}
		},
		pbw_bridge_intro_c = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_bridge_intro_c_01",
				[2.0] = "pbw_bridge_intro_c_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_bridge_intro_c_01",
				[2.0] = "pbw_bridge_intro_c_02"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_armoured_enemy_dwarf = {
			sound_events_n = 3,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 3,
			sound_events = {
				"pbw_gameplay_armoured_enemy_dwarf_01",
				"pbw_gameplay_armoured_enemy_dwarf_02",
				"pbw_gameplay_armoured_enemy_dwarf_03"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_armoured_enemy_dwarf_01",
				"pbw_gameplay_armoured_enemy_dwarf_02",
				"pbw_gameplay_armoured_enemy_dwarf_03"
			},
			randomize_indexes = {}
		},
		pbw_sewers_intro_c = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_sewers_intro_c_01",
				[2.0] = "pbw_sewers_intro_c_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_sewers_intro_c_01",
				[2.0] = "pbw_sewers_intro_c_02"
			},
			randomize_indexes = {}
		},
		pbw_end_boss_intro_b = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_end_boss_intro_b_01",
				[2.0] = "pbw_end_boss_intro_b_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_end_boss_intro_b_01",
				[2.0] = "pbw_end_boss_intro_b_02"
			},
			randomize_indexes = {}
		},
		pbw_objective_skaven_tunnels_living_quarters = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_skaven_tunnels_living_quarters_01",
				"pbw_objective_skaven_tunnels_living_quarters_02",
				"pbw_objective_skaven_tunnels_living_quarters_03",
				"pbw_objective_skaven_tunnels_living_quarters_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_skaven_tunnels_living_quarters_01",
				"pbw_objective_skaven_tunnels_living_quarters_02",
				"pbw_objective_skaven_tunnels_living_quarters_03",
				"pbw_objective_skaven_tunnels_living_quarters_04"
			},
			randomize_indexes = {}
		},
		pbw_end_boss_intro = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_end_boss_intro_a_01",
				[2.0] = "pbw_end_boss_intro_a_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_end_boss_intro_a_01",
				[2.0] = "pbw_end_boss_intro_a_02"
			},
			randomize_indexes = {}
		},
		pbw_objective_magnus_tower_walking_streets = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_objective_magnus_tower_walking_streets_01",
				[2.0] = "pbw_objective_magnus_tower_walking_streets_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_happy"
			},
			localization_strings = {
				[1.0] = "pbw_objective_magnus_tower_walking_streets_01",
				[2.0] = "pbw_objective_magnus_tower_walking_streets_02"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_ambush_horde_spawned = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "bright_wizard",
			category = "player_alerts",
			dialogue_animations_n = 6,
			sound_events = {
				"pbw_gameplay_ambush_horde_spawned_01",
				"pbw_gameplay_ambush_horde_spawned_02",
				"pbw_gameplay_ambush_horde_spawned_03",
				"pbw_gameplay_ambush_horde_spawned_04",
				"pbw_gameplay_ambush_horde_spawned_05",
				"pbw_gameplay_ambush_horde_spawned_06"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_surprise",
				"face_surprise",
				"face_surprise",
				"face_surprise",
				"face_surprise",
				"face_surprise"
			},
			localization_strings = {
				"pbw_gameplay_ambush_horde_spawned_01",
				"pbw_gameplay_ambush_horde_spawned_02",
				"pbw_gameplay_ambush_horde_spawned_03",
				"pbw_gameplay_ambush_horde_spawned_04",
				"pbw_gameplay_ambush_horde_spawned_05",
				"pbw_gameplay_ambush_horde_spawned_06"
			},
			randomize_indexes = {}
		},
		pbw_cemetary_intro_b = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_cemetary_intro_b_01",
				[2.0] = "pbw_cemetary_intro_b_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_cemetary_intro_b_01",
				[2.0] = "pbw_cemetary_intro_b_02"
			},
			randomize_indexes = {}
		},
		pbw_objective_cemetery_through_crypt_a = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_cemetery_through_crypt_a_01",
				"pbw_objective_cemetery_through_crypt_a_02",
				"pbw_objective_cemetery_through_crypt_a_03",
				"pbw_objective_cemetery_through_crypt_a_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_cemetery_through_crypt_a_01",
				"pbw_objective_cemetery_through_crypt_a_02",
				"pbw_objective_cemetery_through_crypt_a_03",
				"pbw_objective_cemetery_through_crypt_a_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_witch_hunter_dead = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "player_alerts",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_witch_hunter_dead_01",
				"pbw_gameplay_witch_hunter_dead_02",
				"pbw_gameplay_witch_hunter_dead_03",
				"pbw_gameplay_witch_hunter_dead_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_witch_hunter_dead_01",
				"pbw_gameplay_witch_hunter_dead_02",
				"pbw_gameplay_witch_hunter_dead_03",
				"pbw_gameplay_witch_hunter_dead_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_dead_end = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "bright_wizard",
			category = "default",
			dialogue_animations_n = 6,
			sound_events = {
				"pbw_gameplay_dead_end_01",
				"pbw_gameplay_dead_end_02",
				"pbw_gameplay_dead_end_03",
				"pbw_gameplay_dead_end_04",
				"pbw_gameplay_dead_end_05",
				"pbw_gameplay_dead_end_06"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_dead_end_01",
				"pbw_gameplay_dead_end_02",
				"pbw_gameplay_dead_end_03",
				"pbw_gameplay_dead_end_04",
				"pbw_gameplay_dead_end_05",
				"pbw_gameplay_dead_end_06"
			},
			randomize_indexes = {}
		},
		pbw_objective_goal_achieved_escape = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "default",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_goal_achieved_escape_01",
				"pbw_objective_goal_achieved_escape_02",
				"pbw_objective_goal_achieved_escape_03",
				"pbw_objective_goal_achieved_escape_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_goal_achieved_escape_01",
				"pbw_objective_goal_achieved_escape_02",
				"pbw_objective_goal_achieved_escape_03",
				"pbw_objective_goal_achieved_escape_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_magnus_tower_hint_blow_horn = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_objective_magnus_tower_hint_blow_horn_01",
				[2.0] = "pbw_objective_magnus_tower_hint_blow_horn_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_happy"
			},
			localization_strings = {
				[1.0] = "pbw_objective_magnus_tower_hint_blow_horn_01",
				[2.0] = "pbw_objective_magnus_tower_hint_blow_horn_02"
			},
			randomize_indexes = {}
		},
		pbw_merchant_district_intro_c = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_merchant_district_intro_c_01",
				[2.0] = "pbw_merchant_district_intro_c_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_merchant_district_intro_c_01",
				[2.0] = "pbw_merchant_district_intro_c_02"
			},
			randomize_indexes = {}
		},
		pbw_merchant_district_intro_b = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_merchant_district_intro_b_01",
				[2.0] = "pbw_merchant_district_intro_b_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_merchant_district_intro_b_01",
				[2.0] = "pbw_merchant_district_intro_b_02"
			},
			randomize_indexes = {}
		},
		pbw_merchant_district_intro = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_merchant_district_intro_a_01",
				[2.0] = "pbw_merchant_district_intro_a_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_merchant_district_intro_a_01",
				[2.0] = "pbw_merchant_district_intro_a_02"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_no_nearby_teammates = {
			sound_events_n = 8,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "bright_wizard",
			category = "casual_talk",
			dialogue_animations_n = 8,
			sound_events = {
				"pbw_gameplay_no_nearby_teammates_01",
				"pbw_gameplay_no_nearby_teammates_02",
				"pbw_gameplay_no_nearby_teammates_03",
				"pbw_gameplay_no_nearby_teammates_07",
				"pbw_gameplay_no_nearby_teammates_08",
				"pbw_gameplay_no_nearby_teammates_04",
				"pbw_gameplay_no_nearby_teammates_05",
				"pbw_gameplay_no_nearby_teammates_06"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_nervous",
				"face_nervous",
				"face_nervous",
				"face_nervous",
				"face_nervous",
				"face_nervous",
				"face_nervous",
				"face_nervous"
			},
			localization_strings = {
				"pbw_gameplay_no_nearby_teammates_01",
				"pbw_gameplay_no_nearby_teammates_02",
				"pbw_gameplay_no_nearby_teammates_03",
				"pbw_gameplay_no_nearby_teammates_07",
				"pbw_gameplay_no_nearby_teammates_08",
				"pbw_gameplay_no_nearby_teammates_04",
				"pbw_gameplay_no_nearby_teammates_05",
				"pbw_gameplay_no_nearby_teammates_06"
			},
			randomize_indexes = {}
		},
		pbw_magnus_tower_intro_b = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_magnus_tower_intro_b_01",
				[2.0] = "pbw_magnus_tower_intro_b_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_magnus_tower_intro_b_01",
				[2.0] = "pbw_magnus_tower_intro_b_02"
			},
			randomize_indexes = {}
		},
		pbw_magnus_tower_intro = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_magnus_tower_intro_a_01",
				[2.0] = "pbw_magnus_tower_intro_a_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_magnus_tower_intro_a_01",
				[2.0] = "pbw_magnus_tower_intro_a_02"
			},
			randomize_indexes = {}
		},
		pbw_city_walls_intro_b = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_city_walls_intro_b_01",
				[2.0] = "pbw_city_walls_intro_b_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_city_walls_intro_b_01",
				[2.0] = "pbw_city_walls_intro_b_02"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_encouraging_words = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "bright_wizard",
			category = "casual_talk",
			dialogue_animations_n = 6,
			sound_events = {
				"pbw_gameplay_encouraging_words_01",
				"pbw_gameplay_encouraging_words_02",
				"pbw_gameplay_encouraging_words_03",
				"pbw_gameplay_encouraging_words_04",
				"pbw_gameplay_encouraging_words_05",
				"pbw_gameplay_encouraging_words_06"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_contempt",
				"face_neutral",
				"face_contempt",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_encouraging_words_01",
				"pbw_gameplay_encouraging_words_02",
				"pbw_gameplay_encouraging_words_03",
				"pbw_gameplay_encouraging_words_04",
				"pbw_gameplay_encouraging_words_05",
				"pbw_gameplay_encouraging_words_06"
			},
			randomize_indexes = {}
		},
		pbw_objective_wizards_tower_finding_wizard = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_wizards_tower_finding_wizard_01",
				"pbw_objective_wizards_tower_finding_wizard_02",
				"pbw_objective_wizards_tower_finding_wizard_03",
				"pbw_objective_wizards_tower_finding_wizard_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_wizards_tower_finding_wizard_01",
				"pbw_objective_wizards_tower_finding_wizard_02",
				"pbw_objective_wizards_tower_finding_wizard_03",
				"pbw_objective_wizards_tower_finding_wizard_04"
			},
			randomize_indexes = {}
		},
		pbw_cemetary_intro_c = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_cemetary_intro_c_01",
				[2.0] = "pbw_cemetary_intro_c_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_cemetary_intro_c_01",
				[2.0] = "pbw_cemetary_intro_c_02"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_witch_hunter_grabbed = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "bright_wizard",
			category = "player_alerts",
			dialogue_animations_n = 6,
			sound_events = {
				"pbw_gameplay_witch_hunter_grabbed_01",
				"pbw_gameplay_witch_hunter_grabbed_02",
				"pbw_gameplay_witch_hunter_grabbed_03",
				"pbw_gameplay_witch_hunter_grabbed_04",
				"pbw_gameplay_witch_hunter_grabbed_05",
				"pbw_gameplay_witch_hunter_grabbed_06"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_witch_hunter_grabbed_01",
				"pbw_gameplay_witch_hunter_grabbed_02",
				"pbw_gameplay_witch_hunter_grabbed_03",
				"pbw_gameplay_witch_hunter_grabbed_04",
				"pbw_gameplay_witch_hunter_grabbed_05",
				"pbw_gameplay_witch_hunter_grabbed_06"
			},
			randomize_indexes = {}
		},
		pbw_skaven_tunnels_intro_b = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_skaven_tunnels_intro_b_01",
				[2.0] = "pbw_skaven_tunnels_intro_b_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_skaven_tunnels_intro_b_01",
				[2.0] = "pbw_skaven_tunnels_intro_b_02"
			},
			randomize_indexes = {}
		},
		pbw_objective_wizards_tower_seeing_tower_from_from_afar = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_wizards_tower_seeing_tower_from_from_afar_01",
				"pbw_objective_wizards_tower_seeing_tower_from_from_afar_02",
				"pbw_objective_wizards_tower_seeing_tower_from_from_afar_03",
				"pbw_objective_wizards_tower_seeing_tower_from_from_afar_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_wizards_tower_seeing_tower_from_from_afar_01",
				"pbw_objective_wizards_tower_seeing_tower_from_from_afar_02",
				"pbw_objective_wizards_tower_seeing_tower_from_from_afar_03",
				"pbw_objective_wizards_tower_seeing_tower_from_from_afar_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_sewers_seeing_first_gate = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_sewers_seeing_first_gate_01",
				"pbw_objective_sewers_seeing_first_gate_02",
				"pbw_objective_sewers_seeing_first_gate_03",
				"pbw_objective_sewers_seeing_first_gate_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_sewers_seeing_first_gate_01",
				"pbw_objective_sewers_seeing_first_gate_02",
				"pbw_objective_sewers_seeing_first_gate_03",
				"pbw_objective_sewers_seeing_first_gate_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_city_wall_reaching_elevator = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_city_wall_reaching_elevator_01",
				"pbw_objective_city_wall_reaching_elevator_02",
				"pbw_objective_city_wall_reaching_elevator_03",
				"pbw_objective_city_wall_reaching_elevator_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_city_wall_reaching_elevator_01",
				"pbw_objective_city_wall_reaching_elevator_02",
				"pbw_objective_city_wall_reaching_elevator_03",
				"pbw_objective_city_wall_reaching_elevator_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_wizards_tower_seeing_the_apotechary = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_wizards_tower_seeing_the_apotechary_01",
				"pbw_objective_wizards_tower_seeing_the_apotechary_02",
				"pbw_objective_wizards_tower_seeing_the_apotechary_03",
				"pbw_objective_wizards_tower_seeing_the_apotechary_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_wizards_tower_seeing_the_apotechary_01",
				"pbw_objective_wizards_tower_seeing_the_apotechary_02",
				"pbw_objective_wizards_tower_seeing_the_apotechary_03",
				"pbw_objective_wizards_tower_seeing_the_apotechary_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_wizards_tower_reaching_apothecary_shop = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_wizards_tower_reaching_apothecary_shop_01",
				"pbw_objective_wizards_tower_reaching_apothecary_shop_02",
				"pbw_objective_wizards_tower_reaching_apothecary_shop_03",
				"pbw_objective_wizards_tower_reaching_apothecary_shop_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_wizards_tower_reaching_apothecary_shop_01",
				"pbw_objective_wizards_tower_reaching_apothecary_shop_02",
				"pbw_objective_wizards_tower_reaching_apothecary_shop_03",
				"pbw_objective_wizards_tower_reaching_apothecary_shop_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_healing_witch_hunter = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_healing_witch_hunter_01",
				"pbw_gameplay_healing_witch_hunter_02",
				"pbw_gameplay_healing_witch_hunter_03",
				"pbw_gameplay_healing_witch_hunter_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_healing_witch_hunter_01",
				"pbw_gameplay_healing_witch_hunter_02",
				"pbw_gameplay_healing_witch_hunter_03",
				"pbw_gameplay_healing_witch_hunter_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_farm_search_the_area = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_farm_search_the_area_01",
				"pbw_objective_farm_search_the_area_02",
				"pbw_objective_farm_search_the_area_03",
				"pbw_objective_farm_search_the_area_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_farm_search_the_area_01",
				"pbw_objective_farm_search_the_area_02",
				"pbw_objective_farm_search_the_area_03",
				"pbw_objective_farm_search_the_area_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_forest_ambush_crescendo_starting = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_forest_ambush_crescendo_starting_01",
				"pbw_objective_forest_ambush_crescendo_starting_02",
				"pbw_objective_forest_ambush_crescendo_starting_03",
				"pbw_objective_forest_ambush_crescendo_starting_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_forest_ambush_crescendo_starting_01",
				"pbw_objective_forest_ambush_crescendo_starting_02",
				"pbw_objective_forest_ambush_crescendo_starting_03",
				"pbw_objective_forest_ambush_crescendo_starting_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_farm_supply_successful = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_farm_supply_successful_01",
				"pbw_objective_farm_supply_successful_02",
				"pbw_objective_farm_supply_successful_03",
				"pbw_objective_farm_supply_successful_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_farm_supply_successful_01",
				"pbw_objective_farm_supply_successful_02",
				"pbw_objective_farm_supply_successful_03",
				"pbw_objective_farm_supply_successful_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_farm_supply_midway = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_farm_supply_midway_01",
				"pbw_objective_farm_supply_midway_02",
				"pbw_objective_farm_supply_midway_03",
				"pbw_objective_farm_supply_midway_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_farm_supply_midway_01",
				"pbw_objective_farm_supply_midway_02",
				"pbw_objective_farm_supply_midway_03",
				"pbw_objective_farm_supply_midway_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_forest_ambush_spotting_broken_wagon = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_forest_ambush_spotting_broken_wagon_01",
				"pbw_objective_forest_ambush_spotting_broken_wagon_02",
				"pbw_objective_forest_ambush_spotting_broken_wagon_03",
				"pbw_objective_forest_ambush_spotting_broken_wagon_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_forest_ambush_spotting_broken_wagon_01",
				"pbw_objective_forest_ambush_spotting_broken_wagon_02",
				"pbw_objective_forest_ambush_spotting_broken_wagon_03",
				"pbw_objective_forest_ambush_spotting_broken_wagon_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_friendly_fire_witch_hunter = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_friendly_fire_witch_hunter_01",
				"pbw_gameplay_friendly_fire_witch_hunter_02",
				"pbw_gameplay_friendly_fire_witch_hunter_03",
				"pbw_gameplay_friendly_fire_witch_hunter_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"pbw_gameplay_friendly_fire_witch_hunter_01",
				"pbw_gameplay_friendly_fire_witch_hunter_02",
				"pbw_gameplay_friendly_fire_witch_hunter_03",
				"pbw_gameplay_friendly_fire_witch_hunter_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_end_boss_moon_break = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_end_boss_moon_break_01",
				"pbw_objective_end_boss_moon_break_02",
				"pbw_objective_end_boss_moon_break_03",
				"pbw_objective_end_boss_moon_break_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_end_boss_moon_break_01",
				"pbw_objective_end_boss_moon_break_02",
				"pbw_objective_end_boss_moon_break_03",
				"pbw_objective_end_boss_moon_break_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_magnus_tower_vista = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_objective_magnus_tower_vista_01",
				[2.0] = "pbw_objective_magnus_tower_vista_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_happy"
			},
			localization_strings = {
				[1.0] = "pbw_objective_magnus_tower_vista_01",
				[2.0] = "pbw_objective_magnus_tower_vista_02"
			},
			randomize_indexes = {}
		},
		pbw_farm_intro_c = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_farm_intro_c_01",
				[2.0] = "pbw_farm_intro_c_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_farm_intro_c_01",
				[2.0] = "pbw_farm_intro_c_02"
			},
			randomize_indexes = {}
		},
		pbw_objective_cemetery_done = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_cemetery_done_01",
				"pbw_objective_cemetery_done_02",
				"pbw_objective_cemetery_done_03",
				"pbw_objective_cemetery_done_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_cemetery_done_01",
				"pbw_objective_cemetery_done_02",
				"pbw_objective_cemetery_done_03",
				"pbw_objective_cemetery_done_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_witch_hunter_being_helped_up = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_witch_hunter_being_helped_up_01",
				"pbw_gameplay_witch_hunter_being_helped_up_02",
				"pbw_gameplay_witch_hunter_being_helped_up_03",
				"pbw_gameplay_witch_hunter_being_helped_up_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_witch_hunter_being_helped_up_01",
				"pbw_gameplay_witch_hunter_being_helped_up_02",
				"pbw_gameplay_witch_hunter_being_helped_up_03",
				"pbw_gameplay_witch_hunter_being_helped_up_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_casual_quotes_city_02 = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "casual_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_gameplay_casual_quotes_05",
				[2.0] = "pbw_gameplay_casual_quotes_07"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_gameplay_casual_quotes_05",
				[2.0] = "pbw_gameplay_casual_quotes_07"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_globadier_guck = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "bright_wizard",
			category = "player_alerts",
			dialogue_animations_n = 6,
			sound_events = {
				"pbw_gameplay_globadier_guck_01",
				"pbw_gameplay_globadier_guck_02",
				"pbw_gameplay_globadier_guck_03",
				"pbw_gameplay_globadier_guck_04",
				"pbw_gameplay_globadier_guck_05",
				"pbw_gameplay_globadier_guck_06"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_surprise",
				"face_surprise",
				"face_surprise",
				"face_surprise",
				"face_surprise",
				"face_surprise"
			},
			localization_strings = {
				"pbw_gameplay_globadier_guck_01",
				"pbw_gameplay_globadier_guck_02",
				"pbw_gameplay_globadier_guck_03",
				"pbw_gameplay_globadier_guck_04",
				"pbw_gameplay_globadier_guck_05",
				"pbw_gameplay_globadier_guck_06"
			},
			randomize_indexes = {}
		},
		pbw_objective_cemetery_spotting_plague_brew_stains = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_cemetery_spotting_plague_brew_stains_01",
				"pbw_objective_cemetery_spotting_plague_brew_stains_02",
				"pbw_objective_cemetery_spotting_plague_brew_stains_03",
				"pbw_objective_cemetery_spotting_plague_brew_stains_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_cemetery_spotting_plague_brew_stains_01",
				"pbw_objective_cemetery_spotting_plague_brew_stains_02",
				"pbw_objective_cemetery_spotting_plague_brew_stains_03",
				"pbw_objective_cemetery_spotting_plague_brew_stains_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_wizards_tower_illusion_room = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_wizards_tower_illusion_room_01",
				"pbw_objective_wizards_tower_illusion_room_02",
				"pbw_objective_wizards_tower_illusion_room_03",
				"pbw_objective_wizards_tower_illusion_room_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_wizards_tower_illusion_room_01",
				"pbw_objective_wizards_tower_illusion_room_02",
				"pbw_objective_wizards_tower_illusion_room_03",
				"pbw_objective_wizards_tower_illusion_room_04"
			},
			randomize_indexes = {}
		},
		pbw_forest_ambush_intro = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_forest_ambush_intro_a_01",
				[2.0] = "pbw_forest_ambush_intro_a_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_forest_ambush_intro_a_01",
				[2.0] = "pbw_forest_ambush_intro_a_02"
			},
			randomize_indexes = {}
		},
		pbw_objective_courtyard_mission_completed = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_courtyard_mission_completed_01",
				"pbw_objective_courtyard_mission_completed_02",
				"pbw_objective_courtyard_mission_completed_03",
				"pbw_objective_courtyard_mission_completed_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_courtyard_mission_completed_01",
				"pbw_objective_courtyard_mission_completed_02",
				"pbw_objective_courtyard_mission_completed_03",
				"pbw_objective_courtyard_mission_completed_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_merchant_district_treasure = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_objective_merchant_district_treasure_01",
				[2.0] = "pbw_objective_merchant_district_treasure_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_objective_merchant_district_treasure_01",
				[2.0] = "pbw_objective_merchant_district_treasure_02"
			},
			randomize_indexes = {}
		},
		pbw_objective_bridge_close_to_the_bridge = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_bridge_close_to_the_bridge_01",
				"pbw_objective_bridge_close_to_the_bridge_02",
				"pbw_objective_bridge_close_to_the_bridge_03",
				"pbw_objective_bridge_close_to_the_bridge_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_bridge_close_to_the_bridge_01",
				"pbw_objective_bridge_close_to_the_bridge_02",
				"pbw_objective_bridge_close_to_the_bridge_03",
				"pbw_objective_bridge_close_to_the_bridge_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_correct_path_street = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "default",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_correct_path_street_01",
				"pbw_objective_correct_path_street_02",
				"pbw_objective_correct_path_street_03",
				"pbw_objective_correct_path_street_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_correct_path_street_01",
				"pbw_objective_correct_path_street_02",
				"pbw_objective_correct_path_street_03",
				"pbw_objective_correct_path_street_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_bridge_shanty_town = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_bridge_shanty_town_01",
				"pbw_objective_bridge_shanty_town_02",
				"pbw_objective_bridge_shanty_town_03",
				"pbw_objective_bridge_shanty_town_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_bridge_shanty_town_01",
				"pbw_objective_bridge_shanty_town_02",
				"pbw_objective_bridge_shanty_town_03",
				"pbw_objective_bridge_shanty_town_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_end_boss_find_your_way_up = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_end_boss_find_your_way_up_01",
				"pbw_objective_end_boss_find_your_way_up_02",
				"pbw_objective_end_boss_find_your_way_up_03",
				"pbw_objective_end_boss_find_your_way_up_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_end_boss_find_your_way_up_01",
				"pbw_objective_end_boss_find_your_way_up_02",
				"pbw_objective_end_boss_find_your_way_up_03",
				"pbw_objective_end_boss_find_your_way_up_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_dwarf_ranger_being_helped = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_dwarf_ranger_being_helped_up_01",
				"pbw_gameplay_dwarf_ranger_being_helped_up_02",
				"pbw_gameplay_dwarf_ranger_being_helped_up_03",
				"pbw_gameplay_dwarf_ranger_being_helped_up_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_dwarf_ranger_being_helped_up_01",
				"pbw_gameplay_dwarf_ranger_being_helped_up_02",
				"pbw_gameplay_dwarf_ranger_being_helped_up_03",
				"pbw_gameplay_dwarf_ranger_being_helped_up_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_end_boss_destroy_pillar_first = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_end_boss_destroy_pillar_first_01",
				"pbw_objective_end_boss_destroy_pillar_first_02",
				"pbw_objective_end_boss_destroy_pillar_first_03",
				"pbw_objective_end_boss_destroy_pillar_first_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_end_boss_destroy_pillar_first_01",
				"pbw_objective_end_boss_destroy_pillar_first_02",
				"pbw_objective_end_boss_destroy_pillar_first_03",
				"pbw_objective_end_boss_destroy_pillar_first_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_activating_magic_weapon_offensive = {
			sound_events_n = 5,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 5,
			sound_events = {
				"pbw_gameplay_activating_magic_weapon_offensive_01",
				"pbw_gameplay_activating_magic_weapon_offensive_02",
				"pbw_gameplay_activating_magic_weapon_offensive_03",
				"pbw_gameplay_activating_magic_weapon_offensive_04",
				"pbw_gameplay_activating_magic_weapon_offensive_05"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_activating_magic_weapon_offensive_01",
				"pbw_gameplay_activating_magic_weapon_offensive_02",
				"pbw_gameplay_activating_magic_weapon_offensive_03",
				"pbw_gameplay_activating_magic_weapon_offensive_04",
				"pbw_gameplay_activating_magic_weapon_offensive_05"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_helped_by_wood_elf = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "help_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_helped_by_wood_elf_01",
				"pbw_gameplay_helped_by_wood_elf_02",
				"pbw_gameplay_helped_by_wood_elf_03",
				"pbw_gameplay_helped_by_wood_elf_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pbw_gameplay_helped_by_wood_elf_01",
				"pbw_gameplay_helped_by_wood_elf_02",
				"pbw_gameplay_helped_by_wood_elf_03",
				"pbw_gameplay_helped_by_wood_elf_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_farm_spotting_farm = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_objective_farm_spotting_farm_01",
				[2.0] = "pbw_objective_farm_spotting_farm_04"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_objective_farm_spotting_farm_01",
				[2.0] = "pbw_objective_farm_spotting_farm_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_bridge_crescendo_starting = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_bridge_crescendo_starting_01",
				"pbw_objective_bridge_crescendo_starting_02",
				"pbw_objective_bridge_crescendo_starting_03",
				"pbw_objective_bridge_crescendo_starting_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_bridge_crescendo_starting_01",
				"pbw_objective_bridge_crescendo_starting_02",
				"pbw_objective_bridge_crescendo_starting_03",
				"pbw_objective_bridge_crescendo_starting_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_farm_supply_started = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_farm_supply_started_01",
				"pbw_objective_farm_supply_started_02",
				"pbw_objective_farm_supply_started_03",
				"pbw_objective_farm_supply_started_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_farm_supply_started_01",
				"pbw_objective_farm_supply_started_02",
				"pbw_objective_farm_supply_started_03",
				"pbw_objective_farm_supply_started_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_seeing_a_skaven_rat_ogre = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "bright_wizard",
			category = "enemy_alerts",
			dialogue_animations_n = 6,
			sound_events = {
				"pbw_gameplay_seeing_a_skaven_rat_ogre_01",
				"pbw_gameplay_seeing_a_skaven_rat_ogre_04",
				"pbw_gameplay_seeing_a_skaven_rat_ogre_06",
				"pbw_gameplay_seeing_a_skaven_rat_ogre_02",
				"pbw_gameplay_seeing_a_skaven_rat_ogre_03",
				"pbw_gameplay_seeing_a_skaven_rat_ogre_05"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pbw_gameplay_seeing_a_skaven_rat_ogre_01",
				"pbw_gameplay_seeing_a_skaven_rat_ogre_04",
				"pbw_gameplay_seeing_a_skaven_rat_ogre_06",
				"pbw_gameplay_seeing_a_skaven_rat_ogre_02",
				"pbw_gameplay_seeing_a_skaven_rat_ogre_03",
				"pbw_gameplay_seeing_a_skaven_rat_ogre_05"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_dwarf_ranger_dead = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "player_alerts",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_dwarf_ranger_dead_01",
				"pbw_gameplay_dwarf_ranger_dead_02",
				"pbw_gameplay_dwarf_ranger_dead_03",
				"pbw_gameplay_dwarf_ranger_dead_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_dwarf_ranger_dead_01",
				"pbw_gameplay_dwarf_ranger_dead_02",
				"pbw_gameplay_dwarf_ranger_dead_03",
				"pbw_gameplay_dwarf_ranger_dead_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_spots_bomb = {
			sound_events_n = 5,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "bright_wizard",
			category = "seen_items",
			dialogue_animations_n = 5,
			sound_events = {
				"pbw_gameplay_spots_bomb_01",
				"pbw_gameplay_spots_bomb_02",
				"pbw_gameplay_spots_bomb_03",
				"pbw_gameplay_spots_bomb_04",
				"pbw_gameplay_spots_bomb_05"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pbw_gameplay_spots_bomb_01",
				"pbw_gameplay_spots_bomb_02",
				"pbw_gameplay_spots_bomb_03",
				"pbw_gameplay_spots_bomb_04",
				"pbw_gameplay_spots_bomb_05"
			},
			randomize_indexes = {}
		},
		pbw_objective_end_boss_hitting_bell_repeatedly = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_end_boss_hitting_bell_repeatedly_01",
				"pbw_objective_end_boss_hitting_bell_repeatedly_02",
				"pbw_objective_end_boss_hitting_bell_repeatedly_03",
				"pbw_objective_end_boss_hitting_bell_repeatedly_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_end_boss_hitting_bell_repeatedly_01",
				"pbw_objective_end_boss_hitting_bell_repeatedly_02",
				"pbw_objective_end_boss_hitting_bell_repeatedly_03",
				"pbw_objective_end_boss_hitting_bell_repeatedly_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_sewers_entering_sewers = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_sewers_entering_sewers_01",
				"pbw_objective_sewers_entering_sewers_02",
				"pbw_objective_sewers_entering_sewers_03",
				"pbw_objective_sewers_entering_sewers_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_sewers_entering_sewers_01",
				"pbw_objective_sewers_entering_sewers_02",
				"pbw_objective_sewers_entering_sewers_03",
				"pbw_objective_sewers_entering_sewers_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_goal_achieved_more_left = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "default",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_goal_achieved_more_left_01",
				"pbw_objective_goal_achieved_more_left_02",
				"pbw_objective_goal_achieved_more_left_03",
				"pbw_objective_goal_achieved_more_left_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_goal_achieved_more_left_01",
				"pbw_objective_goal_achieved_more_left_02",
				"pbw_objective_goal_achieved_more_left_03",
				"pbw_objective_goal_achieved_more_left_04"
			},
			randomize_indexes = {}
		},
		pbw_spotting_ferry_lady = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "bright_wizard",
			category = "default",
			dialogue_animations_n = 6,
			sound_events = {
				"pbw_spotting_ferry_lady_01",
				"pbw_spotting_ferry_lady_02",
				"pbw_spotting_ferry_lady_03",
				"pbw_spotting_ferry_lady_04",
				"pbw_spotting_ferry_lady_05",
				"pbw_spotting_ferry_lady_06"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_spotting_ferry_lady_01",
				"pbw_spotting_ferry_lady_02",
				"pbw_spotting_ferry_lady_03",
				"pbw_spotting_ferry_lady_04",
				"pbw_spotting_ferry_lady_05",
				"pbw_spotting_ferry_lady_06"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_wood_elf_on_a_frenzy = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_wood_elf_on_a_frenzy_01",
				"pbw_gameplay_wood_elf_on_a_frenzy_02",
				"pbw_gameplay_wood_elf_on_a_frenzy_03",
				"pbw_gameplay_wood_elf_on_a_frenzy_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_wood_elf_on_a_frenzy_01",
				"pbw_gameplay_wood_elf_on_a_frenzy_02",
				"pbw_gameplay_wood_elf_on_a_frenzy_03",
				"pbw_gameplay_wood_elf_on_a_frenzy_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_special_enemy_kill_melee = {
			sound_events_n = 5,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 5,
			sound_events = {
				"pbw_gameplay_special_enemy_kill_melee_01",
				"pbw_gameplay_special_enemy_kill_melee_03",
				"pbw_gameplay_special_enemy_kill_melee_04",
				"pbw_gameplay_special_enemy_kill_melee_05",
				"pbw_gameplay_special_enemy_kill_melee_06"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_special_enemy_kill_melee_01",
				"pbw_gameplay_special_enemy_kill_melee_03",
				"pbw_gameplay_special_enemy_kill_melee_04",
				"pbw_gameplay_special_enemy_kill_melee_05",
				"pbw_gameplay_special_enemy_kill_melee_06"
			},
			randomize_indexes = {}
		},
		pbw_objective_city_wall_seeing_bell = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_city_wall_seeing_bell_01",
				"pbw_objective_city_wall_seeing_bell_02",
				"pbw_objective_city_wall_seeing_bell_03",
				"pbw_objective_city_wall_seeing_bell_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_city_wall_seeing_bell_01",
				"pbw_objective_city_wall_seeing_bell_02",
				"pbw_objective_city_wall_seeing_bell_03",
				"pbw_objective_city_wall_seeing_bell_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_city_wall_bringing_down_second_attachment = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_city_wall_bringing_down_second_attachment_01",
				"pbw_objective_city_wall_bringing_down_second_attachment_02",
				"pbw_objective_city_wall_bringing_down_second_attachment_03",
				"pbw_objective_city_wall_bringing_down_second_attachment_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_city_wall_bringing_down_second_attachment_01",
				"pbw_objective_city_wall_bringing_down_second_attachment_02",
				"pbw_objective_city_wall_bringing_down_second_attachment_03",
				"pbw_objective_city_wall_bringing_down_second_attachment_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_wizards_tower_wastelands = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_wizards_tower_wastelands_01",
				"pbw_objective_wizards_tower_wastelands_02",
				"pbw_objective_wizards_tower_wastelands_03",
				"pbw_objective_wizards_tower_wastelands_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_wizards_tower_wastelands_01",
				"pbw_objective_wizards_tower_wastelands_02",
				"pbw_objective_wizards_tower_wastelands_03",
				"pbw_objective_wizards_tower_wastelands_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_merchant_district_drop_down_street = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_objective_merchant_district_drop_down_street_01",
				[2.0] = "pbw_objective_merchant_district_drop_down_street_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_objective_merchant_district_drop_down_street_01",
				[2.0] = "pbw_objective_merchant_district_drop_down_street_02"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_seeing_a_globadier = {
			sound_events_n = 6,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "bright_wizard",
			category = "enemy_alerts",
			dialogue_animations_n = 6,
			sound_events = {
				"pbw_gameplay_seeing_a_globadier_01",
				"pbw_gameplay_seeing_a_globadier_03",
				"pbw_gameplay_seeing_a_globadier_04",
				"pbw_gameplay_seeing_a_globadier_02",
				"pbw_gameplay_seeing_a_globadier_05",
				"pbw_gameplay_seeing_a_globadier_06"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt"
			},
			localization_strings = {
				"pbw_gameplay_seeing_a_globadier_01",
				"pbw_gameplay_seeing_a_globadier_03",
				"pbw_gameplay_seeing_a_globadier_04",
				"pbw_gameplay_seeing_a_globadier_02",
				"pbw_gameplay_seeing_a_globadier_05",
				"pbw_gameplay_seeing_a_globadier_06"
			},
			randomize_indexes = {}
		},
		pbw_objective_skaven_tunnels_winding_tunnels = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_skaven_tunnels_winding_tunnels_01",
				"pbw_objective_skaven_tunnels_winding_tunnels_02",
				"pbw_objective_skaven_tunnels_winding_tunnels_03",
				"pbw_objective_skaven_tunnels_winding_tunnels_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_skaven_tunnels_winding_tunnels_01",
				"pbw_objective_skaven_tunnels_winding_tunnels_02",
				"pbw_objective_skaven_tunnels_winding_tunnels_03",
				"pbw_objective_skaven_tunnels_winding_tunnels_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_merchant_district_through_granary = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_objective_merchant_district_through_granary_01",
				[2.0] = "pbw_objective_merchant_district_through_granary_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_objective_merchant_district_through_granary_01",
				[2.0] = "pbw_objective_merchant_district_through_granary_02"
			},
			randomize_indexes = {}
		},
		pbw_forest_ambush_intro_b = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_forest_ambush_intro_b_01",
				[2.0] = "pbw_forest_ambush_intro_b_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_forest_ambush_intro_b_01",
				[2.0] = "pbw_forest_ambush_intro_b_02"
			},
			randomize_indexes = {}
		},
		pbw_skaven_tunnels_intro = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_skaven_tunnels_intro_a_01",
				[2.0] = "pbw_skaven_tunnels_intro_a_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_skaven_tunnels_intro_a_01",
				[2.0] = "pbw_skaven_tunnels_intro_a_02"
			},
			randomize_indexes = {}
		},
		pbw_objective_skaven_tunnels_reaching_highway = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_skaven_tunnels_reaching_highway_01",
				"pbw_objective_skaven_tunnels_reaching_highway_02",
				"pbw_objective_skaven_tunnels_reaching_highway_03",
				"pbw_objective_skaven_tunnels_reaching_highway_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_skaven_tunnels_reaching_highway_01",
				"pbw_objective_skaven_tunnels_reaching_highway_02",
				"pbw_objective_skaven_tunnels_reaching_highway_03",
				"pbw_objective_skaven_tunnels_reaching_highway_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_helped_by_witch_hunter = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "help_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_helped_by_witch_hunter_01",
				"pbw_gameplay_helped_by_witch_hunter_02",
				"pbw_gameplay_helped_by_witch_hunter_03",
				"pbw_gameplay_helped_by_witch_hunter_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pbw_gameplay_helped_by_witch_hunter_01",
				"pbw_gameplay_helped_by_witch_hunter_02",
				"pbw_gameplay_helped_by_witch_hunter_03",
				"pbw_gameplay_helped_by_witch_hunter_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_city_wall_bringing_down_third_attachment = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_city_wall_bringing_down_third_attachment_01",
				"pbw_objective_city_wall_bringing_down_third_attachment_02",
				"pbw_objective_city_wall_bringing_down_third_attachment_03",
				"pbw_objective_city_wall_bringing_down_third_attachment_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_city_wall_bringing_down_third_attachment_01",
				"pbw_objective_city_wall_bringing_down_third_attachment_02",
				"pbw_objective_city_wall_bringing_down_third_attachment_03",
				"pbw_objective_city_wall_bringing_down_third_attachment_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_magnus_tower_to_rooftops = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_objective_magnus_tower_to_rooftops_01",
				[2.0] = "pbw_objective_magnus_tower_to_rooftops_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_objective_magnus_tower_to_rooftops_01",
				[2.0] = "pbw_objective_magnus_tower_to_rooftops_02"
			},
			randomize_indexes = {}
		},
		pbw_objective_city_wall_bringing_down_first_attachment = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_city_wall_bringing_down_first_attachment_01",
				"pbw_objective_city_wall_bringing_down_first_attachment_02",
				"pbw_objective_city_wall_bringing_down_first_attachment_03",
				"pbw_objective_city_wall_bringing_down_first_attachment_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_city_wall_bringing_down_first_attachment_01",
				"pbw_objective_city_wall_bringing_down_first_attachment_02",
				"pbw_objective_city_wall_bringing_down_first_attachment_03",
				"pbw_objective_city_wall_bringing_down_first_attachment_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_magnus_tower_crescendo_starting = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_magnus_tower_crescendo_starting_01",
				"pbw_objective_magnus_tower_crescendo_starting_02",
				"pbw_objective_magnus_tower_crescendo_starting_03",
				"pbw_objective_magnus_tower_crescendo_starting_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"pbw_objective_magnus_tower_crescendo_starting_01",
				"pbw_objective_magnus_tower_crescendo_starting_02",
				"pbw_objective_magnus_tower_crescendo_starting_03",
				"pbw_objective_magnus_tower_crescendo_starting_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_forest_ambush_ring_bell = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_forest_ambush_ring_bell_01",
				"pbw_objective_forest_ambush_ring_bell_02",
				"pbw_objective_forest_ambush_ring_bell_03",
				"pbw_objective_forest_ambush_ring_bell_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_forest_ambush_ring_bell_01",
				"pbw_objective_forest_ambush_ring_bell_02",
				"pbw_objective_forest_ambush_ring_bell_03",
				"pbw_objective_forest_ambush_ring_bell_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_cemetery_bringing_down_second_attachment = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_cemetery_bringing_down_second_attachment_01",
				"pbw_objective_cemetery_bringing_down_second_attachment_02",
				"pbw_objective_cemetery_bringing_down_second_attachment_03",
				"pbw_objective_cemetery_bringing_down_second_attachment_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_cemetery_bringing_down_second_attachment_01",
				"pbw_objective_cemetery_bringing_down_second_attachment_02",
				"pbw_objective_cemetery_bringing_down_second_attachment_03",
				"pbw_objective_cemetery_bringing_down_second_attachment_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_magnus_tower_seeing_guardhouse = {
			sound_events_n = 2,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pbw_objective_magnus_tower_seeing_guardhouse_01",
				[2.0] = "pbw_objective_magnus_tower_seeing_guardhouse_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_objective_magnus_tower_seeing_guardhouse_01",
				[2.0] = "pbw_objective_magnus_tower_seeing_guardhouse_02"
			},
			randomize_indexes = {}
		},
		pbw_objective_cemetery_destroyed_plague_cauldron = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_cemetery_destroyed_plague_cauldron_01",
				"pbw_objective_cemetery_destroyed_plague_cauldron_02",
				"pbw_objective_cemetery_destroyed_plague_cauldron_03",
				"pbw_objective_cemetery_destroyed_plague_cauldron_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_cemetery_destroyed_plague_cauldron_01",
				"pbw_objective_cemetery_destroyed_plague_cauldron_02",
				"pbw_objective_cemetery_destroyed_plague_cauldron_03",
				"pbw_objective_cemetery_destroyed_plague_cauldron_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_witch_hunter_on_a_frenzy = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_gameplay_witch_hunter_on_a_frenzy_01",
				"pbw_gameplay_witch_hunter_on_a_frenzy_02",
				"pbw_gameplay_witch_hunter_on_a_frenzy_03",
				"pbw_gameplay_witch_hunter_on_a_frenzy_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_witch_hunter_on_a_frenzy_01",
				"pbw_gameplay_witch_hunter_on_a_frenzy_02",
				"pbw_gameplay_witch_hunter_on_a_frenzy_03",
				"pbw_gameplay_witch_hunter_on_a_frenzy_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_forest_ambush_spotting_ruins = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_forest_ambush_spotting_ruins_01",
				"pbw_objective_forest_ambush_spotting_ruins_02",
				"pbw_objective_forest_ambush_spotting_ruins_03",
				"pbw_objective_forest_ambush_spotting_ruins_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_forest_ambush_spotting_ruins_01",
				"pbw_objective_forest_ambush_spotting_ruins_02",
				"pbw_objective_forest_ambush_spotting_ruins_03",
				"pbw_objective_forest_ambush_spotting_ruins_04"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_armoured_enemy_witch_hunter = {
			sound_events_n = 3,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 3,
			sound_events = {
				"pbw_gameplay_armoured_enemy_witch_hunter_01",
				"pbw_gameplay_armoured_enemy_witch_hunter_02",
				"pbw_gameplay_armoured_enemy_witch_hunter_03"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_armoured_enemy_witch_hunter_01",
				"pbw_gameplay_armoured_enemy_witch_hunter_02",
				"pbw_gameplay_armoured_enemy_witch_hunter_03"
			},
			randomize_indexes = {}
		},
		pbw_gameplay_using_potion = {
			sound_events_n = 3,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "bright_wizard",
			category = "player_feedback",
			dialogue_animations_n = 3,
			sound_events = {
				"pbw_gameplay_using_potion_01",
				"pbw_gameplay_using_potion_02",
				"pbw_gameplay_using_potion_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_using_potion_01",
				"pbw_gameplay_using_potion_02",
				"pbw_gameplay_using_potion_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_correct_path_door = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "default",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_correct_path_door_01",
				"pbw_objective_correct_path_door_02",
				"pbw_objective_correct_path_door_03",
				"pbw_objective_correct_path_door_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_correct_path_door_01",
				"pbw_objective_correct_path_door_02",
				"pbw_objective_correct_path_door_03",
				"pbw_objective_correct_path_door_04"
			},
			randomize_indexes = {}
		},
		pbw_objective_end_boss_outro = {
			sound_events_n = 4,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard",
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pbw_objective_end_boss_outro_01",
				"pbw_objective_end_boss_outro_02",
				"pbw_objective_end_boss_outro_03",
				"pbw_objective_end_boss_outro_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_objective_end_boss_outro_01",
				"pbw_objective_end_boss_outro_02",
				"pbw_objective_end_boss_outro_03",
				"pbw_objective_end_boss_outro_04"
			},
			randomize_indexes = {}
		}
	})

	return 
end
