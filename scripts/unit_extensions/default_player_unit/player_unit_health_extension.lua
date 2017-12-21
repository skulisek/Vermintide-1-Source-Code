PlayerUnitHealthExtension = class(PlayerUnitHealthExtension, GenericHealthExtension)
PlayerUnitHealthExtension.init = function (self, extension_init_context, unit, extension_init_data)
	self.unit = unit
	local is_server = Managers.player.is_server
	self.is_server = is_server
	local max_health = extension_init_data.health
	self._initial_max_health = max_health

	self.set_max_health(self, max_health, true)

	self.unmodified_max_health_changed = false
	self.damage = extension_init_data.damage or 0
	self.state = "alive"
	self.player = extension_init_data.player
	self.game_object_id = extension_init_data.game_object_id
	self.is_bot = not self.player:is_player_controlled()

	return 
end
PlayerUnitHealthExtension.initial_max_health = function (self)
	return self._initial_max_health
end
PlayerUnitHealthExtension.sync_health_state = function (self, game_object_id)
	local player = self.player
	local health_state, damage, ammo = Managers.state.spawn:get_status(player)

	if script_data.network_debug then
		printf("PlayerUnitHealthExtension:sync_health_state() health_state (%s) damage (%s), ammo (%s)", health_state, tostring(damage), tostring(ammo))
	end

	if health_state == nil then
		print("[PlayerUnitHealthExtension] Spawn manager returned nil value for spawn state, killing character. player:", player)
		table.dump(player)

		self.damage = 1000
	else
		if health_state == "knocked_down" then
			self._knock_down(self, self.unit)
		end

		if health_state ~= "dead" then
			damage = NetworkUtils.get_network_safe_damage_hotjoin_sync(damage)
			self.damage = damage
			local state = NetworkLookup.health_statuses[self.state]
			local is_level_unit = false

			Managers.state.network.network_transmit:send_rpc_clients("rpc_sync_damage_taken", game_object_id, is_level_unit, damage, state)
		end
	end

	return 
end
PlayerUnitHealthExtension.extensions_ready = function (self, world, unit)
	self.status_extension = ScriptUnit.extension(unit, "status_system")
	local game_object_id = self.game_object_id

	if self.is_server and game_object_id then
		self.sync_health_state(self, game_object_id)
	end

	return 
end
PlayerUnitHealthExtension._knock_down = function (self, unit)
	self.state = "knocked_down"

	StatusUtils.set_knocked_down_network(unit, true)
	StatusUtils.set_wounded_network(unit, false, "knocked_down")

	return 
end
PlayerUnitHealthExtension.update = function (self, dt, context, t)
	local status_extension = self.status_extension
	local state = self.state
	local unit = self.unit

	if self.is_server then
		if state == "alive" then
			if not self.is_alive(self) then
				if not status_extension.has_wounds_remaining(status_extension) then
					self.die(self)

					return 
				elseif not status_extension.is_knocked_down(status_extension) then
					self._knock_down(self, unit)

					return 
				end
			end
		elseif state == "knocked_down" then
			if self.is_alive(self) then
				if status_extension.is_revived(status_extension) then
					self.state = "alive"

					StatusUtils.set_knocked_down_network(unit, false)
					StatusUtils.set_wounded_network(unit, true, "revived", t)
					StatusUtils.set_revived_network(unit, false)

					return 
				end
			else
				self.die(self, "knockdown_death")

				return 
			end
		end
	end

	self.unmodified_max_health_changed = false

	return 
end
PlayerUnitHealthExtension.set_max_health = function (self, health, update_unmodfied)
	if update_unmodfied then
		self.unmodified_max_health = health
		self.unmodified_max_health_changed = true
	end

	self.health = health

	return 
end
PlayerUnitHealthExtension.add_damage = function (self, damage)
	if not script_data.player_invincible then
		self.damage = math.clamp(self.damage + damage, 0, self.health)
	end

	return 
end
PlayerUnitHealthExtension.die = function (self, damage_type)
	damage_type = damage_type or "undefined"
	local unit = self.unit

	if self.is_server and self.is_bot and damage_type == "volume_insta_kill" then
		local blackboard = Unit.get_data(unit, "blackboard")

		for _, player_pos in ipairs(PLAYER_POSITIONS) do
			local pos = LocomotionUtils.new_random_goal_uniformly_distributed(blackboard.nav_world, nil, player_pos, 2, 5, 5)

			if pos then
				local locomotion_extension = ScriptUnit.extension(unit, "locomotion_system")

				locomotion_extension.teleport_to(locomotion_extension, pos)
				ScriptUnit.extension(unit, "ai_navigation_system"):teleport(pos)
				ScriptUnit.extension(unit, "ai_system"):clear_failed_paths()

				return 
			end
		end
	end

	if self.is_server then
		self.state = "dead"

		StatusUtils.set_dead_network(unit, true)
		SurroundingAwareSystem.add_event(unit, "player_death", DialogueSettings.death_discover_distance, "target", unit, "target_name", ScriptUnit.extension(unit, "dialogue_system").context.player_profile)
	end

	return 
end

return 
