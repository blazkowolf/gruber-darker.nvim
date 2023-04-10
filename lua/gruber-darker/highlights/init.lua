local M = {}

---@class HighlightsProvider
---@field highlights table<string, Highlight>
---@field setup fun()

---@type HighlightsProvider[]
local providers = {
	require("gruber-darker.highlights.colorscheme"),
	require("gruber-darker.highlights.lsp"),
	require("gruber-darker.highlights.vim"),
	require("gruber-darker.highlights.terminal"),
	require("gruber-darker.highlights.treesitter"),
}

---Set highlights for configured providers
function M.setup()
	for _, provider in ipairs(providers) do
		provider:setup()
	end
  vim.opt.guicursor:append("a:Cursor/lCursor")
end

return M
