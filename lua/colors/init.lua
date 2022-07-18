local present, gruvbox = pcall(require, 'gruvbox')
local o = vim.o
local cmd = vim.cmd

o.background = 'dark'
--gruvbox.setup({
--  undercurl = true,
-- underline = true,
--  bold = true,
--  italic = true, -- will make italic comments and special strings
--  inverse = true, -- invert background for search, diffs, statuslines and errors
--  invert_selection = false,
--  invert_signs = false,
--  invert_tabline = false,
--  invert_intend_guides = false,
--  contrast = "hard", -- can be "hard" or "soft"
--  overrides = {},
--})
cmd([[colorscheme gruvbox]])

require("transparent").setup({ 
	enable = true
})
