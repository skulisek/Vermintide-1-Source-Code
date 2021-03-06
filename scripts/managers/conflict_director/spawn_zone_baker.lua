SpawnZoneBaker = class(SpawnZoneBaker)
local InterestPointUnits = InterestPointUnits
local PackSpawningSettings = PackSpawningSettings
local DOOR_SEARCH_RADIUS = 1.5

SpawnZoneBaker.init = function (self, world, nav_world, level_analyzer)
	self.world = world
	self.nav_world = nav_world
	self.level_analyzer = level_analyzer
	self.spawn_zones_available = false

	if not InterestPointUnitsLookup then
		ConflictUtils.generate_spawn_point_lookup(world)
	end

	local level_settings = LevelHelper:current_level_settings(self.world)

	if level_settings.level_name then
		local spawn_zone_path = level_settings.level_name .. "_spawn_zones"

		if Application.can_get("lua", spawn_zone_path) then
			self.last_loaded_zone_package = spawn_zone_path
			local spawn_data = require(spawn_zone_path)
			self.zones = spawn_data.zones
			self.num_main_zones = spawn_data.num_main_zones
			self.spawn_pos_lookup = spawn_data.position_lookup
			self.total_main_path_length_unmodified = spawn_data.total_main_path_length
			local main_paths = spawn_data.main_paths
			self.main_paths = main_paths
			self.zone_convert = {}
			local path_markers = spawn_data.path_markers

			for i = 1, #path_markers, 1 do
				local marker = path_markers[i]
				local p = marker.pos
				marker.pos = Vector3Box(p[1], p[2], p[3])
			end

			self.path_markers = path_markers
			local crossroads = spawn_data.crossroads
			local mainpath_was_changed, altered_amount_num_main_zones = self.level_analyzer:remove_crossroads_extra_path_branches(main_paths, crossroads, self.total_main_path_length_unmodified, self.zones, self.num_main_zones)

			if mainpath_was_changed then
				self.num_main_zones = altered_amount_num_main_zones
			end

			local door_system = Managers.state.entity:system("door_system")
			local door_broadphase_query_result = {}
			local total_main_path_length = 0

			for i = 1, #main_paths, 1 do
				local path = main_paths[i]
				local nodes = path.nodes

				for j = 1, #nodes, 1 do
					local p = nodes[j]
					local node_position = Vector3(p[1], p[2], p[3])
					local num_doors = door_system:get_doors(node_position, DOOR_SEARCH_RADIUS, door_broadphase_query_result)

					if num_doors > 0 then
						local door_unit = door_broadphase_query_result[1]
						local result_position = MainPathUtils.resolve_node_in_door(nav_world, node_position, door_unit)

						if result_position then
							node_position = result_position
						else
							print("MainPathUtils.resolve_node_in_door: Error - was unable to resolve node in door at position", node_position)
						end
					end

					nodes[j] = Vector3Box(node_position)
				end

				total_main_path_length = total_main_path_length + path.path_length
			end

			self.level_analyzer.inject_travel_dists(main_paths, mainpath_was_changed)
			self.level_analyzer:store_path_markers(path_markers)

			self.total_main_path_length = total_main_path_length

			self.level_analyzer:store_main_paths(main_paths)

			if mainpath_was_changed then
				Managers.state.spawn.respawn_handler:recalc_respawner_dist_due_to_crossroads()
			end

			self:create_cover_points(spawn_data.cover_points, self.level_analyzer.cover_points_broadphase)

			self.spawn_zones_available = true
		else
			ferror("Cant get %s, make sure this is added to the \\resource_packages\\level_scripts.package file. Or have you forgotten to run generate_resource_packages.bat?", spawn_zone_path)
		end
	end
end

SpawnZoneBaker.reset = function (self)
	if self.last_loaded_zone_package then
		package.loaded[self.last_loaded_zone_package] = nil
	end
end

SpawnZoneBaker.loaded_spawn_zones_available = function (self)
	return self.spawn_zones_available
end

SpawnZoneBaker.create_cover_points = function (self, cover_points, broad_phase)
	if not cover_points then
		print("No cover points found")

		return
	end

	local show_hidden = script_data.show_hidden_cover_points
	local ok_color = Color(0, 255, 0)
	local bad_color = Color(200, 75, 0)
	local nav_world = self.nav_world
	local numbers = #cover_points
	local up = Vector3.up()

	for i = 1, numbers, 5 do
		local a, b, c = Script.temp_count()
		local x = cover_points[i]
		local y = cover_points[i + 1]
		local z = cover_points[i + 2]
		local pos = Vector3(x, y, z)

		if show_hidden then
			local is_position_on_navmesh = GwNavQueries.triangle_from_position(nav_world, pos, 0.5, 0.5)

			if is_position_on_navmesh then
				QuickDrawerStay:sphere(pos, 0.5, ok_color)
			else
				QuickDrawerStay:capsule(pos, pos + Vector3(0, 0, 20), 0.5, bad_color)
				print("bad cover point outside nav-mesh", pos)
			end
		end

		local nx = cover_points[i + 3]
		local ny = cover_points[i + 4]
		local rot = Quaternion.look(Vector3(nx, ny, 0), up)
		local unit = World.spawn_unit(self.world, "units/hub_elements/empty", pos, rot)

		Broadphase.add(broad_phase, unit, pos, 1)
		Script.set_temp_count(a, b, c)
	end
end

SpawnZoneBaker.periodical = function (self, hi, dist_data)
	local len, density = nil

	if hi then
		len = math.random(dist_data.min_low_dist, dist_data.max_low_dist)
		density = dist_data.min_low_density + math.random() * (dist_data.max_low_density - dist_data.min_low_density)
		hi = false
	else
		len = math.random(dist_data.min_hi_dist, dist_data.max_hi_dist)
		density = dist_data.min_hi_density + math.random() * (dist_data.max_hi_density - dist_data.min_hi_density)
		hi = true
	end

	return len, density, hi
end

local function array_copy(source, dest, size)
	for i = 1, size, 1 do
		dest[i] = source[i]
	end
end

local function array_remove_element(array, index, size)
	local element = array[index]
	array[index] = array[size]
	array[size] = nil

	return element
end

local work_list = {}
local lookup = {}

SpawnZoneBaker.generate_spawns = function (self, spawn_cycle_length, goal_density, area_density_coefficient, length_density_coefficient)
	if not InterestPointUnitsLookup then
		ConflictUtils.generate_spawn_point_lookup(self.world)
	end

	if not self.spawn_zones_available then
		print("No spawn zones where found, can't generate spawns")
	end

	if self.graph then
		self.graph:reset()
	end

	local great_cycles = {}
	local zones = self.zones
	local spawn_pos_lookup = self.spawn_pos_lookup
	local num_main_zones = self.num_main_zones
	local zone_convert = self.zone_convert
	local cycle_length = 0
	local cycle_zones = {}

	for i = 1, num_main_zones, 1 do
		local zone_layer = zones[i]
		local outer = {}
		local total_zone_area = zone_layer.sub_areas[1]
		local zone = {
			total_area = 0,
			nodes = zone_layer.sub[1],
			area = zone_layer.sub_areas[1],
			outer = outer
		}

		for j = 2, #zone_layer.sub, 1 do
			local area = zone_layer.sub_areas[j]
			total_zone_area = total_zone_area + (area or 0)
			outer[#outer + 1] = {
				nodes = zone_layer.sub[j],
				area = area
			}
		end

		zone.total_area = total_zone_area
		cycle_length = cycle_length + zone_layer.sub_zone_length
		cycle_zones[#cycle_zones + 1] = zone
		zone_convert[i] = zone

		if spawn_cycle_length <= cycle_length or i == num_main_zones then
			great_cycles[#great_cycles + 1] = {
				zones = cycle_zones,
				length = cycle_length
			}
			cycle_length = cycle_length - spawn_cycle_length
			cycle_zones = {}
		end
	end

	local num_great_cycles = #great_cycles
	local spawns = {}
	local pack_sizes = {}
	local pack_rotations = {}
	local spawn_pos_lookup = self.spawn_pos_lookup
	local distribution = PackSpawningSettings.distribution_method
	local dist_data = PackDistributions[distribution]

	for i = 1, num_great_cycles, 1 do
		local cycle = great_cycles[i]
		local cycle_zones = cycle.zones
		local num_cycle_zones = #cycle_zones
		local sum_density = 0

		if distribution == "random" then
			for j = 1, num_cycle_zones, 1 do
				local zone = cycle_zones[j]
				local density = math.random()
				zone.density = density
				sum_density = sum_density + density
			end
		elseif distribution == "periodical" then
			local len, density, period_end = nil
			local hi = math.random() > 0.5
			len, density, hi = self:periodical(hi, dist_data)
			cycle_zones[1].period_length = len
			period_end = len

			for j = 1, num_cycle_zones, 1 do
				local zone = cycle_zones[j]
				zone.density = density

				if period_end < j then
					len, density, hi = self:periodical(hi, dist_data)
					period_end = (j + len) - 1

					if num_cycle_zones < period_end then
						len = num_cycle_zones - j
						period_end = num_cycle_zones
					end

					zone.period_length = len
				elseif dist_data.random_dist then
					if hi then
						density = dist_data.min_hi_density + math.random() * (dist_data.max_hi_density - dist_data.min_hi_density)
					else
						density = dist_data.min_low_density + math.random() * (dist_data.max_low_density - dist_data.min_low_density)
					end
				end

				if density < dist_data.zero_density_below then
					density = 0
				end

				sum_density = sum_density + density
			end
		elseif distribution == "waved" then
			local density = math.random()

			repeat
				for j = 1, num_cycle_zones, 1 do
					local zone = cycle_zones[j]
					zone.density = density

					if math.random() > 0.8 then
						density = math.random()

						if density < 0.5 then
							density = 0
						end
					end

					sum_density = sum_density + density
				end
			until sum_density ~= 0
		elseif distribution == "uphill" then
			local z = 1 / num_cycle_zones

			for j = 1, num_cycle_zones, 1 do
				local zone = cycle_zones[j]
				zone.density = j * z
				sum_density = sum_density + zone.density
			end
		end

		local wanted_average_density = goal_density * num_cycle_zones

		if sum_density > 0 then
			local normalizer = wanted_average_density / sum_density
			local remainder = 0

			for j = 1, num_cycle_zones, 1 do
				local zone = cycle_zones[j]
				zone.density = zone.density * normalizer

				if remainder > 0 then
					zone.density = zone.density + remainder
					remainder = 0
				end

				if zone.density > 1 then
					remainder = (remainder + zone.density) - 1
					zone.density = 1
				end
			end

			local kept = 1

			for j = 1, num_cycle_zones, 1 do
				local center_zone = cycle_zones[j]
				local center_density = center_zone.density
				local outer = center_zone.outer
				local density = center_density

				for k = 1, #outer, 1 do
					local zone = outer[k]
					local density = math.clamp(density * kept + (1 - kept) * (2 * math.random() - 1), 0, 1)
					zone.density = density
				end
			end

			if PackSpawningSettings.populate_by_squeezed then
				self:populate_spawns_by_rats_squeezed(spawns, pack_sizes, pack_rotations, cycle_zones, area_density_coefficient, length_density_coefficient)
			end

			if PackSpawningSettings.populate_by_area_and_length then
				local clamp_outer_zones_used = PackSpawningSettings.clamp_outer_zones_used

				self:populate_spawns_by_rats(spawns, pack_sizes, pack_rotations, cycle_zones, area_density_coefficient, length_density_coefficient, true)

				for j = 1, num_cycle_zones, 1 do
					local outer_zones = cycle_zones[j].outer

					if clamp_outer_zones_used then
						local num_zones = #outer_zones
						local num_to_remove = num_zones - clamp_outer_zones_used

						if num_to_remove > 0 then
							array_copy(outer_zones, work_list, num_zones)

							local work_list_size = #outer_zones

							for i = 1, num_to_remove, 1 do
								array_remove_element(work_list, math.random(1, work_list_size), work_list_size)

								work_list_size = work_list_size - 1
							end

							outer_zones = work_list
						end
					end

					self:populate_spawns_by_rats(spawns, pack_sizes, pack_rotations, outer_zones, area_density_coefficient, 0)
				end
			end
		else
			print(sprintf("Spawn density in great_cycle %d is 0, num cycle zones: %d ", i, num_cycle_zones))
		end
	end

	local calculate_nearby_islands = PackSpawningSettings.calculate_nearby_islands

	for i = num_main_zones + 1, #zones, 1 do
		local zone = zones[i]
		local sub_zones = zone.sub
		local sub_areas = zone.sub_areas

		for j = 1, #sub_zones, 1 do
			local nodes = sub_zones[j]
			local area = sub_areas[j]
			local density = math.random()
			local num_wanted_rats = math.floor(area * density * area_density_coefficient)

			if num_wanted_rats > 0 then
				self:spawn_amount_rats(spawns, pack_sizes, pack_rotations, nodes, num_wanted_rats, area)
			end
		end

		if calculate_nearby_islands then
			local a, b, c = Script.temp_count()
			local triangle_index = sub_zones[1][1]
			local p = spawn_pos_lookup[triangle_index]
			local best_point, best_travel_dist, move_percent = MainPathUtils.closest_pos_at_main_path(self.main_paths, Vector3(p[1], p[2], p[3]))
			local main_zone_index = math.floor((best_travel_dist + 5) / 10)

			if main_zone_index == 0 then
				main_zone_index = 1
			end

			local nearby_islands = zones[main_zone_index].nearby_islands or {}
			nearby_islands[#nearby_islands + 1] = zone
			zones[main_zone_index].nearby_islands = nearby_islands

			Script.set_temp_count(a, b, c)
		end
	end

	assert(#spawns == #pack_sizes)

	self.great_cycles = great_cycles

	table.clear(lookup)

	return spawns, pack_sizes, pack_rotations
end

SpawnZoneBaker.populate_spawns_by_rats = function (self, spawns, pack_sizes, pack_rotations, zone_list, area_density_coefficient, length_density_coefficient, is_main_zone)
	local num_zones = #zone_list
	local area_bucket = 0
	local dist_bucket = 0
	local zone_length = 10
	local clamp_area = PackSpawningSettings.clamp_main_path_zone_area

	for j = 1, num_zones, 1 do
		local zone = zone_list[j]
		local nodes = zone.nodes

		if nodes then
			local area = (is_main_zone and zone.area < clamp_area and clamp_area) or zone.area
			local num_area_spawns_f = area * zone.density * area_density_coefficient + area_bucket
			local num_area_spawns = math.floor(num_area_spawns_f)
			area_bucket = num_area_spawns_f - num_area_spawns
			local num_dist_spawns_f = zone_length * zone.density * length_density_coefficient + dist_bucket
			local num_dist_spawns = math.floor(num_dist_spawns_f)
			dist_bucket = num_dist_spawns_f - num_dist_spawns
			local num_wanted_rats = num_area_spawns + num_dist_spawns

			if num_wanted_rats > 0 then
				local a, b, c = Script.temp_count()
				local num_spawns = self:spawn_amount_rats(spawns, pack_sizes, pack_rotations, nodes, num_wanted_rats, area)
				zone.wanted_spawns = num_spawns

				Script.set_temp_count(a, b, c)
			end
		else
			print("Warning: missing nodes! in zones")
		end
	end
end

SpawnZoneBaker.populate_spawns_by_rats_squeezed = function (self, spawns, pack_sizes, pack_rotations, zone_list, area_density_coefficient, length_density_coefficient, is_main_zone)
	local area_bucket = 0
	local dist_bucket = 0
	local zone_length = 10
	local clamp_area = PackSpawningSettings.clamp_main_path_zone_area
	local period_zones = nil
	local period_area = 0
	local rats_per_10m = PackSpawningSettings.squezed_rats_per_10_meter
	local rats_in_period = nil

	for j = 1, #zone_list, 1 do
		local zone = zone_list[j]
		local outer_zones = zone.outer
		local nodes = zone.nodes

		if nodes then
			local period_length = zone.period_length

			if period_length then
				rats_in_period = rats_per_10m * period_length
				period_area = 0

				for k = j, (j + period_length) - 1, 1 do
					period_area = period_area + zone_list[k].total_area
				end
			end

			if period_area > 0 then
				dist_bucket = self:squeezed_populate(spawns, pack_sizes, pack_rotations, zone, period_area, rats_in_period, dist_bucket)
				local outer_zones = zone.outer

				for k = 1, #outer_zones, 1 do
					local outer_zone = outer_zones[k]
					dist_bucket = self:squeezed_populate(spawns, pack_sizes, pack_rotations, outer_zone, period_area, rats_per_10m, dist_bucket)
				end
			end
		else
			print("Warning: missing nodes! in zones")
		end
	end
end

SpawnZoneBaker.squeezed_populate = function (self, spawns, pack_sizes, pack_rotations, zone, period_area, rats_in_period, dist_bucket)
	if not zone.area or zone.area <= 0 then
		return dist_bucket
	end

	local nodes = zone.nodes
	local density_fraction = zone.area / period_area
	local num_dist_spawns_f = density_fraction * zone.density * rats_in_period + dist_bucket
	local num_dist_spawns = math.floor(num_dist_spawns_f)
	dist_bucket = num_dist_spawns_f - num_dist_spawns
	local num_wanted_rats = num_dist_spawns

	if num_wanted_rats > 0 then
		local a, b, c = Script.temp_count()
		local num_spawns = self:spawn_amount_rats(spawns, pack_sizes, pack_rotations, nodes, num_wanted_rats)

		Script.set_temp_count(a, b, c)

		zone.wanted_spawns = num_spawns
	end

	return dist_bucket
end

local max_pack_size = #InterestPointUnits

SpawnZoneBaker.spawn_amount_rats = function (self, spawns, pack_sizes, pack_rotations, nodes, num_wanted_rats, area)
	local vector3_normalize = Vector3.normalize
	local InterestPointUnits = InterestPointUnits
	local InterestPointPickListIndexLookup = InterestPointPickListIndexLookup
	local nav_world = self.nav_world
	local spawn_pos_lookup = self.spawn_pos_lookup
	local amount = #spawns
	local tries = 0
	local num_nodes = #nodes
	local num_packs = 0

	while num_wanted_rats > 0 do
		num_packs = num_packs + 1
		local max_num_rats = math.min(num_wanted_rats, max_pack_size)
		local index_max = InterestPointPickListIndexLookup[max_num_rats]
		local pack_size = InterestPointPickList[math.random(index_max)]
		local variants = InterestPointUnits[pack_size]
		local num_variants = #variants
		local unit_name = (num_variants == 1 and variants[1]) or variants[math.random(num_variants)]

		for i = 1, 10, 1 do
			local a, b, c = Script.temp_count()
			local node_index = math.random(num_nodes)
			local tri_index = nodes[node_index]

			if not lookup[tri_index] then
				local p = spawn_pos_lookup[nodes[node_index]]
				local pos = Vector3(p[1], p[2], p[3])
				local angle = math.random() * 2 * math.pi
				local rot = Quaternion(Vector3.up(), angle)
				local outside_navmesh_pos = ConflictUtils.interest_point_outside_nav_mesh(nav_world, unit_name, pos, rot)
				local move_tries = 0

				while outside_navmesh_pos and move_tries < 3 do
					move_tries = move_tries + 1
					local move_vec = vector3_normalize(pos - outside_navmesh_pos) * 1
					pos = pos + move_vec
					outside_navmesh_pos = ConflictUtils.interest_point_outside_nav_mesh(nav_world, unit_name, pos, rot)
				end

				if not outside_navmesh_pos then
					amount = amount + 1
					spawns[amount] = Vector3Box(pos)

					assert(unit_name, "what the hell no spawn point unit name?")

					pack_sizes[amount] = unit_name
					pack_rotations[amount] = angle
					num_wanted_rats = num_wanted_rats - pack_size
					lookup[tri_index] = true

					break
				end
			end

			Script.set_temp_count(a, b, c)
		end

		tries = tries + 1

		if tries > 100 then
			print("cannot find place to spawn rats")

			break
		end
	end

	table.clear(lookup)

	return num_packs
end

local heatmap_colors_lookup = {}

for i = 1, 16, 1 do
	heatmap_colors_lookup[i] = {
		math.floor((1 - i / 16) * 255),
		0,
		math.floor(i / 16 * 255)
	}
end

SpawnZoneBaker.draw_zones = function (self, nav_world, draw_only_one_zone_index)
	local show_spawn_density = false

	if self.gui then
		World.destroy_gui(self.world, self.gui)

		self.gui = nil

		return
	else
		self.gui = World.create_world_gui(self.world, Matrix4x4.identity(), 1, 1)
	end

	local zone_convert = self.zone_convert
	local gui = self.gui
	local alpha = 64
	local zones = self.zones
	local spawn_pos_lookup = self.spawn_pos_lookup
	local heatmap_colors = {}

	if show_spawn_density then
		for i = 1, 16, 1 do
			local c = heatmap_colors_lookup[i]
			heatmap_colors[i] = Color(200, c[1], c[2], c[3])
		end
	end

	local start = math.clamp(draw_only_one_zone_index or 1, 1, #zones)

	for i = start, #zones, 1 do
		local zone = zones[i]
		local sub_zones = zone.sub
		local colors, density = nil

		if show_spawn_density then
			density = math.floor(((zone_convert[i] and zone_convert[i].density) or 1) * 16)
		else
			local f = 92 + 63 * i % 3
			local g = f / 2
			colors = {
				Color(alpha, 0, f, 0),
				Color(alpha, 0, 0, f),
				Color(alpha, f, 0, 0),
				Color(alpha, f, f, 0),
				Color(alpha, 0, f, f),
				Color(alpha, f, 0, f),
				Color(alpha, f, g, 0),
				Color(alpha, f, 0, g),
				Color(alpha, 0, g, f),
				Color(alpha, g, 0, f)
			}
		end

		local h = Vector3(0, 0, 0.1)

		for j = 1, #sub_zones, 1 do
			local sub_zone = sub_zones[j]

			if sub_zone then
				for k = 1, #sub_zone, 1 do
					local triangle_index = sub_zone[k]
					local a, b, c = Script.temp_count()
					local p = spawn_pos_lookup[triangle_index]
					local triangle = GwNavTraversal.get_seed_triangle(nav_world, Vector3(p[1], p[2], p[3]), 0.5, 0.5)

					if triangle then
						local p1, p2, p3 = GwNavTraversal.get_triangle_vertices(nav_world, triangle)

						if show_spawn_density then
							Gui.triangle(gui, p1 + h, p2 + h, p3 + h, 2, heatmap_colors[density])
						else
							local col = colors[j] or Colors.get_indexed((i * 7 + j + 5) % 32 + 1)

							Gui.triangle(gui, p1 + h, p2 + h, p3 + h, 2, col)
						end
					end

					Script.set_temp_count(a, b, c)
				end
			end
		end

		if draw_only_one_zone_index then
			break
		end
	end
end

SpawnZoneBaker.toggle_graph = function (self)
	if self.graph then
		self.graph:set_active(not self.graph.active)
	end
end

SpawnZoneBaker.show_debug = function (self, show)
	if show then
		if not self.graph then
			self:draw_pack_density_graph()
		end

		self.graph:set_active(true)
	elseif self.graph then
		self.graph:set_active(false)
	end

	return true
end

SpawnZoneBaker.execute_debug = function (self)
	QuickDrawerStay:reset()
	Managers.state.conflict:respawn_level()
end

SpawnZoneBaker.draw_pack_density_graph = function (self)
	if not self.graph then
		self.graph = Managers.state.debug.graph_drawer:create_graph("spawn density", {
			"distance",
			"density"
		})
		self.graph.visual_frame.y_max = 100
		self.graph.scroll_lock.vertical = false
		self.graph.scroll_lock.left = false
	end

	local g = self.graph

	if not g.active then
		g:set_active(true)
	end

	local zones = self.zones
	local sub_zone_length = zones[1].sub_zone_length
	local dist = 0
	local great_cycles = self.great_cycles
	local num_great_cycles = #great_cycles

	g:set_plot_color("density", "maroon", "crimson")

	for i = 1, num_great_cycles, 1 do
		local cycle = great_cycles[i]
		local cycle_zones = cycle.zones

		if i > 1 then
			self.graph:add_annotation({
				text = "Cycle",
				live = true,
				y = 105,
				color = "green",
				x = dist
			})
		end

		for j = 1, #cycle_zones, 1 do
			local zone = cycle_zones[j]
			local density = zone.density
			local area = math.clamp(zone.area * 0.5, 0, 100)

			g:add_point(dist, density * 100, "density")

			dist = dist + sub_zone_length
			local p = self.spawn_pos_lookup[zone.nodes[1]]
			local pos = Vector3(p[1], p[2], p[3])
			local width = math.sqrt(zone.total_area) / 5
			local box_extents = Vector3(width, width, width)
			local pose = Matrix4x4.from_quaternion_position(Quaternion.look(Vector3.up()), pos)

			QuickDrawerStay:box(pose, box_extents, Color(255, 0, 200, 0))
			QuickDrawerStay:sphere(pos, 7 * density)
		end
	end

	local rares = self.level_analyzer.boss_event_list
	local y = 60

	for k = 1, #rares, 1 do
		local rare = rares[k]
		local path_dist = rare[3]
		local event_name = rare[2]
		local color = rare[4].debug_color

		print("PATH DIST:", path_dist)
		self.graph:add_annotation({
			live = true,
			x = path_dist,
			y = y,
			text = event_name,
			color = color
		})

		y = y + 7

		if y > 70 then
			y = 30
		end
	end

	local player_annotation = {
		text = "PLAYER",
		live = true,
		y = 50,
		color = "green",
		x = 0
	}

	self.graph:add_annotation(player_annotation)

	self.player_annotation = player_annotation
end

SpawnZoneBaker.draw_player_in_density_graph = function (self, travel_dist)
	if self.graph then
		if not self.player_annotation then
			local player_annotation = {
				text = "PLAYER",
				live = true,
				y = 50,
				color = "green",
				x = 0
			}

			self.graph:add_annotation(player_annotation)

			self.player_annotation = player_annotation
		end

		self.graph:move_annotation(self.player_annotation, travel_dist)
	end
end

return
