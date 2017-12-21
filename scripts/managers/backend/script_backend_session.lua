local States = {
	END_OF_ROUND = 3,
	ERROR = 4,
	IN_GAME = 2,
	INITIALIZED = 1,
	UNINITIALIZED = 0
}

for key, value in pairs(States) do
	States[value] = key
end

local Session = class(Session)
Session.init = function (self)
	self._peers = {}
	self._peer_queue = {}
	self._debug_backend_session_done_timeout = false
	self._debug_backend_session_stop_timeout = false

	return 
end
Session.disable = function (self)
	self._disabled = true

	return 
end
Session.enabled = function (self)
	return not self._disabled
end
Session.register_rpcs = function (self, network_event_delegate)
	self._network_event_delegate = network_event_delegate

	if Managers.state.network.is_server then
		network_event_delegate.register(network_event_delegate, self, "rpc_backend_session_done")
	else
		network_event_delegate.register(network_event_delegate, self, "rpc_backend_session_join")
	end

	return 
end
Session.rpc_backend_session_join = function (self, sender, session_id)
	BackendSession.join(session_id)

	return 
end
Session.rpc_backend_session_done = function (self, sender)
	if not self._debug_backend_session_done_timeout then
		self._dice_player_done(self, sender)
	end

	return 
end
Session._dice_player_done = function (self, peer_id)
	local players = self._dice_data.players
	players[peer_id] = nil

	if table.is_empty(players) and not self._debug_backend_session_stop_timeout then
		BackendSession.stop()

		self._dice_data = nil
	end

	return 
end
Session.reset = function (self)
	if self._disabled then
		self._disabled = nil
	else
		local state = BackendSession.get_state()

		if Managers.state.network.is_server and state ~= States.UNINITIALIZED then
			BackendSession.stop()
		end

		self._post_dice_timeout = nil

		self._unregister_rpcs(self)

		self._peers = {}
		self._peer_queue = {}
		self._disabled = nil
		self._dice_data = nil
	end

	return 
end
Session._unregister_rpcs = function (self)
	self._network_event_delegate:unregister(self)

	self._network_event_delegate = nil

	return 
end
Session.update = function (self, dt)
	local state = BackendSession.get_state()

	if self._log_state then
		if state == States.UNINITIALIZED then
			print("Session state: done!")

			self._log_state = nil
		else
			print("Session state: ", States[state])
		end
	end

	if 0 < #self._peer_queue and BackendSession.get_session_id() then
		local session_id = BackendSession.get_session_id()
		local network_manager = Managers.state.network

		for key, peer_id in ipairs(self._peer_queue) do
			self._peer_queue[key] = nil

			network_manager.network_transmit:send_rpc("rpc_backend_session_join", peer_id, session_id)

			self._peers[peer_id] = true
		end
	end

	local dice_data = self._dice_data

	if dice_data and dice_data.timeout < Managers.time:time("main") then
		for peer_id, _ in pairs(dice_data.players) do
			self._dice_player_done(self, peer_id)
		end

		self._error_data = {
			reason = BACKEND_LUA_ERRORS.ERR_DICE_TIMEOUT2
		}
	elseif self._post_dice_timeout then
		if state == States.UNINITIALIZED then
			self._post_dice_timeout = nil
		elseif self._post_dice_timeout < Managers.time:time("main") then
			self._post_dice_timeout = nil
		end
	end

	return 
end
Session.add_peer = function (self, peer_id)
	local session_id = BackendSession.get_session_id()

	if session_id then
		local network_manager = Managers.state.network

		network_manager.network_transmit:send_rpc("rpc_backend_session_join", peer_id, session_id)

		self._peers[peer_id] = true
	else
		self._peer_queue[#self._peer_queue + 1] = peer_id
	end

	return 
end
Session.end_of_round = function (self)
	local dice_players = table.clone(self._peers)
	dice_players[Network.peer_id()] = true
	local timeout = Managers.time:time("main") + 20
	self._dice_data = {
		players = dice_players,
		timeout = timeout
	}

	BackendSession.end_of_round()

	return 
end
Session.received_dice_game_loot = function (self)
	self._post_dice_timeout = Managers.time:time("main") + 20
	local network_manager = Managers.state.network

	network_manager.network_transmit:send_rpc_server("rpc_backend_session_done")

	return 
end
Session.check_for_errors = function (self)
	local error_data = self._error_data
	self._error_data = nil

	return error_data
end
backend_session = backend_session or Session.new(Session)
ScriptBackendSession = ScriptBackendSession or {}
ScriptBackendSession.init = function (network_event_delegate, disable_for_level)
	if disable_for_level then
		backend_session:disable()
	else
		backend_session:register_rpcs(network_event_delegate)
	end

	return 
end
ScriptBackendSession.update = function ()
	if backend_session:enabled() then
		backend_session:update()
	end

	return 
end
ScriptBackendSession.check_for_errors = function ()
	return backend_session:check_for_errors()
end
ScriptBackendSession.add_peer = function (peer_id)
	if backend_session:enabled() then
		backend_session:add_peer(peer_id)
	end

	return 
end
ScriptBackendSession.start = function ()
	if backend_session:enabled() then
		BackendSession.start()
	end

	return 
end
ScriptBackendSession.end_of_round = function ()
	if backend_session:enabled() then
		backend_session:end_of_round()
	end

	return 
end
ScriptBackendSession.received_dice_game_loot = function ()
	if backend_session:enabled() then
		backend_session:received_dice_game_loot()
	end

	return 
end
ScriptBackendSession.get_state = function ()
	local state = BackendSession.get_state()

	return States[state]
end
ScriptBackendSession.leave = function ()
	backend_session:reset()

	return 
end

function make_script_backend_session_local()
	local ScriptBackendSessionLocal = {
		__index = function ()
			return ScriptBackendSessionLocal.__index
		end
	}

	setmetatable(ScriptBackendSessionLocal, ScriptBackendSessionLocal)

	ScriptBackendSession = ScriptBackendSessionLocal
	BackendManagerLocalSessionEnabled = true

	return 
end

BackendManagerLocalSessionEnabled = BackendManagerLocalSessionEnabled or false
BackendManagerLocalEnabled = BackendManagerLocalEnabled or false
BackendManagerTutorialEnabled = BackendManagerTutorialEnabled or false

if BackendManagerLocalEnabled or BackendManagerLocalSessionEnabled or BackendManagerTutorialEnabled then
	make_script_backend_session_local()
end

return 
