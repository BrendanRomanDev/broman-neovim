local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")

local section = dashboard.section
local opts = dashboard.config

dashboard.section.header.val = {
	[[ ______                                  ______              ]],
	[[(____  \                                (______)             ]],
	[[ ____)  ) ____ ___  ____  _____ ____     _     _ _____ _   _ ]],
	[[|  __  ( / ___) _ \|    \(____ |  _ \   | |   | | ___ | | | |]],
	[[| |__)  ) |  | |_| | | | / ___ | | | |  | |__/ /| ____|\ V / ]],
	[[|______/|_|   \___/|_|_|_\_____|_| |_|  |_____/ |_____) \_/  ]],
	[[                                                              ]],
}

section.buttons.val = {
	dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
	dashboard.button("p", " " .. " Find project", ":lua require('telescope').extensions.projects.projects()<CR>"),
	dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", " " .. " Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", " " .. " Config", ":e ~/.config/nvim/init.lua <CR>"),
	dashboard.button("q", " " .. " Quit", ":qa<CR>"),
}

section.buttons.opts = { spacing = 0 }

for i, btn in ipairs(section.buttons.val) do
	btn.opts.hl_shortcut = "Special"
end

opts = {
	layout = {
		{ type = "padding", val = 2 },
		section.header,
		{ type = "padding", val = 2 },
		section.buttons,
		{ type = "padding", val = 2 },
		section.footer,
	},
	opts = {
		margin = 5,
		noautocmd = true,
	},
}

local function footer()
	return "See the opportunity, not the inconvenience"
end

section.footer.val = footer()

section.header.opts.hl = "Constant"
section.footer.opts.hl = "Constant"

alpha.setup(opts)
