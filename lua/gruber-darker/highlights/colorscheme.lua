local Highlight = require("gruber-darker.highlight")
local c = require("gruber-darker.palette").default
local opts = require("gruber-darker.config").get_opts()

---@type HighlightsProvider
local M = {
	highlights = {},
}

---Set GruberDarker-specific highlights
function M.setup()
	for _, value in pairs(M.highlights) do
		value:setup()
	end
end

-- Highlights inspired by
-- https://github.com/ellisonleao/gruvbox.nvim/blob/main/lua/gruvbox/groups.lua#L43

-- Colors

M.highlights.fg0 = Highlight.new("GruberDarkerFg0", { fg = c.fg })
M.highlights.fg1 = Highlight.new("GruberDarkerFg1", { fg = c["fg+1"] })
M.highlights.fg2 = Highlight.new("GruberDarkerFg2", { fg = c["fg+2"] })

M.highlights.bg_1 = Highlight.new("GruberDarkerBg_1", { fg = c["bg-1"] })
M.highlights.bg0 = Highlight.new("GruberDarkerBg0", { fg = c.bg })
M.highlights.bg1 = Highlight.new("GruberDarkerBg1", { fg = c["bg+1"] })
M.highlights.bg2 = Highlight.new("GruberDarkerBg2", { fg = c["bg+2"] })
M.highlights.bg3 = Highlight.new("GruberDarkerBg3", { fg = c["bg+3"] })
M.highlights.bg4 = Highlight.new("GruberDarkerBg4", { fg = c["bg+4"] })

M.highlights.dark_red = Highlight.new("GruberDarkerDarkRed", { fg = c["red-1"] })
M.highlights.dark_red_bold = Highlight.new("GruberDarkerDarkRedBold", { fg = c["red-1"], bold = opts.bold })
M.highlights.red = Highlight.new("GruberDarkerRed", { fg = c.red })
M.highlights.red_bold = Highlight.new("GruberDarkerRedBold", { fg = c.red, bold = opts.bold })
M.highlights.light_red = Highlight.new("GruberDarkerLightRed", { fg = c["red+1"] })
M.highlights.light_red_bold = Highlight.new("GruberDarkerLightRedBold", { fg = c["red+1"], bold = opts.bold })

M.highlights.green = Highlight.new("GruberDarkerGreen", { fg = c.green })
M.highlights.green_bold = Highlight.new("GruberDarkerGreenBold", { fg = c.green, bold = opts.bold })

M.highlights.yellow = Highlight.new("GruberDarkerYellow", { fg = c.yellow })
M.highlights.green_bold = Highlight.new("GruberDarkerYellowBold", { fg = c.yellow, bold = opts.bold })

M.highlights.brown = Highlight.new("GruberDarkerBrown", { fg = c.brown })
M.highlights.brown_bold = Highlight.new("GruberDarkerBrownBold", { fg = c.brown, bold = opts.bold })

M.highlights.quartz = Highlight.new("GruberDarkerQuartz", { fg = c.quartz })
M.highlights.quartz_bold = Highlight.new("GruberDarkerQuartzBold", { fg = c.quartz, bold = opts.bold })

M.highlights.darker_niagara = Highlight.new("GruberDarkerDarkestNiagara", { fg = c["niagara-2"] })
M.highlights.darker_niagara_bold =
	Highlight.new("GruberDarkerDarkestNiagaraBold", { fg = c["niagara-2"], bold = opts.bold })
M.highlights.dark_niagara = Highlight.new("GruberDarkerDarkNiagara", { fg = c["niagara-1"] })
M.highlights.dark_niagara_bold =
	Highlight.new("GruberDarkerDarkNiagaraBold", { fg = c["niagara-1"], bold = opts.bold })
M.highlights.niagara = Highlight.new("GruberDarkerNiagara", { fg = c.niagara })
M.highlights.niagara_bold = Highlight.new("GruberDarkerNiagaraBold", { fg = c.niagara, bold = opts.bold })

M.highlights.wisteria = Highlight.new("GruberDarkerWisteria", { fg = c.wisteria })
M.highlights.wisteria_bold = Highlight.new("GruberDarkerWisteriaBold", { fg = c.wisteria, bold = opts.bold })

-- Signs

M.highlights.red_sign = Highlight.new("GruberDarkerRedSign", { fg = c.red, bg = c.bg, reverse = opts.invert.signs })
M.highlights.quartz_sign =
	Highlight.new("GruberDarkerQuartzSign", { fg = c.quartz, bg = c.bg, reverse = opts.invert.signs })
M.highlights.niagara_sign =
	Highlight.new("GruberDarkerNiagaraSign", { fg = c.niagara, bg = c.bg, reverse = opts.invert.signs })
M.highlights.wisteria_sign =
	Highlight.new("GruberDarkerWisteriaSign", { fg = c.wisteria, bg = c.bg, reverse = opts.invert.signs })

-- Underlines

M.highlights.red_underline = Highlight.new("GruberDarkerRedUnderline", { sp = c.red, undercurl = opts.undercurl })
M.highlights.quartz_underline =
	Highlight.new("GruberDarkerQuartzUnderline", { sp = c.quartz, undercurl = opts.undercurl })
M.highlights.niagara_underline =
	Highlight.new("GruberDarkerNiagaraUnderline", { sp = c.niagara, undercurl = opts.undercurl })
M.highlights.wisteria_underline =
	Highlight.new("GruberDarkerWisteriaUnderline", { sp = c.wisteria, undercurl = opts.undercurl })

return M
