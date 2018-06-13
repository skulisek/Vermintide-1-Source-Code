local breed_data = {
	target_selection = "pick_closest_target",
	hit_effect_template = "HitEffectsSkavenLootRat",
	no_stagger_duration = true,
	awards_positive_reinforcement_message = true,
	has_inventory = true,
	dodge_crosshair_delay = 0.1,
	run_speed = 5,
	walk_speed = 3,
	exchange_order = 1,
	animation_sync_rpc = "rpc_sync_anim_state_3",
	detection_radius = 12,
	hit_reaction = "ai_default",
	armor_category = 1,
	bone_lod_level = 1,
	wield_inventory_on_spawn = true,
	target_selection_alerted = "pick_closest_target_infinte_range",
	default_inventory_template = "loot_rat_sack",
	dodge_cooldown = 2,
	smart_targeting_outer_width = 0.6,
	dodge_crosshair_radius = 1,
	flingable = true,
	smart_targeting_height_multiplier = 3.5,
	death_reaction = "loot_rat",
	radius = 1,
	dodge_crosshair_max_distance = 30,
	unit_template = "ai_unit_loot_rat",
	perception_previous_attacker_stickyness_value = 0,
	smart_object_template = "special",
	proximity_system_check = true,
	poison_resistance = 70,
	perception = "perception_regular",
	player_locomotion_constrain_radius = 0.7,
	dodge_crosshair_min_distance = 4,
	weapon_reach = 1.6,
	smart_targeting_width = 0.2,
	behavior = "loot_rat",
	base_unit = "units/beings/enemies/skaven_loot_rat/chr_skaven_loot_rat",
	clean_spawn = true,
	dodge_damage_points = 20,
	size_variation_range = {
		1,
		1
	},
	hit_zones = {
		full = {
			prio = 1,
			actors = {}
		},
		head = {
			prio = 1,
			actors = {
				"c_head"
			},
			push_actors = {
				"j_head",
				"j_neck",
				"j_spine1"
			}
		},
		neck = {
			prio = 1,
			actors = {
				"c_neck"
			},
			push_actors = {
				"j_head",
				"j_neck",
				"j_spine1"
			}
		},
		torso = {
			prio = 3,
			actors = {
				"c_spine2",
				"c_spine",
				"c_hips"
			},
			push_actors = {
				"j_neck",
				"j_spine1",
				"j_hips"
			}
		},
		left_arm = {
			prio = 4,
			actors = {
				"c_leftarm",
				"c_leftforearm",
				"c_lefthand"
			},
			push_actors = {
				"j_spine1",
				"j_leftshoulder",
				"j_leftarm"
			}
		},
		right_arm = {
			prio = 4,
			actors = {
				"c_rightarm",
				"c_rightforearm",
				"c_righthand"
			},
			push_actors = {
				"j_spine1",
				"j_rightshoulder",
				"j_rightarm"
			}
		},
		left_leg = {
			prio = 4,
			actors = {
				"c_leftupleg",
				"c_leftleg",
				"c_leftfoot",
				"c_lefttoebase"
			},
			push_actors = {
				"j_leftfoot",
				"j_rightfoot",
				"j_hips"
			}
		},
		right_leg = {
			prio = 4,
			actors = {
				"c_rightupleg",
				"c_rightleg",
				"c_rightfoot",
				"c_righttoebase"
			},
			push_actors = {
				"j_leftfoot",
				"j_rightfoot",
				"j_hips"
			}
		},
		tail = {
			prio = 4,
			actors = {
				"c_tail1",
				"c_tail2",
				"c_tail3",
				"c_tail4",
				"c_tail5",
				"c_tail6"
			},
			push_actors = {
				"j_hips",
				"j_taill"
			}
		},
		afro = {
			prio = 5,
			actors = {
				"c_afro"
			}
		}
	},
	hitbox_ragdoll_translation = {
		c_leftupleg = "j_leftupleg",
		c_rightarm = "j_rightarm",
		c_righthand = "j_righthand",
		c_rightfoot = "j_rightfoot",
		c_tail2 = "j_tail2",
		c_rightleg = "j_rightleg",
		c_lefthand = "j_lefthand",
		c_tail5 = "j_tail5",
		c_leftleg = "j_leftleg",
		c_spine2 = "j_spine1",
		c_tail6 = "j_tail6",
		c_rightupleg = "j_rightupleg",
		c_tail1 = "j_taill",
		c_tail4 = "j_tail4",
		c_spine = "j_spine",
		c_head = "j_head",
		c_leftforearm = "j_leftforearm",
		c_righttoebase = "j_righttoebase",
		c_leftfoot = "j_leftfoot",
		c_neck = "j_neck",
		c_tail3 = "j_tail3",
		c_rightforearm = "j_rightforearm",
		c_leftarm = "j_leftarm",
		c_hips = "j_hips",
		c_lefttoebase = "j_lefttoebase"
	},
	ragdoll_actor_thickness = {
		j_rightfoot = 0.2,
		j_taill = 0.05,
		j_leftarm = 0.2,
		j_leftforearm = 0.2,
		j_leftleg = 0.2,
		j_tail3 = 0.05,
		j_rightarm = 0.2,
		j_leftupleg = 0.2,
		j_rightshoulder = 0.3,
		j_righthand = 0.2,
		j_righttoebase = 0.2,
		j_tail4 = 0.05,
		j_hips = 0.3,
		j_leftshoulder = 0.3,
		j_rightleg = 0.2,
		j_leftfoot = 0.2,
		j_spine1 = 0.3,
		j_tail5 = 0.05,
		j_rightupleg = 0.2,
		j_tail6 = 0.05,
		j_lefttoebase = 0.2,
		j_head = 0.3,
		j_neck = 0.3,
		j_spine = 0.3,
		j_lefthand = 0.2,
		j_rightforearm = 0.2,
		j_tail2 = 0.05
	},
	allowed_layers = {
		planks = 1.5,
		ledges = 10,
		smoke_grenade = 4,
		jumps = 10,
		bot_ratling_gun_fire = 10,
		ledges_with_fence = 10,
		doors = 1.5,
		teleporters = 5,
		bot_poison_wind = 10,
		fire_grenade = 10
	},
	max_health = {
		20,
		30,
		35,
		40,
		50
	},
	num_push_anims = {
		push_backward = 4
	},
	debug_color = {
		255,
		100,
		200,
		200
	},
	run_on_update = AiBreedSnippets.on_loot_rat_update,
	run_on_alerted = AiBreedSnippets.on_loot_rat_alerted,
	run_on_stagger_action_done = AiBreedSnippets.on_loot_rat_stagger_action_done,
	run_on_death = AiBreedSnippets.spawn_event_item_special
}
Breeds.skaven_loot_rat = table.create_copy(Breeds.skaven_loot_rat, breed_data)
local action_data = {
	alerted = {
		cooldown = -1,
		action_weight = 1,
		start_anims_name = {
			bwd = "alerted_bwd",
			fwd = "alerted_fwd",
			left = "alerted_left",
			right = "alerted_right"
		},
		start_anims_data = {
			alerted_fwd = {},
			alerted_bwd = {
				dir = -1,
				rad = math.pi
			},
			alerted_left = {
				dir = 1,
				rad = math.pi / 2
			},
			alerted_right = {
				dir = -1,
				rad = math.pi / 2
			}
		}
	},
	smash_door = {
		unblockable = true,
		name = "smash_door",
		damage_type = "cutting",
		move_anim = "move_fwd",
		attack_anim = "smash_door",
		damage = {
			5,
			5,
			5
		}
	},
	flee = {
		escaped_players_distance_sq = 10000,
		drive_zone_radius_sq = 225,
		action_weight = 1,
		start_anims_name = {
			bwd = "move_start_bwd",
			fwd = "move_start_fwd",
			left = "move_start_left",
			right = "move_start_right"
		},
		start_anims_data = {
			move_start_fwd = {},
			move_start_bwd = {
				dir = -1,
				rad = math.pi
			},
			move_start_left = {
				dir = 1,
				rad = math.pi / 2
			},
			move_start_right = {
				dir = -1,
				rad = math.pi / 2
			}
		},
		considerations = UtilityConsiderations.clan_rat_follow
	},
	idle = {
		sound_when_near_distance_sqr = 900,
		sound_when_near_event = "Play_loot_rat_near_sound"
	},
	stagger = {
		stagger_anims = {
			{
				fwd = {
					"stun_fwd_sword"
				},
				bwd = {
					"stun_bwd_sword"
				},
				left = {
					"stun_left_sword"
				},
				right = {
					"stun_right_sword"
				}
			},
			{
				fwd = {
					"stun_fwd_sword"
				},
				bwd = {
					"stun_bwd_sword"
				},
				left = {
					"stun_left_sword"
				},
				right = {
					"stun_right_sword"
				}
			},
			{
				fwd = {
					"stagger_fwd_gather"
				},
				bwd = {
					"stagger_fwd_gather"
				},
				left = {
					"stagger_fwd_gather"
				},
				right = {
					"stagger_fwd_gather"
				}
			},
			{
				fwd = {
					"stagger_fwd_gather"
				},
				bwd = {
					"stagger_fwd_gather"
				},
				left = {
					"stagger_fwd_gather"
				},
				right = {
					"stagger_fwd_gather"
				}
			},
			{
				fwd = {
					"stagger_fwd_gather"
				},
				bwd = {
					"stagger_fwd_gather"
				},
				left = {
					"stagger_fwd_gather"
				},
				right = {
					"stagger_fwd_gather"
				}
			},
			{
				fwd = {
					"stagger_fwd_gather"
				},
				bwd = {
					"stagger_fwd_gather"
				},
				left = {
					"stagger_fwd_gather"
				},
				right = {
					"stagger_fwd_gather"
				}
			},
			{
				fwd = {
					"stagger_fwd_gather"
				},
				bwd = {
					"stagger_fwd_gather"
				},
				left = {
					"stagger_fwd_gather"
				},
				right = {
					"stagger_fwd_gather"
				}
			}
		}
	},
	dodge = {
		dodge_time = 1.9,
		dodge_distance = 2,
		dodge_anim = "dodge_run_fwd"
	}
}
BreedActions.skaven_loot_rat = table.create_copy(BreedActions.skaven_loot_rat, action_data)

return
