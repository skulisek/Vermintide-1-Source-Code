PlayerCharacterStateLeavingLadderTop = class(PlayerCharacterStateLeavingLadderTop, PlayerCharacterState)

PlayerCharacterStateLeavingLadderTop.init = function (self, character_state_init_context)
	PlayerCharacterState.init(self, character_state_init_context, "leaving_ladder_top")

	local context = character_state_init_context
	self.is_server = Managers.player.is_server
	self.wanted_forward_bonus_velocity = Vector3Box()
end

PlayerCharacterStateLeavingLadderTop.on_enter_animation_event = function (self, speed)
	local unit = self.unit

	CharacterStateHelper.play_animation_event_with_variable_float(unit, "climb_top_exit_ladder", "climb_enter_exit_speed", speed)
end

PlayerCharacterStateLeavingLadderTop.on_enter = function (self, unit, input, dt, context, t, previous_state, params)
	local unit = self.unit
	local input_extension = self.input_extension
	local first_person_extension = self.first_person_extension
	local ladder_unit = params.ladder_unit
	self.ladder_unit = ladder_unit
	self.movement_speed = 1
	local movement_settings_table = PlayerUnitMovementSettings.get_movement_settings_table(unit)
	local duration = movement_settings_table.ladder.leaving_ladder_top_animation_time
	self.finish_time = t + duration

	self.wanted_forward_bonus_velocity:store(Quaternion.forward(Unit.local_rotation(ladder_unit, 0)))
	self:on_enter_animation_event(2 / duration)
	self.locomotion_extension:enable_script_driven_ladder_transition_movement()

	local mover = Unit.mover(unit)

	Mover.set_collision_filter(mover, "filter_player_ladder_mover")
end

PlayerCharacterStateLeavingLadderTop.on_exit = function (self, unit, input, dt, context, t, next_state)
	self.locomotion_extension:enable_script_driven_movement()

	local network_manager = Managers.state.network
	local unit_id = network_manager:unit_game_object_id(self.unit)
	local include_local_player = false

	CharacterStateHelper.show_inventory_3p(unit, true, include_local_player, self.is_server, self.inventory_extension)
	self.first_person_extension:unhide_weapons("climbing")
	self.locomotion_extension:enable_rotation_towards_velocity(true)

	if next_state and Managers.state.network:game() then
		CharacterStateHelper.play_animation_event(unit, "climb_end_ladder")
		CharacterStateHelper.set_is_on_ladder(self.ladder_unit, unit, false, self.is_server, self.status_extension)
	end

	local first_person_extension = self.first_person_extension

	first_person_extension:play_animation_event("idle")

	local mover = Unit.mover(unit)

	Mover.set_collision_filter(mover, "filter_player_mover")
end

PlayerCharacterStateLeavingLadderTop.update = function (self, unit, input, dt, context, t)
	local csm = self.csm
	local unit = self.unit
	local input_extension = self.input_extension
	local status_extension = self.status_extension
	local locomotion_extension = self.locomotion_extension
	local movement_settings_table = PlayerUnitMovementSettings.get_movement_settings_table(unit)
	local wanted_forward_velocity = self.wanted_forward_bonus_velocity:unbox() * movement_settings_table.ladder.leaving_ladder_top_forward_push_factor + Vector3(0, 0, movement_settings_table.ladder.leaving_ladder_top_push_up_constant)

	if CharacterStateHelper.is_dead(status_extension) then
		csm:change_state("dead")

		return
	end

	if CharacterStateHelper.is_knocked_down(status_extension) then
		csm:change_state("knocked_down")

		return
	end

	if CharacterStateHelper.is_pounced_down(status_extension) then
		csm:change_state("pounced_down")

		return
	end

	local is_catapulted, direction = CharacterStateHelper.is_catapulted(status_extension)

	if is_catapulted then
		local params = {
			sound_event = "Play_hit_by_ratogre",
			direction = direction
		}

		csm:change_state("catapulted", params)

		return
	end

	if self.finish_time < t then
		csm:change_state("walking")
	end

	local max_radians = math.degrees_to_radians(movement_settings_table.ladder.look_horizontal_max_degrees)

	CharacterStateHelper.look_limited_rotation_freedom(input_extension, self.player.viewport_name, self.first_person_extension, self.ladder_unit, unit, max_radians, nil, status_extension, self.inventory_extension)
end

return
