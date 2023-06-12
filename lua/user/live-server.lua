local keymap = vim.keymap.set

local status_ok, live_server = pcall(require, "live-server")
if not status_ok then
	return
end

live_server.setup()

keymap("n", "<leader>99", ":LiveServerStart<CR>")
keymap("n", "<leader>00", ":LiveServerStop<CR>")
