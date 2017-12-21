-- WARNING: Error occurred during decompilation.
--   Code may be incomplete or incorrect.
ActionShieldSlam = class(ActionShieldSlam)
ActionShieldSlam.init = function (self, world, item_name, is_server, owner_unit, weapon_unit, first_person_unit, weapon_unit, weapon_system)
	self.owner_unit = owner_unit
	self.weapon_unit = weapon_unit
	self.is_server = is_server
	self.weapon_system = weapon_system
	self.item_name = item_name
	self.wwise_world = Managers.world:wwise_world(world)
	self.world = world

	if ScriptUnit.has_extension(weapon_unit, "ammo_system") then
		self.ammo_extension = ScriptUnit.extension(weapon_unit, "ammo_system")
	end

	if ScriptUnit.has_extension(weapon_unit, "overcharge_system") then
		self.overcharge_extension = ScriptUnit.extension(weapon_unit, "overcharge_system")
	end

	if ScriptUnit.has_extension(owner_unit, "status_system") then
		self.status_extension = ScriptUnit.extension(owner_unit, "status_system")
	end

	self.hit_units = {}

	return 
end
ActionShieldSlam.client_owner_start_action = function (self, new_action, t)
	self.current_action = new_action
	self.target_breed_unit = nil
	local ammo_extension = self.ammo_extension

	if ammo_extension and ammo_extension.is_reloading(ammo_extension) then
		ammo_extension.abort_reload(ammo_extension)
	end

	local first_person_extension = ScriptUnit.extension(self.owner_unit, "first_person_system")
	local physics_world = World.get_data(self.world, "physics_world")
	local pos = first_person_extension.current_position(first_person_extension)
	local rot = first_person_extension.current_rotation(first_person_extension)
	local direction = Quaternion.forward(rot)
	local collision_filter = "filter_player_ray_projectile_no_player"
	local result, hit_position, _, _, actor = PhysicsWorld.immediate_raycast(physics_world, pos, direction, new_action.dedicated_target_range, "closest", "collision_filter", collision_filter)

	if result then
		local hit_unit = Actor.unit(actor)
		local breed = Unit.get_data(hit_unit, "breed")

		if breed then
			self.target_breed_unit = hit_unit
		end
	end

	self.state = "waiting_to_hit"
	self.time_to_hit = t + new_action.hit_time or 0

	table.clear(self.hit_units)

	local current_action = self.current_action

	if self.overcharge_extension then
		self.overcharge_extension:add_charge(current_action.overcharge_type)
	end

	return 
end
ActionShieldSlam.client_owner_post_update = function (self, dt, t, world, can_damage)
	local current_action = self.current_action
	local owner_unit = self.owner_unit

	if self.state == "waiting_to_hit" and self.time_to_hit <= t then
		self.state = "hitting"
	end

	if self.state == "hitting" then
		self._hit(self, world, can_damage, owner_unit, current_action)
	end

	return 
end
ActionShieldSlam._hit = function (self, world, can_damage, owner_unit, current_action)
	local network_manager = Managers.state.network
	local physics_world = World.get_data(world, "physics_world")
	local attacker_unit_id = network_manager.unit_game_object_id(network_manager, owner_unit)
	local unit_forward = Quaternion.forward(Unit.local_rotation(owner_unit, 0))
	local self_pos = POSITION_LOOKUP[owner_unit]
	local pos = self_pos + unit_forward*1
	local radius = current_action.push_radius
	local collision_filter = "filter_melee_sweep"
	local actors, actors_n = PhysicsWorld.immediate_overlap(physics_world, "shape", "sphere", "position", pos, "size", radius, "types", "dynamics", "collision_filter", collision_filter, "use_global_table")
	local hit_units = self.hit_units
	local unit_get_data = Unit.get_data
	local hit_once = false
	local target_breed_unit = self.target_breed_unit
	local target_breed_unit_health_extension = Unit.alive(target_breed_unit) and ScriptUnit.extension(target_breed_unit, "health_system")

	if target_breed_unit_health_extension and not target_breed_unit_health_extension.is_alive(target_breed_unit_health_extension) then
		target_breed_unit = nil
	end

	for i = 1, actors_n, 1 do
		local hit_actor = actors[i]
		local hit_unit = Actor.unit(hit_actor)
		local breed = unit_get_data(hit_unit, "breed")

		if breed and hit_units[hit_unit] == nil then
			hit_units[hit_unit] = true

			if not target_breed_unit then
				local health_extension = ScriptUnit.extension(hit_unit, "health_system")
			elseif target_breed_unit == hit_unit then
			else
				local attack_direction = Vector3.normalize(POSITION_LOOKUP[hit_unit] - pos)
				local node = Actor.node(hit_actor)
				local hit_zone = breed.hit_zones_lookup[node]
				local hit_zone_name = hit_zone.name
				local hit_unit_id = network_manager.unit_game_object_id(network_manager, hit_unit)
				local hit_zone_id = NetworkLookup.hit_zones[hit_zone_name]
				local attack_template = AttackTemplates[current_action.push_attack_template]
				local attack_template_id = attack_template.lookup_id
				local backstab_multiplier = 1

				if self.is_server or LEVEL_EDITOR_TEST then
					self.weapon_system:rpc_attack_hit(nil, NetworkLookup.damage_sources[self.item_name], attacker_unit_id, hit_unit_id, attack_template_id, hit_zone_id, attack_direction, -1, NetworkLookup.hit_ragdoll_actors["n/a"], backstab_multiplier)
				else
					network_manager.network_transmit:send_rpc_server("rpc_attack_hit", NetworkLookup.damage_sources[self.item_name], attacker_unit_id, hit_unit_id, attack_template_id, hit_zone_id, attack_direction, -1, NetworkLookup.hit_ragdoll_actors["n/a"], backstab_multiplier)
				end
			end
		end
	end

	if Unit.alive(target_breed_unit) and not self.hit_target_breed_unit then
		local network_manager = Managers.state.network
		local breed = Unit.get_data(target_breed_unit, "breed")
		local hit_zone_name, _ = next(breed.hit_zones)
		local target_position = POSITION_LOOKUP[target_breed_unit]
		local attack_direction = Vector3.normalize(target_position - POSITION_LOOKUP[owner_unit])
		local hit_unit_id = network_manager.unit_game_object_id(network_manager, target_breed_unit)
		local attacker_unit_id = network_manager.unit_game_object_id(network_manager, owner_unit)
		local hit_zone_id = NetworkLookup.hit_zones[hit_zone_name]
		local attack_template_name, attack_template_damage_type_name = ActionUtils.select_attack_template(self.current_action, self.is_critical_strike)
		local attack_template = AttackTemplates[attack_template_name]
		local attack_template_id = attack_template.lookup_id

		ActionSweep._play_character_impact(self, self.is_server, owner_unit, self.current_action, attack_template, attack_template_damage_type_name, target_breed_unit, target_position, breed, hit_zone_name, attack_direction)

		local attack_template_damage_type_id = -1

		if attack_template_damage_type_name then
			local attack_template_damage_type = AttackDamageValues[attack_template_damage_type_name]
			attack_template_damage_type_id = attack_template_damage_type.lookup_id
		end

		DamageUtils.buff_on_attack(owner_unit, target_breed_unit, "heavy_attack")

		local backstab_multiplier = 1

		if self.is_server or LEVEL_EDITOR_TEST then
			self.weapon_system:rpc_attack_hit(nil, NetworkLookup.damage_sources[self.item_name], attacker_unit_id, hit_unit_id, attack_template_id, hit_zone_id, attack_direction, attack_template_damage_type_id, NetworkLookup.hit_ragdoll_actors["n/a"], backstab_multiplier)
		else
			network_manager.network_transmit:send_rpc_server("rpc_attack_hit", NetworkLookup.damage_sources[self.item_name], attacker_unit_id, hit_unit_id, attack_template_id, hit_zone_id, attack_direction, attack_template_damage_type_id, NetworkLookup.hit_ragdoll_actors["n/a"], backstab_multiplier)
		end

		if self.is_critical_strike and self.critical_strike_particle_id then
			World.destroy_particles(self.world, self.critical_strike_particle_id)

			self.critical_strike_particle_id = nil
		end

		self.hit_target_breed_unit = true
	end

	self.state = "hit"

	return 
end
ActionShieldSlam.finish = function (self, reason)
	self.hit_target_breed_unit = false

	if reason == "action_complete" and self.state ~= "hit" then
		self._hit(self, self.world, true, self.owner_unit, self.current_action)
	end

	local ammo_extension = self.ammo_extension
	local current_action = self.current_action

	if reason ~= "new_interupting_action" and ammo_extension and current_action.reload_when_out_of_ammo and ammo_extension.ammo_count(ammo_extension) == 0 and ammo_extension.can_reload(ammo_extension) then
		local play_reload_animation = true

		ammo_extension.start_reload(ammo_extension, play_reload_animation)
	end

	return 
end
ActionShieldSlam.destroy = function (self)
	if self.critical_strike_particle_id then
		World.destroy_particles(self.world, self.critical_strike_particle_id)

		self.critical_strike_particle_id = nil
	end

	return 
end

return 
