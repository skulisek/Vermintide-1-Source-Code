ShowCursorStack = ShowCursorStack or {
	stack_depth = 0
}

ShowCursorStack.render_cursor = function (allow_cursor_rendering)
	ShowCursorStack.allow_cursor_rendering = allow_cursor_rendering

	if ShowCursorStack.stack_depth > 0 then
		local is_fullscreen = Application.is_fullscreen and Application.is_fullscreen()

		Window.set_show_cursor(allow_cursor_rendering)
		Window.set_clip_cursor(not allow_cursor_rendering or is_fullscreen)
	end
end

ShowCursorStack.push = function ()
	printf("ShowCursorStack.push() depth: %d \n  %s", ShowCursorStack.stack_depth, string.match(Script.callstack(), "%[2%].-\n.-\n"))

	if ShowCursorStack.stack_depth == 0 and ShowCursorStack.allow_cursor_rendering then
		local is_fullscreen = Application.is_fullscreen and Application.is_fullscreen()

		Window.set_show_cursor(true)
		Window.set_clip_cursor(is_fullscreen or false)
	end

	ShowCursorStack.stack_depth = ShowCursorStack.stack_depth + 1
end

ShowCursorStack.pop = function ()
	printf("ShowCursorStack.pop() depth: %d \n  %s", ShowCursorStack.stack_depth, string.match(Script.callstack(), "%[2%].-\n.-\n"))

	ShowCursorStack.stack_depth = ShowCursorStack.stack_depth - 1

	assert(ShowCursorStack.stack_depth >= 0, "Trying to pop a cursor stack that doesn't exist.")

	if ShowCursorStack.stack_depth == 0 then
		Window.set_show_cursor(false)
		Window.set_clip_cursor(true)
	end
end

ShowCursorStack.update_clip_cursor = function ()
	local is_fullscreen = Application.is_fullscreen and Application.is_fullscreen()
	local allow_cursor_rendering = ShowCursorStack.allow_cursor_rendering

	if ShowCursorStack.stack_depth == 0 and allow_cursor_rendering then
		Window.set_clip_cursor(is_fullscreen or false)
	elseif ShowCursorStack.stack_depth > 0 then
		Window.set_clip_cursor(is_fullscreen)
	end
end

return
