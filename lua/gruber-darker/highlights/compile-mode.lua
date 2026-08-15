local Highlight = require("gruber-darker.highlight")
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

M.highlights.compile_mode_message = Highlight.new("CompileModeMessage", { link = gruber_hl.fg0 , underline=true})
M.highlights.compile_mode_message_row = Highlight.new("CompileModeMessageRow", { link = gruber_hl.yellow })
M.highlights.compile_mode_message_col = Highlight.new("CompileModeMessageCol", { link = gruber_hl.green })

M.highlights.compile_mode_error = Highlight.new("CompileModeError", { link = gruber_hl.red })
M.highlights.compile_mode_warning = Highlight.new("CompileModeWarning", { link = gruber_hl.brown })
M.highlights.compile_mode_info = Highlight.new("CompileModeInfo", { link = gruber_hl.green })

M.highlights.compile_mode_command_output = Highlight.new("CompileModeCommandOutput", { link = gruber_hl.niagara })
M.highlights.compile_mode_directory_message = Highlight.new("CompileModeDirectoryMessage", { link = gruber_hl.niagara })
M.highlights.compile_mode_output_file = Highlight.new("CompileModeOutputFile", { link = gruber_hl.yellow_bold })
M.highlights.compile_mode_check_result = Highlight.new("CompileModeCheckResult", { link = gruber_hl.wisteria_bold })
M.highlights.compile_mode_check_target = Highlight.new("CompileModeCheckTarget", { link = gruber_hl.wisteria_bold })

return M
