local Highlight = require("gruber-darker.highlight")
local c = require("gruber-darker.palette")
local vim_hl = require("gruber-darker.highlights.vim").highlights
local gruber_hl = require("gruber-darker.highlights.colorscheme").highlights

---@type HighlightsProvider
local M = {
	highlights = {},
}

function M.setup()
	for _, value in pairs(M.highlights) do
		value:setup()
	end
end

M.highlights.telescope_normal = Highlight.new("TelescopeNormal", { link = gruber_hl.fg })
M.highlights.telescope_matching = Highlight.new("TelescopeMatching", { link = gruber_hl.yellow_bold })
M.highlights.telescope_border = Highlight.new("TelescopeBorder", { link = vim_hl.float_border })
M.highlights.telescope_prompt_prefix = Highlight.new("TelescopePromptPrefix", { link = gruber_hl.niagara })
M.highlights.telescope_title = Highlight.new("TelescopeTitle", { fg = c.white })
M.highlights.telescope_selection = Highlight.new("TelescopeSelection", { fg = c["fg+2"], bg = c["bg+1"] })
M.highlights.telescope_multi_selection = Highlight.new("TelescopeMultiSelection", { link = vim_hl.cursor_line })
M.highlights.telescope_selection_caret = Highlight.new("TelescopeSelectionCaret", { link = gruber_hl.yellow })

return M
