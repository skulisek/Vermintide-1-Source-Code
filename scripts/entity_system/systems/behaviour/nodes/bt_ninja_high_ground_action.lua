require("scripts/entity_system/systems/behaviour/nodes/bt_node")

BTNinjaHighGroundAction = class(BTNinjaHighGroundAction, BTClimbAction)
BTNinjaHighGroundAction.name = "BTNinjaHighGroundAction"
local position_lookup = POSITION_LOOKUP
local alive = POSITION_LOOKUP
local script_data = script_data
BTNinjaHighGroundAction.init = function (self, ...)
	BTNinjaHighGroundAction.super.init(self, ...)

	return 
end
BTNinjaHighGroundAction.enter = function (self, unit, blackboard, t)
	blackboard.high_ground_opportunity = nil

	if alive[blackboard.target_unit] then
		local smart_data = blackboard.next_smart_object_data
		local pos1 = smart_data.entrance_pos:unbox()
		local pos2 = smart_data.exit_pos:unbox()

		if smart_data.smart_object_type == "ledges_with_fence" and blackboard.breed.allow_fence_jumping then
			blackboard.fence_jumping = true

			print("fence jumping")
		elseif smart_data.smart_object_type == "ledges" and pos2.z < pos1.z and self.try_jump(self, unit, blackboard, t, pos1) then
			blackboard.high_ground_opportunity = true
		end
	end

	if not blackboard.high_ground_opportunity then
		BTClimbAction.enter(self, unit, blackboard, t)
	end

	return 
end
BTNinjaHighGroundAction.leave = function (self, unit, blackboard, t, reason)
	if blackboard.high_ground_opportunity then
		if reason == "aborted" then
			blackboard.high_ground_opportunity = nil
		end

		if blackboard.fence_jumping then
			blackboard.climb_spline_ground = nil
			blackboard.climb_spline_ledge = nil
			blackboard.climb_entrance_pos = nil
			blackboard.climb_state = nil
			blackboard.climb_upwards = nil
			blackboard.is_climbing = nil
			blackboard.climb_jump_height = nil
			blackboard.climb_ledge_lookat_direction = nil
			blackboard.climb_entrance_pos = nil
			blackboard.climb_exit_pos = nil
			blackboard.is_smart_objecting = nil
			blackboard.jump_climb_finished = nil
			blackboard.climb_align_end_time = nil
			blackboard.smart_object_data = nil
			blackboard.ledge_position = nil

			LocomotionUtils.set_animation_translation_scale(unit, Vector3(1, 1, 1))
			LocomotionUtils.constrain_on_clients(unit, false, Vector3.zero(), Vector3.zero())

			local navigation_extension = ScriptUnit.extension(unit, "ai_navigation_system")

			navigation_extension.set_enabled(navigation_extension, true)

			local hit_reaction_extension = ScriptUnit.extension(unit, "hit_reaction_system")
			hit_reaction_extension.force_ragdoll_on_death = nil

			if navigation_extension.is_using_smart_object(navigation_extension) then
				slot7 = navigation_extension.use_smart_object(navigation_extension, false)
			end
		end
	else
		BTClimbAction.leave(self, unit, blackboard, t)
	end

	blackboard.fence_jumping = false

	return 
end
BTNinjaHighGroundAction.run = function (self, unit, blackboard, t, dt)
	if blackboard.high_ground_opportunity then
		return "running"
	else
		if blackboard.fence_jumping and blackboard.climb_state == "waiting_for_finished_climb_anim" and blackboard.jump_climb_finished then
			if self.try_jump(self, unit, blackboard, t, blackboard.ledge_position:unbox()) then
				blackboard.high_ground_opportunity = true

				return "failed"
			else
				blackboard.fence_jumping = false
			end
		end

		return BTClimbAction.run(self, unit, blackboard, t, dt)
	end

	return 
end
BTNinjaHighGroundAction.try_jump = function (self, unit, blackboard, t, pos1, force_idle)
	local target_unit = blackboard.target_unit

	if not alive[target_unit] then
		return 
	end

	local physics_world = World.get_data(blackboard.world, "physics_world")
	local p1 = pos1 + Vector3(0, 0, 1)
	local enemy_spine_node = Unit.node(target_unit, "j_neck")
	local p2 = Unit.world_position(target_unit, enemy_spine_node) - Vector3(0, 0, 1)
	local in_los = true

	if in_los then
		local segment_list = {}
		local wedge = Vector3(0, 0, 0.05)
		local in_los, velocity, time_of_flight = BTPrepareForCrazyJumpAction.test_trajectory(blackboard, p1 + Vector3(0, 0, 0, 5), p2 + wedge, segment_list, true)

		if in_los then
			blackboard.jump_data = {
				delay_jump_start = true,
				segment_list = segment_list,
				enemy_spine_node = enemy_spine_node,
				jump_target_pos = Vector3Box(p2),
				jump_velocity_boxed = Vector3Box(velocity),
				total_distance = Vector3.distance(p1, p2)
			}
			blackboard.skulk_pos = Vector3Box(pos1)

			blackboard.navigation_extension:move_to(pos1)

			local network_manager = Managers.state.network

			network_manager.anim_event(network_manager, unit, "to_crouch")

			if force_idle then
				network_manager.anim_event(network_manager, unit, "idle")
			end

			local wanted_rot = Quaternion.look(p2 - p1, Vector3.up())

			blackboard.locomotion_extension:set_wanted_rotation(wanted_rot)

			return true
		else
			print("ready to jump failed")
		end
	else
		print("simple los failed")
	end

	return 
end

return 
