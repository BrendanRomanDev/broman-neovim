-- local colorscheme = "sonokai"
-- local colorscheme = "base16-nord"
local colorscheme = "base16-onedark"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end
