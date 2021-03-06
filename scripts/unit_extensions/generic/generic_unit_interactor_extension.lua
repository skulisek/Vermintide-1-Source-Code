require("scripts/helpers/interaction_helper")
require("scripts/unit_extensions/generic/interactions")

GenericUnitInteractorExtension = class(GenericUnitInteractorExtension)
INTERACT_RAY_DISTANCE = 2.5
local chest_interactables = {}

GenericUnitInteractorExtension.init = function (self, extension_init_context, unit, extension_init_data)
	local world = extension_init_context.world
	local dice_keeper = extension_init_context.dice_keeper
	local statistics_db = extension_init_context.statistics_db
	self.world = world
	self.unit = unit
	self.ingame_ui = extension_init_context.ingame_ui
	self.state = "waiting_to_interact"
	self.interaction_context = {
		data = {
			world = world,
			dice_keeper = dice_keeper,
			statistics_db = statistics_db,
			ingame_ui = extension_init_context.ingame_ui,
			interactor_data = {}
		}
	}
	local player = Managers.player:owner(unit)
	self.is_bot = player and player.bot_player
	local physics_world = World.get_data(world, "physics_world")
	self.physics_world = physics_world
	self.is_server = Managers.player.is_server
	self.exclusive_interaction_unit = nil

	self.interactable_unit_destroy_callback = function (destroyed_interactable_unit)
		local t = Managers.time:time("game")

		self:_stop_interaction(destroyed_interactable_unit, t)
	end
end

GenericUnitInteractorExtension.extensions_ready = function (self)
	self.status_extension = ScriptUnit.extension(self.unit, "status_system")
	self.damage_extension = ScriptUnit.extension(self.unit, "damage_system")
	self.buff_extension = ScriptUnit.extension(self.unit, "buff_system")
end

GenericUnitInteractorExtension.set_exclusive_interaction_unit = function (self, unit)
	fassert(self.is_bot, "Trying to set exclusive interaction unit as player.")

	self.exclusive_interaction_unit = unit
end

GenericUnitInteractorExtension.destroy = function (self)
	if Managers.state.network:game() and Managers.state.unit_storage:go_id(self.unit) then
		self:abort_interaction()
	end

	local interactable_unit = self.interaction_context.interactable_unit

	if Unit.alive(interactable_unit) then
		Managers.state.unit_spawner:remove_destroy_listener(interactable_unit, "interactable_unit")
	end
end

local IGNORED_DAMAGE_TYPES = {
	buff_shared_medpack = true,
	buff = true,
	arrow_poison_dot = true,
	volume_generic_dot = true,
	heal = true,
	damage_over_time = true,
	poison = true,
	globadier_gas_dot = true,
	wounded_dot = true,
	aoe_poison_dot = true,
	burninating = true
}

GenericUnitInteractorExtension._handle_ray_hit = function (self, hits, hits_n, from_position, camera)
	local hit_non_interaction_unit = false
	local distance_score = math.huge
	local selected_interaction_unit, selected_interaction_type = nil
	local res_w = RESOLUTION_LOOKUP.res_w
	local res_h = RESOLUTION_LOOKUP.res_h
	local center_x = res_w * 0.5
	local center_y = res_h * 0.5

	for i = 1, hits_n, 1 do
		local hit = hits[i]
		local actor = hit[4]

		if actor then
			local hit_unit = Actor.unit(actor)

			if (hit_unit and hit_unit ~= self.unit and not self.exclusive_interaction_unit) or hit_unit == self.exclusive_interaction_unit then
				if ScriptUnit.has_extension(hit_unit, "interactable_system") then
					local interact_actor = Unit.get_data(hit_unit, "interaction_data", "interact_actor")

					if not interact_actor or Unit.actor(hit_unit, interact_actor) == actor then
						local target_extension = ScriptUnit.extension(hit_unit, "interactable_system")
						local target_interaction_type = target_extension:interaction_type()
						local can_interact, fail_reason, interaction_type = self:can_interact(hit_unit, target_interaction_type)
						local is_in_chest = self:_check_if_interactable_in_chest(hit_unit, from_position)

						if (can_interact or fail_reason) and not is_in_chest then
							local interaction_template = InteractionDefinitions[interaction_type]
							local config = interaction_template.config or interaction_template.get_config()
							local does_not_require_line_of_sight = config.does_not_require_line_of_sight
							local score = self:_claculate_interaction_distance_score(hit_unit, from_position, center_x, center_y, camera)
							local block_other_interactions = config.block_other_interactions

							if (hit_non_interaction_unit and does_not_require_line_of_sight) or not hit_non_interaction_unit then
								if block_other_interactions then
									selected_interaction_unit = hit_unit
									selected_interaction_type = interaction_type

									break
								elseif score < distance_score then
									selected_interaction_unit = hit_unit
									selected_interaction_type = interaction_type
									distance_score = score
								end
							end
						end
					else
						hit_non_interaction_unit = true
					end
				else
					hit_non_interaction_unit = true
				end
			end
		end
	end

	return selected_interaction_unit, selected_interaction_type
end

GenericUnitInteractorExtension.update = function (self, unit, input, dt, context, t)
	local world = self.world

	table.clear(chest_interactables)

	if self.state ~= "waiting_to_interact" and not Unit.alive(self.interaction_context.interactable_unit) then
		InteractionHelper.printf("[GenericUnitInteractorExtension] not Unit.alive(self.interaction_context.interactable_unit)")
		self:abort_interaction()
	end

	if self.state ~= "waiting_to_interact" and (self.status_extension:is_disabled() or self.status_extension:is_catapulted()) then
		self:abort_interaction()
	end

	if self.state ~= "waiting_to_interact" then
		local damage_datas, num_damages = self.damage_extension:recent_damages()
		local interrupted = false

		for i = 1, num_damages / DamageDataIndex.STRIDE, 1 do
			local zero_index = i - 1
			local damage_amount = damage_datas[zero_index * DamageDataIndex.STRIDE + DamageDataIndex.DAMAGE_AMOUNT]
			local damage_type = damage_datas[zero_index * DamageDataIndex.STRIDE + DamageDataIndex.DAMAGE_TYPE]

			if damage_amount > 0 and not IGNORED_DAMAGE_TYPES[damage_type] then
				interrupted = true
			end
		end

		if interrupted then
			local abort = true
			local interaction_type = self.interaction_context.interaction_type
			local buff_extension = self.buff_extension

			if interaction_type == "heal" then
				abort = not buff_extension:has_buff_type("no_interruption_bandage")
			end

			if abort and interaction_type == "revive" then
				abort = not buff_extension:has_buff_type("no_interruption_revive")
			end

			if abort then
				self:abort_interaction()
			end
		end
	end

	if self.state == "waiting_to_interact" and not self.status_extension:is_disabled() then
		local res_w = RESOLUTION_LOOKUP.res_w
		local res_h = RESOLUTION_LOOKUP.res_h
		local center_x = res_w * 0.5
		local center_y = res_h * 0.5
		local interaction_context = self.interaction_context

		if interaction_context.interactable_unit then
			interaction_context.interactable_unit = nil
			interaction_context.interaction_type = nil
		end

		if self.is_bot then
			local exl_unit = self.exclusive_interaction_unit

			if exl_unit and ScriptUnit.has_extension(exl_unit, "interactable_system") then
				local target_extension = ScriptUnit.extension(exl_unit, "interactable_system")
				interaction_context.interactable_unit = exl_unit
				interaction_context.interaction_type = target_extension:interaction_type()

				return
			end
		else
			self.ray_casted = true
			local first_person_extension = ScriptUnit.extension(unit, "first_person_system")
			local camera_position = first_person_extension:current_position()
			local camera = self:_get_player_camera()
			local selected_interaction_unit, selected_interaction_type = nil
			local HAS_TOBII = rawget(_G, "Tobii") and Application.user_setting("tobii_eyetracking") and Application.user_setting("tobii_interact_at_gaze")
			local interact_at_gaze_enabled = HAS_TOBII and Tobii.user_presence() == Tobii.USER_PRESENT and Tobii.device_status() == Tobii.DEVICE_TRACKING

			if interact_at_gaze_enabled then
				local player = Managers.player:owner(unit)

				if player.local_player then
					local eyetracking_extension = ScriptUnit.extension(unit, "eyetracking_system")
					local gaze_forward = eyetracking_extension:gaze_forward()
					local hits, hits_n = self.physics_world:immediate_raycast(camera_position, gaze_forward, INTERACT_RAY_DISTANCE, "all", "collision_filter", "filter_ray_interaction")
					selected_interaction_unit, selected_interaction_type = self:_handle_ray_hit(hits, hits_n, camera_position, camera)
				end
			end

			if not selected_interaction_unit then
				local camera_rotation = first_person_extension:current_rotation()
				local camera_forward = Quaternion.forward(camera_rotation)
				local hits, hits_n = self.physics_world:immediate_raycast(camera_position, camera_forward, INTERACT_RAY_DISTANCE, "all", "collision_filter", "filter_ray_interaction")
				selected_interaction_unit, selected_interaction_type = self:_handle_ray_hit(hits, hits_n, camera_position, camera)
			end

			if selected_interaction_unit then
				interaction_context.interactable_unit = selected_interaction_unit
				interaction_context.interaction_type = selected_interaction_type

				return
			end

			local self_pos = POSITION_LOOKUP[self.unit]
			local hits, num_hits = PhysicsWorld.immediate_overlap(self.physics_world, "position", self_pos, "shape", "sphere", "size", 0.3, "collision_filter", "filter_overlap_interaction", "use_global_table")
			local best_unit = nil
			local best_dist = math.huge

			for i = 1, num_hits, 1 do
				local actor = hits[i]

				if actor then
					local hit_unit = Actor.unit(actor)

					if hit_unit and hit_unit ~= self.unit then
						local is_in_chest = self:_check_if_interactable_in_chest(hit_unit, camera_position)

						if ScriptUnit.has_extension(hit_unit, "interactable_system") and not is_in_chest then
							local pos = POSITION_LOOKUP[hit_unit] or Unit.local_position(hit_unit, 0)
							local dist = Vector3.distance_squared(self_pos, pos)

							if dist < best_dist then
								best_dist = dist
								best_unit = hit_unit
							end
						end
					end
				end
			end

			if best_unit then
				local target_extension = ScriptUnit.extension(best_unit, "interactable_system")
				local target_interaction_type = target_extension:interaction_type()
				local can_interact, fail_reason, interaction_type = self:can_interact(best_unit, target_interaction_type)

				if can_interact then
					interaction_context.interactable_unit = best_unit
					interaction_context.interaction_type = interaction_type
				end
			end
		end
	end

	local interaction_context = self.interaction_context
	local interactable_unit = interaction_context.interactable_unit
	local interaction_data = interaction_context.data
	interaction_data.is_server = self.is_server
	local interaction_type = interaction_context.interaction_type
	local interaction_template = InteractionDefinitions[interaction_type]
	local interaction_config = (interaction_template and (interaction_template.config or interaction_template.get_config())) or nil

	if self.state == "starting_interaction" then
		interaction_template.client.start(world, unit, interactable_unit, interaction_data, interaction_config, t)

		if self.is_server then
			interaction_template.server.start(world, unit, interactable_unit, interaction_data, interaction_config, t)
		end

		self.state = "doing_interaction"
		local flow_event = "lua_interaction_started_" .. interaction_type

		Unit.set_flow_variable(interactable_unit, "lua_interactor_unit", unit)
		Unit.flow_event(interactable_unit, flow_event)
	end

	if self.state == "doing_interaction" then
		interaction_template.client.update(world, unit, interactable_unit, interaction_data, interaction_config, dt, t)

		if self.is_server then
			local interaction_result = interaction_template.server.update(world, unit, interactable_unit, interaction_data, interaction_config, dt, t)
			interaction_context.result = interaction_result

			if interaction_result ~= InteractionResult.ONGOING then
				InteractionHelper:complete_interaction(unit, interactable_unit, interaction_result)
				self:stop_interaction(t)
			end
		end
	end

	if script_data.debug_interactions then
	end
end

GenericUnitInteractorExtension._check_if_interactable_in_chest = function (self, interactable_unit, camera_position)
	if chest_interactables[interactable_unit] then
		return true
	end

	local has_pickup_extension = ScriptUnit.has_extension(interactable_unit, "pickup_system")

	if not has_pickup_extension then
		return false
	end

	local unit_center_matrix, _ = Unit.box(interactable_unit)
	local unit_pos = Matrix4x4.translation(unit_center_matrix)
	local dir = Vector3.normalize(unit_pos - camera_position)
	local distance = Vector3.length(unit_pos - camera_position)
	local found_collision, collisionPos, distance, normal, hit_actor = PhysicsWorld.immediate_raycast(self.physics_world, unit_pos, dir, distance, "closest", "types", "both", "collision_filter", "filter_interactable_in_chest")

	if found_collision then
		chest_interactables[interactable_unit] = true

		return true
	end

	return false
end

GenericUnitInteractorExtension._claculate_interaction_distance_score = function (self, interactable_unit, camera_position, half_width, half_height, camera)
	local unit_pos = Unit.world_position(interactable_unit, 0)
	local ray_distance = INTERACT_RAY_DISTANCE
	local world_score = Vector3.distance_squared(unit_pos, camera_position) / (ray_distance * ray_distance)
	local unit_screen_pos = Camera.world_to_screen(camera, unit_pos)
	local middle_offset = Vector3(half_width - unit_screen_pos.x, half_height - unit_screen_pos.z, 0)
	local screen_score = Vector3.length(middle_offset) / (half_width * 2)

	return world_score * screen_score
end

GenericUnitInteractorExtension._get_player_camera = function (self)
	local player = Managers.player:owner(self.unit)
	local viewport_name = player.viewport_name
	local viewport = ScriptWorld.viewport(self.world, viewport_name)
	local camera = ScriptViewport.camera(viewport)

	return camera
end

GenericUnitInteractorExtension._stop_interaction = function (self, interactable_unit, t)
	local world = self.world
	local unit = self.unit
	local interaction_context = self.interaction_context
	local interaction_data = interaction_context.data
	interaction_data.is_server = self.is_server
	local interaction_type = interaction_context.interaction_type
	local interaction_template = InteractionDefinitions[interaction_type]
	local interaction_config = (interaction_template and (interaction_template.config or interaction_template.get_config())) or nil
	local go_id, is_level_unit = Managers.state.network:game_object_or_level_id(interactable_unit)

	if not is_level_unit and go_id == nil then
		InteractionHelper.printf("[GenericUnitInteractorExtension] game object doesnt exist, changing result from %s to %s", InteractionResult[interaction_context.result], InteractionResult[InteractionResult.FAILURE])

		interaction_context.result = InteractionResult.FAILURE
	end

	local interaction_result = interaction_context.result

	if interaction_result == InteractionResult.ONGOING or interaction_result == nil then
		interaction_result = InteractionResult.FAILURE
		interaction_context.result = interaction_result
	end

	InteractionHelper.printf("[GenericUnitInteractorExtension] Stopping interaction %s with result %s", interaction_type, InteractionResult[interaction_result])
	interaction_template.client.stop(world, unit, interactable_unit, interaction_data, interaction_config, t, interaction_result)

	if self.is_server then
		interaction_template.server.stop(world, unit, interactable_unit, interaction_data, interaction_config, t, interaction_result)
	end

	self.state = "waiting_to_interact"
	local flow_event = "lua_interaction_stopped_" .. interaction_type .. "_" .. InteractionResult[interaction_result]

	if Unit.alive(interactable_unit) then
		Unit.flow_event(interactable_unit, flow_event)
	end
end

GenericUnitInteractorExtension.stop_interaction = function (self, t)
	local interaction_context = self.interaction_context
	local interactable_unit = interaction_context.interactable_unit

	self:_stop_interaction(interactable_unit, t)
	Managers.state.unit_spawner:remove_destroy_listener(interactable_unit, "interactable_unit")
end

GenericUnitInteractorExtension.is_interacting = function (self)
	return self.state ~= "waiting_to_interact"
end

GenericUnitInteractorExtension.is_stopping = function (self)
	return self.state == "stopping_interaction"
end

GenericUnitInteractorExtension.is_waiting_for_interaction_approval = function (self)
	return self.state == "waiting_for_confirmation"
end

GenericUnitInteractorExtension.is_looking_at_interactable = function (self)
	return self.interaction_context.interactable_unit ~= nil
end

GenericUnitInteractorExtension.can_interact = function (self, interactable_unit, interaction_type)
	local interaction_context = self.interaction_context
	local unit_to_interact_with = interactable_unit or interaction_context.interactable_unit

	if self.state ~= "waiting_to_interact" then
		return false
	end

	if unit_to_interact_with == nil then
		return false
	end

	if not Unit.alive(unit_to_interact_with) then
		return false
	end

	if self.status_extension:is_disabled() then
		return false
	end

	interaction_type = interaction_type or interaction_context.interaction_type
	local interaction_data = interaction_context.data
	local interaction_template = InteractionDefinitions[interaction_type]
	local can_interact_func = interaction_template.client.can_interact

	if can_interact_func then
		local can_interact, failure_reason, interact_type = can_interact_func(self.unit, unit_to_interact_with, interaction_data, interaction_template.config, self.world)
		interact_type = interact_type or interaction_type

		return can_interact, failure_reason, interact_type
	end

	return true, nil, interaction_type
end

GenericUnitInteractorExtension.interaction_config = function (self)
	local interaction_type = self.interaction_context.interaction_type
	local interaction_template = InteractionDefinitions[interaction_type]
	local interaction_config = (interaction_template and (interaction_template.config or interaction_template.get_config())) or nil

	return interaction_config
end

GenericUnitInteractorExtension.interaction_description = function (self, fail_reason, interaction_type)
	local interaction_type = interaction_type or self.interaction_context.interaction_type
	local interaction_template = InteractionDefinitions[interaction_type]
	local hud_description, extra_param = interaction_template.client.hud_description(self.interaction_context.interactable_unit, interaction_template.config, fail_reason, self.unit)

	if hud_description == nil then
		return "<ERROR: UNSPECIFIED INTERACTION HUD DESCRIPTION>"
	end

	return hud_description, extra_param
end

GenericUnitInteractorExtension.interaction_hold_input = function (self)
	return self.interaction_context.hold_input
end

GenericUnitInteractorExtension.interaction_camera_node = function (self)
	local interaction_type = self.interaction_context.interaction_type
	local interaction_template = InteractionDefinitions[interaction_type]

	return interaction_template.client.camera_node(self.unit, self.interaction_context.interactable_unit)
end

GenericUnitInteractorExtension.interactable_unit = function (self)
	return self.interaction_context.interactable_unit
end

GenericUnitInteractorExtension.get_progress = function (self, t)
	assert(self:is_interacting(), "Attempted to get interaction progress when interactor unit wasn't interacting.")

	local interaction_context = self.interaction_context
	local interaction_data = interaction_context.data
	local interaction_type = interaction_context.interaction_type
	local interaction_template = InteractionDefinitions[interaction_type]
	local interaction_config = (interaction_template and interaction_template.config) or nil

	return interaction_template.client.get_progress(interaction_data, interaction_config, t)
end

GenericUnitInteractorExtension.start_interaction = function (self, hold_input, interactable_unit, interaction_type)
	InteractionHelper.printf("[GenericUnitInteractorExtension] start_interaction(interactable_unit=%s, interaction_type=%s)", tostring(interactable_unit), tostring(interaction_type))

	local interaction_context = self.interaction_context
	interaction_context.hold_input = hold_input
	interaction_context.interactable_unit = interactable_unit or interaction_context.interactable_unit
	interaction_context.interaction_type = interaction_type or interaction_context.interaction_type

	assert(self:can_interact(interaction_context.interactable_unit, interaction_type), "Attempted to start interaction even though the interaction wasn't allowed.")

	interaction_context.interaction_type = InteractionHelper.player_modify_interaction_type(self.unit, interaction_context.interactable_unit, interaction_context.interaction_type)
	local unit = self.unit
	local interaction_type = interaction_context.interaction_type
	local network_manager = Managers.state.network
	local interactor_go_id = Managers.state.unit_storage:go_id(unit)
	local interactable_go_id, is_level_unit = network_manager:game_object_or_level_id(interaction_context.interactable_unit)

	if interactor_go_id == nil or interactable_go_id == nil then
		InteractionHelper.printf("[GenericUnitInteractorExtension] start_interaction failed due to no id for interactor=%s or interactable=%s", tostring(self.unit), tostring(self.interaction_context.interactable_unit))
		assert(LEVEL_EDITOR_TEST)

		return
	end

	local interaction_data = interaction_context.data
	local interactor_data = interaction_data.interactor_data
	local interaction_template = InteractionDefinitions[interaction_type]
	local client_functions = interaction_template.client

	table.clear(interactor_data)

	if client_functions.set_interactor_data then
		client_functions.set_interactor_data(unit, interactable_unit, interactor_data)
	end

	self.state = "waiting_for_confirmation"

	InteractionHelper:request(interaction_type, interactor_go_id, interactable_go_id, is_level_unit, self.is_server)
end

GenericUnitInteractorExtension.abort_interaction = function (self)
	InteractionHelper.printf("[GenericUnitInteractorExtension] abort_interaction in state=%s", self.state)
	InteractionHelper:abort(Managers.state.unit_storage:go_id(self.unit), self.is_server)
end

GenericUnitInteractorExtension.interaction_approved = function (self, interaction_type, interactable_unit)
	InteractionHelper.printf("[GenericUnitInteractorExtension] interaction_approved during state %s type=%s on %s", self.state, interaction_type, tostring(interactable_unit))
	assert(interaction_type == self.interaction_context.interaction_type, "Got wrong type of interaction approved")
	assert(interactable_unit == self.interaction_context.interactable_unit, "Got wrong interactable approved")
	Managers.state.unit_spawner:add_destroy_listener(interactable_unit, "interactable_unit", self.interactable_unit_destroy_callback)

	local interaction_data = self.interaction_context.data
	local interaction_template = InteractionDefinitions[interaction_type]
	local interaction_config = interaction_template.config
	interaction_data.duration = interaction_config.duration
	interaction_data.start_time = Managers.time:time("game")
	self.state = "starting_interaction"
end

GenericUnitInteractorExtension.interaction_denied = function (self)
	InteractionHelper.printf("[GenericUnitInteractorExtension] interaction_denied")

	local state = self.state

	assert(state == "waiting_for_confirmation", "Was in wrong state when getting interaction denied.")

	self.state = "waiting_to_interact"
end

GenericUnitInteractorExtension.interaction_completed = function (self, interaction_result)
	local state = self.state

	InteractionHelper.printf("[GenericUnitInteractorExtension] interaction_completed during state %s with result %s", state, InteractionResult[interaction_result])
	assert(state ~= "waiting_to_interact", "Was in wrong state when getting interaction completed.")

	self.interaction_context.result = interaction_result
	local t = Managers.time:time("game")

	self:stop_interaction(t)
end

GenericUnitInteractorExtension.hot_join_sync = function (self, sender)
	if not self:is_interacting() and self.state ~= "waiting_for_confirmation" then
		return
	end

	local network_manager = Managers.state.network
	local context = self.interaction_context
	local state_id = NetworkLookup.interaction_states[self.state]
	local interaction_type_id = NetworkLookup.interactions[context.interaction_type]
	local interactable_unit_id, is_level_unit = network_manager:game_object_or_level_id(context.interactable_unit)
	local data = context.data
	local start_time = data.start_time
	local duration = data.duration
	local unit_id = network_manager:unit_game_object_id(self.unit)

	RPC.rpc_sync_interaction_state(sender, unit_id, state_id, interaction_type_id, interactable_unit_id, start_time, duration, is_level_unit)
end

return
