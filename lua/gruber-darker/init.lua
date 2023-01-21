local highlights = require("gruber-darker.hl")

local M = {}

---Delete GruberDarker autocmds when the
---theme changes to something else
---@package
function M.on_color_scheme()
	vim.cmd([[autocmd! GruberDarker]])
	vim.cmd([[augroup! GruberDarker]])
end

---Clear current highlights and set `g:colors_name`
local function prepare_env()
	if vim.g.colors_name then
		vim.cmd.hi("clear")
	end

	vim.opt.termguicolors = true
	vim.g.colors_name = "GruberDarker"
end

function M.setup()
  prepare_env()
	-- set highlights here...
	for group, hl in pairs(highlights.groups) do
		vim.api.nvim_set_hl(0, group, hl)
	end

	local gruber_darker_group = vim.api.nvim_create_augroup("GruberDarker", { clear = true })
	vim.api.nvim_create_autocmd("ColorSchemePre", {
		group = gruber_darker_group,
		pattern = "*",
		callback = function()
			require("gruber-darker").on_color_scheme()
		end,
	})
	-- vim.api.nvim_create_autocmd("FileType", {
	-- 	group = gruber_darker_group,
	-- 	pattern = "qf,help",
	-- 	callback = function()
	-- 		vim.cmd.setlocal("winhighlight=Normal:NormalSB,SignColumn:SignColumnSB")
	-- 	end,
	-- })
end

return M

