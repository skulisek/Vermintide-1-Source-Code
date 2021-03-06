InputFilters = InputFilters or {}

local function input_threshold(input_axis, threshold)
	local length = Vector3.length(input_axis)

	if length < threshold then
		input_axis.x = 0
		input_axis.y = 0
		input_axis.z = 0
	end
end

InputFilters.virtual_axis = {
	init = function (filter_data)
		return table.clone(filter_data)
	end,
	update = function (filter_data, input_service)
		local input_mappings = filter_data.input_mappings
		local right = input_service:get(input_mappings.right)
		local left = input_service:get(input_mappings.left)
		local forward = input_service:get(input_mappings.forward)
		local back = input_service:get(input_mappings.back)
		local up_key = input_mappings.up
		local up = (up_key and input_service:get(up_key)) or 0
		local down_key = input_mappings.down
		local down = (down_key and input_service:get(down_key)) or 0
		local result = Vector3(right - left, forward - back, up - down)

		return result
	end,
	edit_types = {
		{
			"up",
			"keymap",
			"soft_button",
			"input_mappings"
		},
		{
			"down",
			"keymap",
			"soft_button",
			"input_mappings"
		},
		{
			"left",
			"keymap",
			"soft_button",
			"input_mappings"
		},
		{
			"right",
			"keymap",
			"soft_button",
			"input_mappings"
		},
		{
			"forward",
			"keymap",
			"soft_button",
			"input_mappings"
		},
		{
			"back",
			"keymap",
			"soft_button",
			"input_mappings"
		}
	}
}
InputFilters.scale_vector3 = {
	init = function (filter_data)
		return table.clone(filter_data)
	end,
	update = function (filter_data, input_service)
		local val = input_service:get(filter_data.input_mapping)

		input_threshold(val, filter_data.input_threshold or 0)

		return val * filter_data.multiplier
	end,
	edit_types = {
		{
			"multiplier",
			"number"
		}
	}
}
InputFilters.scale_vector3_xy = {
	init = function (filter_data)
		return table.clone(filter_data)
	end,
	update = function (filter_data, input_service)
		local val = input_service:get(filter_data.input_mapping)

		input_threshold(val, filter_data.input_threshold or 0)

		local x = val.x * filter_data.multiplier_x
		local y = val.y * filter_data.multiplier_y
		local z = val.z

		return Vector3(x, y, z)
	end,
	edit_types = {
		{
			"multiplier_x",
			"number"
		},
		{
			"multiplier_y",
			"number"
		}
	}
}
InputFilters.scale_vector3_xy_accelerated_x_legacy = {
	init = function (filter_data)
		local internal_filter_data = table.clone(filter_data)
		internal_filter_data.input_x = 0
		internal_filter_data.input_x_t = 0
		internal_filter_data.input_x_turnaround_t = 0
		internal_filter_data.min_multiplier_x = internal_filter_data.min_multiplier_x or internal_filter_data.multiplier_x * 0.25

		return internal_filter_data
	end,
	update = function (filter_data, input_service)
		local val = input_service:get(filter_data.input_mapping)

		input_threshold(val, filter_data.input_threshold or 0)

		local time = Application.time_since_launch()

		if filter_data.turnaround_threshold and filter_data.turnaround_threshold <= math.abs(val.x) and math.sign(val.x) ~= filter_data.input_x_turnaround then
			filter_data.input_x_turnaround = math.sign(val.x)
			filter_data.input_x_turnaround_t = time
		elseif filter_data.threshold <= math.abs(val.x) and math.sign(val.x) ~= filter_data.input_x then
			filter_data.input_x = math.sign(val.x)
			filter_data.input_x_t = time
		elseif math.abs(val.x) < filter_data.threshold and Vector3.length(val) < filter_data.threshold then
			filter_data.input_x_t = time
		end

		if math.abs(val.x) < 0.1 then
			filter_data.input_x = 0
		end

		if filter_data.turnaround_threshold and math.abs(val.x) < filter_data.turnaround_threshold then
			filter_data.input_x_turnaround = 0
		end

		local x = nil
		local elapsed_time = time - filter_data.input_x_t
		local turnaround_elapsed_time = time - filter_data.input_x_turnaround_t

		if filter_data.turnaround_threshold and turnaround_elapsed_time >= filter_data.acceleration_delay + filter_data.turnaround_delay and filter_data.turnaround_threshold <= math.abs(val.x) then
			local value = math.clamp(elapsed_time - (filter_data.acceleration_delay + filter_data.turnaround_delay) / filter_data.turnaround_time_ref, 0, 1)
			x = val.x * math.lerp(filter_data.min_multiplier_x, filter_data.turnaround_multiplier_x, math.pow(value, filter_data.turnaround_power_of)) * Managers.time._mean_dt
		elseif filter_data.acceleration_delay <= elapsed_time then
			local value = math.clamp((elapsed_time - filter_data.acceleration_delay) / filter_data.accelerate_time_ref, 0, 1)
			x = val.x * math.lerp(filter_data.min_multiplier_x, filter_data.multiplier_x, math.pow(value, filter_data.power_of)) * Managers.time._mean_dt
		else
			x = val.x * filter_data.min_multiplier_x * Managers.time._mean_dt
		end

		local inverted_y = filter_data.inverted_y
		local val_y = (inverted_y and -val.y) or val.y
		local y = val_y * filter_data.multiplier_y * Managers.time._mean_dt
		local z = val.z

		return Vector3(x, y, z)
	end,
	edit_types = {
		{
			"multiplier_x",
			"number"
		},
		{
			"multiplier_y",
			"number"
		}
	}
}
InputFilters.scale_vector3_xy_accelerated_x = {
	init = function (filter_data)
		local internal_filter_data = table.clone(filter_data)
		internal_filter_data.input_x = 0
		internal_filter_data.input_x_t = 0
		internal_filter_data.input_x_turnaround_t = 0
		internal_filter_data.min_multiplier_x = internal_filter_data.min_multiplier_x or internal_filter_data.multiplier_x * 0.25

		return internal_filter_data
	end,
	update = function (filter_data, input_service)
		local val = input_service:get(filter_data.input_mapping)

		input_threshold(val, filter_data.input_threshold or 0)

		local time = Application.time_since_launch()

		if filter_data.turnaround_threshold and filter_data.turnaround_threshold <= math.abs(val.x) and math.sign(val.x) ~= filter_data.input_x_turnaround then
			filter_data.input_x_turnaround = math.sign(val.x)
			filter_data.input_x_turnaround_t = time
		elseif filter_data.threshold <= math.abs(val.x) and math.sign(val.x) ~= filter_data.input_x then
			filter_data.input_x = math.sign(val.x)
			filter_data.input_x_t = time
		elseif math.abs(val.x) < filter_data.threshold and Vector3.length(val) < filter_data.threshold then
			filter_data.input_x_t = time
		end

		if math.abs(val.x) < 0.1 then
			filter_data.input_x = 0
		end

		if filter_data.turnaround_threshold and math.abs(val.x) < filter_data.turnaround_threshold then
			filter_data.input_x_turnaround = 0
		end

		local x = nil
		local elapsed_time = time - filter_data.input_x_t
		local turnaround_elapsed_time = time - filter_data.input_x_turnaround_t

		if filter_data.turnaround_threshold and turnaround_elapsed_time >= filter_data.acceleration_delay + filter_data.turnaround_delay and filter_data.turnaround_threshold <= math.abs(val.x) then
			local value = math.clamp(elapsed_time - (filter_data.acceleration_delay + filter_data.turnaround_delay) / filter_data.turnaround_time_ref, 0, 1)
			x = val.x * math.lerp(filter_data.min_multiplier_x, filter_data.turnaround_multiplier_x, math.pow(value, filter_data.turnaround_power_of)) * Managers.time._mean_dt
		elseif filter_data.acceleration_delay <= elapsed_time then
			local value = math.clamp((elapsed_time - filter_data.acceleration_delay) / filter_data.accelerate_time_ref, 0, 1)
			x = val.x * math.lerp(filter_data.min_multiplier_x, filter_data.multiplier_x, math.pow(value, filter_data.power_of)) * Managers.time._mean_dt
		else
			x = val.x * filter_data.min_multiplier_x * Managers.time._mean_dt
		end

		local inverted_y = filter_data.inverted_y
		local val_y = (inverted_y and -val.y) or val.y
		local y = val_y * filter_data.multiplier_y * Managers.time._mean_dt
		local z = val.z

		return Vector3(x, y, z)
	end,
	edit_types = {
		{
			"multiplier_x",
			"number"
		},
		{
			"multiplier_y",
			"number"
		}
	}
}
InputFilters.scale_vector3_invert_y = {
	init = function (filter_data)
		return table.clone(filter_data)
	end,
	update = function (filter_data, input_service)
		local val = Vector3(Vector3.to_elements(input_service:get(filter_data.input_mapping)))

		input_threshold(val, filter_data.input_threshold or 0)

		val.y = -val.y

		return val * filter_data.multiplier
	end,
	edit_types = {
		{
			"multiplier",
			"number"
		}
	}
}
InputFilters.threshhold = {
	init = function (filter_data)
		return table.clone(filter_data)
	end,
	update = function (filter_data, input_service)
		local val = input_service:get(filter_data.input_mapping)

		if filter_data.threshhold <= val then
			return false
		else
			return true
		end
	end
}
InputFilters.move_filter = {
	init = function (filter_data)
		local new_filter_data = table.clone(filter_data)
		local axis = Vector3(unpack(filter_data.axis))
		axis = Vector3.normalize(axis)
		new_filter_data.axis = Vector3Box(axis)

		return new_filter_data
	end,
	update = function (filter_data, input_service)
		for _, input_mapping in pairs(filter_data.input_mappings) do
			if input_service:get(input_mapping) then
				return true
			end
		end

		local axis = filter_data.axis:unbox()

		for _, axis_mapping in pairs(filter_data.axis_mappings) do
			local axis_state = input_service:get(axis_mapping)

			if axis_state and filter_data.threshold <= Vector3.dot(axis_state, axis) then
				if filter_data.axis_pressed then
					return false
				else
					filter_data.axis_pressed = not filter_data.hold

					return true
				end
			else
				filter_data.axis_pressed = false
			end
		end

		return false
	end
}
InputFilters.or = {
	init = function (filter_data)
		return table.clone(filter_data)
	end,
	update = function (filter_data, input_service)
		for _, input_mapping in pairs(filter_data.input_mappings) do
			if input_service:get(input_mapping) then
				return true
			end
		end
	end
}
InputFilters.and = {
	init = function (filter_data)
		return table.clone(filter_data)
	end,
	update = function (filter_data, input_service)
		local value = nil

		for _, input_mapping in pairs(filter_data.input_mappings) do
			if not input_service:get(input_mapping) then
				value = false
			elseif value == nil then
				value = true
			end
		end

		return value
	end
}
InputFilters.sub = {
	init = function (filter_data)
		return table.clone(filter_data)
	end,
	update = function (filter_data, input_service)
		local value = 0
		local prev_input_value = nil

		for _, input_mapping in pairs(filter_data.input_mappings) do
			local input_value = input_service:get(input_mapping)

			if prev_input_value then
				value = prev_input_value - input_value
				prev_input_value = value
			else
				prev_input_value = input_value
			end
		end

		return value
	end
}

return
