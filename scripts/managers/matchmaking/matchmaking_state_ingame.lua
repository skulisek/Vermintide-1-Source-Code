MatchmakingStateIngame = class(MatchmakingStateIngame)
MatchmakingStateIngame.NAME = "MatchmakingStateIngame"
MatchmakingStateIngame.init = function (self, params)
	self.lobby = params.lobby
	self.matchmaking_ui = params.matchmaking_ui
	self.matchmaking_manager = params.matchmaking_manager

	return 
end
MatchmakingStateIngame.destroy = function (self)
	return 
end
MatchmakingStateIngame.on_enter = function (self, state_context)
	self.state_context = state_context

	self.matchmaking_manager:set_status_message("matchmaking_status_playing_game")

	return 
end
MatchmakingStateIngame.on_exit = function (self)
	return 
end
MatchmakingStateIngame.update = function (self, dt, t)
	return nil
end

return 
