SimpleHuskInventoryExtension = class(SimpleHuskInventoryExtension)

SimpleHuskInventoryExtension.init = function (self, extension_init_context, unit, extension_init_data)
	self._world = extension_init_context.world
	self._unit = unit
	self._equipment = {
		slots = {}
	}
	self._attached_units = {}
	self._show_third_person = true
end

SimpleHuskInventoryExtension.destroy = function (self)
	if Managers.player.is_server then
		for slot_name, slot_data in pairs(self._equipment.slots) do
			if slot_data.limited_item_data then
				self:evaluate_limited_item_state(slot_data)
			elseif slot_name == "slot_level_event" then
				self:drop_level_event_item(slot_data)
			end
		end
	end

	GearUtils.destroy_equipment(self._world, self._equipment)
	self:_despawn_attached_units()
end

SimpleHuskInventoryExtension.drop_level_event_item = function (self, slot_data)
	local item_template = self:get_item_template(slot_data)
	local action = item_template.actions.action_one.default
	local projectile_info = action.projectile_info

	if projectile_info and projectile_info.drop_on_player_destroyed then
		local unit = self._unit
		local weapon_unit = self._equipment.right_hand_wielded_unit_3p or self._equipment.left_hand_wielded_unit_3p
		local position = Unit.world_position(unit, 0) + Vector3(0, 0, 2)
		local proj_rotation = Quaternion.identity()
		local velocity = Vector3(math.random(), math.random(), math.random())
		local angular_velocity_transformed = Vector3(math.random(), math.random(), math.random())
		local item_data = slot_data.item_data
		local item_name = item_data.name
		local spawn_type = "dropped"

		ActionUtils.spawn_pickup_projectile(self._world, weapon_unit, projectile_info.projectile_unit_name, projectile_info.projectile_unit_template_name, action, unit, position, proj_rotation, velocity, angular_velocity_transformed, item_name, spawn_type)
	end

	self:destroy_slot("slot_level_event")
end

SimpleHuskInventoryExtension.equipment = function (self)
	return self._equipment
end

SimpleHuskInventoryExtension.add_equipment = function (self, slot_name, item_name)
	local item_data = ItemMasterList[item_name]
	self._equipment.slots[slot_name] = {
		item_data = item_data,
		id = slot_name
	}
end

SimpleHuskInventoryExtension.add_equipment_limited_item = function (self, slot_name, item_name, spawner_unit, limited_item_id)
	local item_data = ItemMasterList[item_name]
	self._equipment.slots[slot_name] = {
		item_data = item_data,
		id = slot_name,
		limited_item_data = {
			spawner_unit = spawner_unit,
			id = limited_item_id
		}
	}
end

SimpleHuskInventoryExtension.destroy_slot = function (self, slot_name)
	local equipment = self._equipment
	local slot_data = equipment.slots[slot_name]

	if slot_data == nil then
		return
	end

	if Managers.player.is_server and slot_data.limited_item_data then
		self:evaluate_limited_item_state(slot_data)
	end

	GearUtils.destroy_slot(self._world, self._unit, slot_data, equipment, true)
end

SimpleHuskInventoryExtension.evaluate_limited_item_state = function (self, slot_data)
	local limited_item_data = slot_data.limited_item_data
	local spawner_unit = limited_item_data.spawner_unit
	local limited_item_spawner_extension = ScriptUnit.extension(spawner_unit, "limited_item_track_system")
	local limited_item_id = limited_item_data.id

	if limited_item_spawner_extension:is_transformed(limited_item_id) then
		local limited_item_track_system = Managers.state.entity:system("limited_item_track_system")

		limited_item_track_system:held_limited_item_destroyed(spawner_unit, limited_item_id)
	end
end

SimpleHuskInventoryExtension._setup_equipment = function (self, world, unit_3p, profile)
	local equipment = {
		slots = {}
	}

	return equipment
end

SimpleHuskInventoryExtension.update = function (self)
	return
end

SimpleHuskInventoryExtension.wield = function (self, slot_name)
	local equipment = self._equipment

	GearUtils.wield(self._world, equipment, slot_name, nil, self._unit)

	self.wielded_slot = slot_name

	if slot_name then
		local slot_data = equipment.slots[slot_name]

		if slot_data then
			self:show_third_person_inventory(self._show_third_person)

			if ScriptUnit.has_extension(self._unit, "outline_system") then
				local outline_extension = ScriptUnit.extension(self._unit, "outline_system")

				outline_extension:reapply_outline()
			end
		end
	end
end

SimpleHuskInventoryExtension._despawn_attached_units = function (self)
	local attached_units = self._attached_units
	local world = self._world

	for index, attached_unit in pairs(attached_units) do
		Managers.state.unit_spawner:mark_for_deletion(attached_unit)

		attached_units[index] = nil
	end
end

SimpleHuskInventoryExtension._spawn_attached_units = function (self, attached_units)
	if attached_units == nil then
		return
	end

	local unit = self._unit
	local world = self._world
	local own_attached_units = self._attached_units

	for index, attached_unit in pairs(attached_units) do
		local spawned_unit = AttachmentUtils.create_weapon_visual_attachment(world, unit, attached_unit.unit, attached_unit.attachment_node_linking)
		own_attached_units[index] = spawned_unit
	end
end

SimpleHuskInventoryExtension.show_third_person_inventory = function (self, show)
	self._show_third_person = show
	local right_hand_wielded_unit = self._equipment.right_hand_wielded_unit_3p

	if right_hand_wielded_unit then
		if Unit.has_visibility_group(right_hand_wielded_unit, "normal") then
			Unit.set_visibility(right_hand_wielded_unit, "normal", show)
		else
			Unit.set_unit_visibility(right_hand_wielded_unit, show)
		end

		local right_hand_ammo_unit_3p = self._equipment.right_hand_ammo_unit_3p

		if right_hand_ammo_unit_3p then
			Unit.set_unit_visibility(right_hand_ammo_unit_3p, show)
		end

		if show then
			Unit.flow_event(right_hand_wielded_unit, "lua_wield")

			if right_hand_ammo_unit_3p then
				Unit.flow_event(right_hand_ammo_unit_3p, "lua_wield")
			end
		else
			Unit.flow_event(right_hand_wielded_unit, "lua_unwield")

			if right_hand_ammo_unit_3p then
				Unit.flow_event(right_hand_ammo_unit_3p, "lua_unwield")
			end
		end
	end

	local left_hand_wielded_unit = self._equipment.left_hand_wielded_unit_3p

	if left_hand_wielded_unit then
		if Unit.has_visibility_group(left_hand_wielded_unit, "normal") then
			Unit.set_visibility(left_hand_wielded_unit, "normal", show)
		else
			Unit.set_unit_visibility(left_hand_wielded_unit, show)
		end

		local left_hand_ammo_unit_3p = self._equipment.left_hand_ammo_unit_3p

		if left_hand_ammo_unit_3p then
			Unit.set_unit_visibility(left_hand_ammo_unit_3p, show)
		end

		if show then
			Unit.flow_event(left_hand_wielded_unit, "lua_wield")

			if left_hand_ammo_unit_3p then
				Unit.flow_event(left_hand_ammo_unit_3p, "lua_wield")
			end
		else
			Unit.flow_event(left_hand_wielded_unit, "lua_unwield")

			if left_hand_ammo_unit_3p then
				Unit.flow_event(left_hand_ammo_unit_3p, "lua_unwield")
			end
		end
	end

	self:_despawn_attached_units()

	local equipment = self._equipment
	local wielded_slot = self.wielded_slot

	if wielded_slot then
		local slot_data = equipment.slots[wielded_slot]

		if slot_data and show then
			local item_template = self:get_item_template(slot_data)

			self:_spawn_attached_units(item_template.third_person_attached_units)
		end
	end
end

SimpleHuskInventoryExtension.get_item_template = function (self, slot_data)
	local item_data = slot_data.item_data
	local item_template = BackendUtils.get_item_template(item_data)

	return item_template
end

SimpleHuskInventoryExtension.get_wielded_slot_item_template = function (self)
	local wielded_slot_name = self.wielded_slot
	local equipment = self._equipment
	local slot_data = equipment.slots[wielded_slot_name]

	if not slot_data then
		return nil
	end

	local item_template = self:get_item_template(slot_data)

	return item_template
end

SimpleHuskInventoryExtension.hot_join_sync = function (self, sender)
	GearUtils.hot_join_sync(sender, self._unit, self._equipment)
end

SimpleHuskInventoryExtension.get_wielded_slot_name = function (self)
	local equipment = self._equipment
	local wielded_slot = equipment.wielded_slot

	return wielded_slot
end

SimpleHuskInventoryExtension.get_slot_data = function (self, slot_id)
	local equipment = self._equipment
	local slots = equipment.slots

	return slots[slot_id]
end

SimpleHuskInventoryExtension.set_loaded_projectile_override = function (self)
	return
end

SimpleHuskInventoryExtension.is_showing_first_person_inventory = function (self)
	return false
end

SimpleHuskInventoryExtension.is_showing_third_person_inventory = function (self)
	return self._show_third_person
end

return
