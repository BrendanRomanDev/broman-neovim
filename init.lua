require("user.options")
require("user.keymaps")
require("user.plugins")
require("user.autocommands")
require("user.colorscheme")
require("user.cmp")
require("user.telescope")
require("user.gitsigns")
require("user.treesitter")
require("user.autopairs")
require("user.comment")
require("user.nvim-tree")
require("user.bufferline")
require("user.lualine")
require("user.format-ts-errors")
require("user.nvim-highlight-colors")
require("user.toggleterm")
require("user.project")
require("user.impatient")
require("user.illuminate")
require("user.indentline")
require("user.alpha")
require("user.lsp")
require("user.dap")
require("user.lazygit")
require("user.live-server")
require("user.git-blame")
require("user.nvim-surround")
require("user.cool-substitute")

-- git blame starts un-toggled
-- there's probably a better way to do this but I'm currently a scrub
-- hotkey to toggle <leader>gb, configured in user/keymaps.lua
vim.g.gitblame_enabled = 0

vim.cmd([[
 let g:user_emmet_leader_key=','
 let g:user_emmet_install_global = 0
 autocmd FileType html,css,javasript.jsx,typescriptreact EmmetInstall
]])
