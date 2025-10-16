local Highlight = require("gruber-darker.highlight")
local c = require("gruber-darker.palette")

---@type HighlightsProvider
local M = {
	highlights = {},
}

---Set standard Vim highlights
function M.setup()
	for _, value in pairs(M.highlights) do
		value:setup()
	end
end

M.highlights.rainbow_delimiter_red = Highlight.new("RainbowDelimiterRed", { fg = c["red+1"] })
M.highlights.rainbow_delimiter_orange = Highlight.new("RainbowDelimiterOrange", { fg = c.brown })
M.highlights.rainbow_delimiter_yellow = Highlight.new("RainbowDelimiterYellow", { fg = c.yellow })
M.highlights.rainbow_delimiter_green = Highlight.new("RainbowDelimiterGreen", { fg = c.green })
M.highlights.rainbow_delimiter_blue = Highlight.new("RainbowDelimiterBlue", { fg = c.niagara })
M.highlights.rainbow_delimiter_violet = Highlight.new("RainbowDelimiterViolet", { fg = c.wisteria })
M.highlights.rainbow_delimiter_cyan = Highlight.new("RainbowDelimiterCyan", { fg = c.quartz })

return M
