local c = require("gruber-darker.palette")

local M = {}

---Set Neovim terminal colors
function M.setup()
	-- terminal colors adapted from
	-- https://github.com/drsooch/gruber-darker-vim/blob/master/colors/GruberDarker.vim#L202
	vim.g.terminal_color_0 = c.default["bg+1"]:to_string()
	vim.g.terminal_color_8 = c.default["bg+1"]:to_string()

	vim.g.terminal_color_1 = c.default["red+1"]:to_string()
	vim.g.terminal_color_9 = c.default["red+1"]:to_string()

	vim.g.terminal_color_2 = c.default.green:to_string()
	vim.g.terminal_color_10 = c.default.green:to_string()

	vim.g.terminal_color_3 = c.default.yellow:to_string()
	vim.g.terminal_color_11 = c.default.yellow:to_string()

	vim.g.terminal_color_4 = c.default.niagara:to_string()
	vim.g.terminal_color_12 = c.default.niagara:to_string()

	vim.g.terminal_color_5 = c.default.wisteria:to_string()
	vim.g.terminal_color_13 = c.default.wisteria:to_string()

	vim.g.terminal_color_6 = c.default.niagara:to_string()
	vim.g.terminal_color_14 = c.default.niagara:to_string()

	vim.g.terminal_color_7 = c.default.fg:to_string()
	vim.g.terminal_color_15 = c.default.fg:to_string()

	vim.g.terminal_color_background = c.default["bg+1"]:to_string()
	vim.g.terminal_color_foreground = c.default.white:to_string()
end

return M
