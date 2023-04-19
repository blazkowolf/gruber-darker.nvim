local Highlight = require("gruber-darker.highlight")
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

M.highlights.diagnostic_error = Highlight.new("DiagnosticError", { link = gruber_hl.red_bold })
M.highlights.diagnostic_sign_error = Highlight.new("DiagnosticSignError", { link = gruber_hl.red_sign })
M.highlights.diagnostic_underline_error = Highlight.new("DiagnosticUnderlineError", { link = gruber_hl.red_underline })

M.highlights.diagnostic_warn = Highlight.new("DiagnosticWarn", { link = gruber_hl.yellow_bold })
M.highlights.diagnostic_sign_warn = Highlight.new("DiagnosticSignWarn", { link = gruber_hl.yellow_sign })
M.highlights.diagnostic_underline_warn = Highlight.new("DiagnosticUnderlineWarn", { link = gruber_hl.yellow_underline })

M.highlights.diagnostic_info = Highlight.new("DiagnosticInfo", { link = gruber_hl.green_bold })
M.highlights.diagnostic_sign_info = Highlight.new("DiagnosticSignInfo", { link = gruber_hl.green_sign })
M.highlights.diagnostic_underline_info = Highlight.new("DiagnosticUnderlineInfo", { link = gruber_hl.green_underline })

M.highlights.diagnostic_hint = Highlight.new("DiagnosticHint", { link = gruber_hl.wisteria })
M.highlights.diagnostic_sign_hint = Highlight.new("DiagnosticSignHint", { link = gruber_hl.wisteria_sign })
M.highlights.diagnostic_underline_hint =
	Highlight.new("DiagnosticUnderlineHint", { link = gruber_hl.wisteria_underline })

M.highlights.diagnostic_unnecessary = Highlight.new("DiagnosticUnnecessary", { link = M.highlights.diagnostic_underline_hint })

---LspSaga floating windows
M.highlights.saga_normal = Highlight.new("SagaNormal", { link = M.highlights.normal_float })
M.highlights.saga_border = Highlight.new("SagaBorder", { link = M.highlights.float_border })

---Used for highlighting "text" references
-- M.highlights.lsp_reference_text = Highlight.new("LspReferenceText", {})
---Used for highlighting "read" references
-- M.highlights.lsp_reference_read = Highlight.new("LspReferenceRead", {})
---Used for highlighting "write" references
-- M.highlights.lsp_reference_write = Highlight.new("LspReferenceWrite", {})
---Used to color the virtual text of the codelens.
-- M.highlights.lsp_code_lens = Highlight.new("LspCodeLens", {})
---Used to color the separator between two or more code lenses.
-- M.highlights.lsp_code_lens_separator = Highlight.new("LspCodeLensSeparator", {})
---Used to highlight the active parameter in the signature help.
-- M.highlights.lsp_signature_active_parameter = Highlight.new("LspSignatureActiveParameter", {})

-- M.highlights.lsp_type_class = Highlight.new("@lsp.type.class", {})
-- M.highlights.lsp_type_decorator = Highlight.new("@lsp.type.decorator", {})
-- M.highlights.lsp_type_enum = Highlight.new("@lsp.type.enum", {})
-- M.highlights.lsp_type_enum_member = Highlight.new("@lsp.type.enumMember", {})
-- M.highlights.lsp_type_function = Highlight.new("@lsp.type.function", {})
-- M.highlights.lsp_type_interface = Highlight.new("@lsp.type.interface", {})
-- M.highlights.lsp_type_macro = Highlight.new("@lsp.type.macro", {})
-- M.highlights.lsp_type_method = Highlight.new("@lsp.type.method", {})
-- M.highlights.lsp_type_namespace = Highlight.new("@lsp.type.namespace", {})
-- M.highlights.lsp_type_parameter = Highlight.new("@lsp.type.parameter", {})
-- M.highlights.lsp_type_property = Highlight.new("@lsp.type.property", {})
-- M.highlights.lsp_type_struct = Highlight.new("@lsp.type.struct", {})
-- M.highlights.lsp_type_type = Highlight.new("@lsp.type.type", {})
-- M.highlights.lsp_type_type_parameter = Highlight.new("@lsp.type.typeParameter", {})
-- M.highlights.lsp_type_variable = Highlight.new("@lsp.type.variable", {})

return M
