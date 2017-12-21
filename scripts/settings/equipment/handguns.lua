local push_radius = 2
local weapon_template = weapon_template or {}
weapon_template.actions = {
	action_one = {
		default = {
			attack_template_damage_type = "sniper_shot_AP",
			kind = "handgun",
			damage_window_start = 0.1,
			total_time_secondary = 2,
			max_penetrations = 1,
			anim_event_no_ammo_left = "attack_shoot_last",
			charge_value = "light_attack",
			attack_template = "shot_sniper",
			reload_when_out_of_ammo = true,
			alert_sound_range_fire = 10,
			alert_sound_range_hit = 2,
			hit_effect = "bullet_impact",
			anim_event_last_ammo = "attack_shoot_last",
			damage_window_end = 0,
			ammo_usage = 1,
			fire_time = 0,
			anim_event_secondary = "reload",
			anim_event = "attack_shoot",
			total_time = 0.66,
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_two",
					input = "action_two"
				},
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_wield",
					input = "action_wield"
				}
			}
		},
		zoomed_shot = {
			attack_template_damage_type = "sniper_shot_AP",
			kind = "handgun",
			damage_window_start = 0.1,
			max_penetrations = 1,
			anim_event_no_ammo_left = "attack_shoot_last",
			charge_value = "light_attack",
			attack_template = "shot_sniper",
			reload_when_out_of_ammo = true,
			alert_sound_range_fire = 10,
			alert_sound_range_hit = 2,
			hit_effect = "bullet_impact",
			anim_event_last_ammo = "attack_shoot_last",
			damage_window_end = 0,
			ammo_usage = 1,
			anim_end_event = "to_unzoom",
			fire_time = 0,
			anim_event = "attack_shoot",
			total_time = 0.66,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action"
			end,
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			}
		},
		zoom_cancel = {
			kind = "dummy",
			keep_buffer = true,
			total_time = 0,
			allowed_chain_actions = {}
		}
	},
	action_two = {
		default = {
			minimum_hold_time = 0.3,
			anim_event = "to_zoom",
			anim_end_event = "to_unzoom",
			cooldown = 0.3,
			kind = "aim",
			keep_buffer = true,
			can_abort_reload = false,
			hold_input = "action_two_hold",
			ammo_requirement = 1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.25,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "zoomed_shot",
					start_time = 0.4,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			},
			zoom_condition_function = function ()
				return true
			end,
			unzoom_condition_function = function (end_reason)
				return end_reason ~= "new_interupting_action"
			end
		}
	},
	action_inspect = ActionTemplates.action_inspect,
	action_wield = ActionTemplates.wield,
	action_instant_grenade_throw = ActionTemplates.instant_equip_grenade,
	action_instant_heal_self = ActionTemplates.instant_equip_and_heal_self,
	action_instant_heal_other = ActionTemplates.instant_equip_and_heal_other,
	action_instant_drink_potion = ActionTemplates.instant_equip_and_drink_potion,
	action_instant_equip_tome = ActionTemplates.instant_equip_tome,
	action_instant_equip_grimoire = ActionTemplates.instant_equip_grimoire,
	action_instant_equip_grenade = ActionTemplates.instant_equip_grenade_only,
	action_instant_equip_healing_draught = ActionTemplates.instant_equip_and_drink_healing_draught
}
weapon_template.ammo_data = {
	ammo_hand = "right",
	ammo_per_reload = 1,
	max_ammo = 24,
	ammo_per_clip = 1,
	play_reload_anim_on_wield_reload = true,
	reload_time = 2.5,
	reload_on_ammo_pickup = true
}
weapon_template.attack_meta_data = {
	aim_at_node = "j_spine",
	minimum_charge_time = 0.45,
	charged_attack_action_name = "zoomed_shot",
	can_charge_shot = true,
	charge_above_range = 30,
	charge_when_obstructed = false,
	ignore_enemies_for_obstruction = true,
	aim_at_node_charged = "j_head"
}
weapon_template.default_spread_template = "handgun"
weapon_template.right_hand_unit = ""
weapon_template.right_hand_attachment_node_linking = AttachmentNodeLinking.rifles
weapon_template.display_unit = "units/weapons/weapon_display/display_rifle"
weapon_template.wield_anim = "to_handgun"
weapon_template.wield_anim_no_ammo = "to_handgun_noammo"
weapon_template.crosshair_style = "default"
weapon_template.reload_event = "reload"
weapon_template.buff_type = BuffTypes.RANGED
weapon_template.no_dodge = true
weapon_template.wwise_dep_right_hand = {
	"wwise/handgun_rifle"
}
weapon_template.compare_statistics = {
	attacks = {
		light_attack = {
			speed = 0.2,
			range = 0.8,
			damage = 0.90625,
			targets = 0.4,
			stagger = 0.6
		},
		heavy_attack = {
			speed = 0.2,
			range = 0.9,
			damage = 0.90625,
			targets = 0.4,
			stagger = 0.6
		}
	},
	perks = {
		light_attack = {
			"head_shot",
			"armor_penetration"
		},
		heavy_attack = {
			"head_shot",
			"armor_penetration"
		}
	}
}
Weapons = Weapons or {}
Weapons.handgun_template_1 = table.clone(weapon_template)
Weapons.handgun_template_1_co = table.clone(weapon_template)
Weapons.handgun_template_1_co.compare_statistics.attacks.light_attack.damage = 0.9375
Weapons.handgun_template_1_co.compare_statistics.attacks.heavy_attack.damage = 0.9375
Weapons.handgun_template_1_t2 = table.clone(weapon_template)
Weapons.handgun_template_1_t2.actions.action_one.default.attack_template_damage_type = "sniper_shot_AP_t2"
Weapons.handgun_template_1_t2.actions.action_one.default.max_penetrations = 2
Weapons.handgun_template_1_t2.actions.action_one.zoomed_shot.attack_template_damage_type = "sniper_shot_AP_t2"
Weapons.handgun_template_1_t2.actions.action_one.zoomed_shot.max_penetrations = 2
Weapons.handgun_template_1_t2.compare_statistics.attacks.light_attack.damage = 0.96875
Weapons.handgun_template_1_t2.compare_statistics.attacks.heavy_attack.damage = 0.96875
Weapons.handgun_template_1_t3 = table.clone(weapon_template)
Weapons.handgun_template_1_t3.actions.action_one.default.attack_template_damage_type = "sniper_shot_AP_t3"
Weapons.handgun_template_1_t3.actions.action_one.default.max_penetrations = 3
Weapons.handgun_template_1_t3.actions.action_one.zoomed_shot.attack_template_damage_type = "sniper_shot_AP_t3"
Weapons.handgun_template_1_t3.actions.action_one.zoomed_shot.max_penetrations = 3
Weapons.handgun_template_1_t3.compare_statistics.attacks.light_attack.damage = 1
Weapons.handgun_template_1_t3.compare_statistics.attacks.heavy_attack.damage = 1

return 
