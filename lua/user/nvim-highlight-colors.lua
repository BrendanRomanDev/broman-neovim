local status_ok, nvim_highlight = pcall(require, "nvim-highlight-colors")
if not status_ok then
	return
end

nvim_highlight.setup()
