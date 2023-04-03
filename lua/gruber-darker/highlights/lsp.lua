local Highlight = require("gruber-darker.highlight")
local c = require("gruber-darker.palette").default
local opts = require("gruber-darker.config").get_opts()
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
M.highlights.diagnostic_underline_hint = Highlight.new("DiagnosticUnderlineHint", { link = gruber_hl.wisteria_underline })

return M
