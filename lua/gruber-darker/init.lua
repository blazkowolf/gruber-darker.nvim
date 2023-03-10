local config = require("gruber-darker.config")

local M = {}

---Delete GruberDarker autocmds when the
---theme changes to something else
---@package
function M.on_colorscheme()
	vim.cmd([[autocmd! GruberDarker]])
	vim.cmd([[augroup! GruberDarker]])
end

---Clear current highlights and set Neovim global `colors_name`
function M.load()
	if vim.g.colors_name then
		vim.cmd.hi("clear")
	end

	vim.opt.termguicolors = true
	vim.g.colors_name = "GruberDarker"

	-- set highlights here...
	local highlights = require("gruber-darker.hl")
	for group, hl in pairs(highlights.groups) do
		vim.api.nvim_set_hl(0, group, hl)
	end

	local gruber_darker_group = vim.api.nvim_create_augroup("GruberDarker", { clear = true })
	vim.api.nvim_create_autocmd("ColorSchemePre", {
		group = gruber_darker_group,
		pattern = "*",
		callback = function()
			require("gruber-darker").on_colorscheme()
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

---Change colorscheme to GruberDarker
function M.colorscheme() end

---GruberDarker configuration bootstrapper
---@param opts Options
function M.setup(opts)
	config.set(opts or {})
end

return M
