ScriptBackendProfileAttribute = ScriptBackendProfileAttribute or {}
ScriptBackendProfileAttribute.set = function (name, value)
	Backend.write_profile_attribute_as_number(name, value)

	return 
end
ScriptBackendProfileAttribute.get = function (name)
	return Backend.read_profile_attribute_as_number(name)
end
ScriptBackendProfileAttribute.set_string = function (name, value)
	Backend.write_profile_attribute_as_string(name, value)

	return 
end
ScriptBackendProfileAttribute.get_string = function (name)
	return Backend.read_profile_attribute_as_string(name)
end

function make_script_backend_profile_attribute_local()
	ScriptBackendProfileAttribute = ScriptBackendProfileAttributeLocal

	return 
end

function make_script_backend_profile_attribute_tutorial()
	ScriptBackendProfileAttribute = ScriptBackendProfileAttributeTutorial

	return 
end

BackendManagerLocalEnabled = BackendManagerLocalEnabled or false

if BackendManagerLocalEnabled then
	make_script_backend_profile_attribute_local()
end

BackendManagerTutorialEnabled = BackendManagerTutorialEnabled or false

if BackendManagerTutorialEnabled then
	make_script_backend_profile_attribute_tutorial()
end

return 
