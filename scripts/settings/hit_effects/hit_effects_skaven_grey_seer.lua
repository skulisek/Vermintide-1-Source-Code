wounding_damage_types = {}
HitEffectsSkavenGreySeer = {
	default = {
		flow_event = "lua_on_damage_taken",
		armour_type = "cloth",
		animations = {
			"hit_reaction"
		}
	},
	default_noDamage = {
		flow_event = "lua_on_damage_taken",
		husk_effect_name = "fx/hit_armored",
		armour_type = "cloth",
		extra_conditions = {
			damage = false
		},
		animations = {
			"hit_reaction"
		}
	},
	default_death = {
		armour_type = "cloth",
		extra_conditions = {
			death = true
		},
		animations = {
			"ragdoll"
		}
	},
	heavy_slashing_buffed = {
		inherits = "default",
		do_dismember = true,
		flow_event = "lua_on_damage_taken",
		extra_conditions = {
			damage_type = "heavy_slashing_buffed"
		},
		animations = {
			"ragdoll"
		},
		push = {
			distal_force = 30,
			vertical_force = 35,
			lateral_force = 40
		}
	},
	shot_default = {
		hit_effect_name = "fx/hit_armored",
		husk_hit_effect_name = "fx/hit_armored",
		armour_type = "cloth",
		extra_conditions = {
			damage_type = {}
		},
		animations = {
			"hit_reaction"
		}
	},
	arrow_default = {
		hit_effect_name = "fx/hit_armored",
		husk_hit_effect_name = "fx/hit_armored",
		armour_type = "flesh",
		extra_conditions = {
			damage_type = {}
		},
		animations = {
			"hit_reaction"
		}
	}
}
HitEffectsSkavenGreySeer = table.create_copy(HitEffectsSkavenGreySeer, HitEffectsSkavenGreySeer)

return
