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

M.highlights.cmp_item_kind = Highlight.new("CmpItemKind", { fg = c.white })
M.highlights.cmp_item_menu = Highlight.new("CmpItemMenu", { fg = c.white })
M.highlights.cmp_item_deprecated = Highlight.new("CmpItemAbbrDeprecated", { link = gruber_hl.darkest_niagara })
M.highlights.cmp_item_abbr = Highlight.new("CmpItemAbbr", { fg = c.white })
M.highlights.cmp_item_abbr_match = Highlight.new("CmpItemAbbrMatch", { link = gruber_hl.yellow_bold })
M.highlights.cmp_item_abbr_match_fuzzy = Highlight.new("CmpItemAbbrMatchFuzzy", { link = gruber_hl.brown_bold })
M.highlights.cmp_item_kind_text = Highlight.new("CmpItemKindText", { fg = c["fg+2"] })
M.highlights.cmp_item_kind_method = Highlight.new("CmpItemKindMethod", { link = vim_hl.func })
M.highlights.cmp_item_kind_function = Highlight.new("CmpItemKindFunction", { link = vim_hl.func })
M.highlights.cmp_item_kind_constructor =
	Highlight.new("CmpItemKindConstructor", { link = vim_hl.func })
M.highlights.cmp_item_kind_field = Highlight.new("CmpItemKindField", { link = gruber_hl.niagara })
M.highlights.cmp_item_kind_variable = Highlight.new("CmpItemKindVariable", { link = vim_hl.identifier })
M.highlights.cmp_item_kind_class = Highlight.new("CmpitemKindClass", { link = vim_hl.type })
M.highlights.cmp_item_kind_interface = Highlight.new("CmpItemKindInterface", { link = vim_hl.type })
M.highlights.cmp_item_kind_module = Highlight.new("CmpItemKindModule", { link = vim_hl.define })
M.highlights.cmp_item_kind_property = Highlight.new("CmpItemKindProperty", { link = gruber_hl.dark_niagara })
M.highlights.cmp_item_kind_unit = Highlight.new("CmpItemKindUnit", { link = gruber_hl.dark_niagara })
M.highlights.cmp_item_kind_value = Highlight.new("CmpItemKindValue", { link = vim_hl.type })
M.highlights.cmp_item_kind_enum = Highlight.new("CmpItemKindEnum", { link = vim_hl.type })
M.highlights.cmp_item_kind_keywork = Highlight.new("CmpItemKindKeyword", { link = vim_hl.keyword })
M.highlights.cmp_item_kind_snippet = Highlight.new("CmpItemKindSnippet", { link = gruber_hl.dark_niagara })
M.highlights.cmp_item_kind_color = Highlight.new("CmpItemKindColor", { fg = c.yellow })
M.highlights.cmp_item_kind_file = Highlight.new("CmpItemKindFile", { fg = c.wisteria })
M.highlights.cmp_item_kind_reference = Highlight.new("CmpItemKindReference", { fg = c.wisteria })
M.highlights.cmp_item_kind_folder = Highlight.new("CmpItemKindFolder", { fg = c.wisteria })
M.highlights.cmp_item_kind_enum_member =
	Highlight.new("CmpItemKindEnumMember", { link = vim_hl.type })
M.highlights.cmp_item_kind_constant = Highlight.new("CmpItemKindConstant", { link = vim_hl.constant })
M.highlights.cmp_item_kind_struct = Highlight.new("CmpItemKindStruct", { link = gruber_hl.niagara })
M.highlights.cmp_item_kind_event = Highlight.new("CmpItemKindEvent", { fg = c.brown })
M.highlights.cmp_item_kind_operator = Highlight.new("CmpItemKindOperator", { link = vim_hl.operator })
M.highlights.cmp_item_kind_type_parameter =
	Highlight.new("CmpItemKindTypeParameter", { link = vim_hl.identifier })

return M
