local status_ok, cool_substitute = pcall(require, "cool-substitute")
if not status_ok then
	return
end

cool_substitute.setup({setup_keybindings = true})
