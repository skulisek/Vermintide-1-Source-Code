require("scripts/ui/views/loading_icon_view")

TransitionManager = class(TransitionManager)

TransitionManager.init = function (self)
	self:_setup_names()
	self:_setup_world()

	self._loading_icon_view = LoadingIconView:new(self._world)
	self._color = Vector3Box(0, 0, 0)
	self._fade_state = "out"
	self._fade = 0
end

TransitionManager._setup_names = function (self)
	self._world_name = "top_ingame_view"
end

TransitionManager.set_multiplayer_values = function (self, type, data, string)
	self._multiplayer_tracking = self._multiplayer_tracking or {}
	self._multiplayer_tracking[type] = self._multiplayer_tracking[type] or {}
	self._multiplayer_tracking[type][#self._multiplayer_tracking[type] + 1] = data
	self._multiplayer_tracking.string = self._multiplayer_tracking.string or {}
	self._multiplayer_tracking.string[#self._multiplayer_tracking.string + 1] = string
end

TransitionManager.dump_multiplayer_data = function (self)
	Application.warning(" ")
	Application.warning("##################################")
	Application.warning(" ")
	Application.warning("############## START #############")
	table.dump(self._multiplayer_tracking.start or {}, "MultiplayerRoundStart", 2, Application.warning)
	Application.warning(" ")
	Application.warning("############### END ##############")
	table.dump(self._multiplayer_tracking.end or {}, "MultiplayerRoundEnd", 2, Application.warning)
	Application.warning(" ")
	Application.warning("############# STRINGS ############")
	table.dump(self._multiplayer_tracking.string or {}, "Strings", 2, Application.warning)
	Application.warning(" ")
	Application.warning("##################################")
	Application.warning(" ")
end

TransitionManager._setup_world = function (self)
	local world = Managers.world:create_world(self._world_name, GameSettingsDevelopment.default_environment, nil, 991, Application.DISABLE_PHYSICS, Application.DISABLE_APEX_CLOTH)

	ScriptWorld.activate(world)

	self._loading_icon_viewport = ScriptWorld.create_viewport(world, "top_ingame_view_viewport", "overlay", 1)
	self._world = world
	self._gui = World.create_screen_gui(self._world, "immediate")
end

TransitionManager.destroy = function (self)
	self._loading_icon_view:destroy()

	self._loading_icon_view = nil

	Managers.world:destroy_world(self._world_name)
end

TransitionManager.show_loading_icon = function (self, show_background)
	self._loading_icon_view:show_loading_icon()

	if show_background then
		self:show_icon_background()
	else
		self:hide_icon_background()
	end
end

TransitionManager.hide_loading_icon = function (self)
	self._loading_icon_view:hide_loading_icon()
end

TransitionManager.show_icon_background = function (self)
	self._loading_icon_view:show_icon_background()
end

TransitionManager.hide_icon_background = function (self)
	self._loading_icon_view:hide_icon_background()
end

TransitionManager.loading_icon_active = function (self)
	return self._loading_icon_view and self._loading_icon_view:active()
end

TransitionManager.fade_in = function (self, speed, callback)
	self._fade_state = "fade_in"
	self._fade_speed = speed
	self._callback = callback

	if script_data.debug_transition_manager then
		print("[TransitionManager:fade_in]", Script.callstack())
	end
end

TransitionManager.fade_out = function (self, speed, callback)
	self._fade_state = "fade_out"
	self._fade_speed = -speed
	self._callback = callback

	if script_data.debug_transition_manager then
		print("[TransitionManager:fade_out]", Script.callstack())
	end
end

TransitionManager.force_fade_in = function (self)
	self._fade_state = "in"
	self._fade_speed = 0
	self._fade = 1

	if self._callback then
		self._callback()

		self._callback = nil
	end
end

TransitionManager.force_fade_out = function (self)
	self._fade_state = "out"
	self._fade_speed = 0
	self._fade = 0

	if self._callback then
		self._callback()

		self._callback = nil
	end
end

TransitionManager.fade_state = function (self)
	return self._fade_state
end

TransitionManager.in_fade_active = function (self)
	return self._fade ~= 0
end

TransitionManager.fade_value = function (self)
	return self._fade
end

TransitionManager.fade_in_completed = function (self)
	return self._fade_state == "in" and self._fade == 1
end

TransitionManager.fade_out_completed = function (self)
	return self._fade_state == "out" and self._fade == 0
end

TransitionManager._render = function (self, dt)
	local w, h = nil

	if Application.screen_resolution then
		w, h = Application.screen_resolution()
	else
		w, h = Application.resolution()
	end

	local color = self._color:unbox()

	Gui.rect(self._gui, Vector3(0, 0, UILayer.transition), Vector2(w, h), Color(self._fade * 255, color.x, color.y, color.z))
end

TransitionManager.force_render = function (self, dt)
	local is_loading_icon_active = self:loading_icon_active()

	if is_loading_icon_active then
		self._loading_icon_view:update(dt)
	end

	self:_render()
end

TransitionManager.update = function (self, dt)
	local is_loading_icon_active = self:loading_icon_active()

	if is_loading_icon_active then
		self._loading_icon_view:update(dt)
	end

	if self._fade_state == "out" then
		return
	end

	if self._fade_state == "in" then
		self:_render(dt)

		return
	end

	self._fade = math.clamp(self._fade + self._fade_speed * math.min(dt, 0.03333333333333333), 0, 1)

	if self._fade_state == "fade_in" and self._fade >= 1 then
		self._fade = 1
		self._fade_state = "in"

		if self._callback then
			local callback = self._callback
			self._callback = nil

			callback()
		end
	elseif self._fade_state == "fade_out" and self._fade <= 0 then
		self._fade = 0
		self._fade_state = "out"

		if self._callback then
			local callback = self._callback
			self._callback = nil

			callback()
		end

		return
	end

	if self._fade_state ~= "out" then
		self:_render(dt)
	end
end

return
