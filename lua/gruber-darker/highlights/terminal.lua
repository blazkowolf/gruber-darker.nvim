local c = require("gruber-darker.palette")

---@type HighlightsProvider
local M = {}

---Set Neovim terminal colors
function M.setup()
	-- terminal colors adapted from
	-- https://github.com/drsooch/gruber-darker-vim/blob/master/colors/GruberDarker.vim#L202
	vim.g.terminal_color_0 = c["bg+1"]:to_string()
	vim.g.terminal_color_8 = c["bg+1"]:to_string()

	vim.g.terminal_color_1 = c["red+1"]:to_string()
	vim.g.terminal_color_9 = c["red+1"]:to_string()

	vim.g.terminal_color_2 = c.green:to_string()
	vim.g.terminal_color_10 = c.green:to_string()

	vim.g.terminal_color_3 = c.yellow:to_string()
	vim.g.terminal_color_11 = c.yellow:to_string()

	vim.g.terminal_color_4 = c.niagara:to_string()
	vim.g.terminal_color_12 = c.niagara:to_string()

	vim.g.terminal_color_5 = c.wisteria:to_string()
	vim.g.terminal_color_13 = c.wisteria:to_string()

	vim.g.terminal_color_6 = c.niagara:to_string()
	vim.g.terminal_color_14 = c.niagara:to_string()

	vim.g.terminal_color_7 = c.fg:to_string()
	vim.g.terminal_color_15 = c.fg:to_string()

	vim.g.terminal_color_background = c["bg+1"]:to_string()
	vim.g.terminal_color_foreground = c.white:to_string()
end

return M
