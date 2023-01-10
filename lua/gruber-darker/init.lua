local c = require("gruber-darker.colors")

local M = {}

-- Highlights {{{
local highlights = {
  Comment = { fg = c.default.brown },
  Cursor = { fg = c.default.none, bg = c.default.yellow },
  CursorLine = { fg = c.default.none, bg = c.default["bg+1"] },
  lCursor = { fg = c.default.none, bg = c.default.yellow },
  CursorIM = { fg = c.default.none, bg = c.default.yellow },
  LineNr = { fg = c.default["bg+4"] },
  CursorLineNr = { fg = c.default.yellow },
  DiffAdd = { fg = c.default.green, bg = c.default.none }, -- diff mode: Added line |diff.txt|
  -- DiffChange = { bg = c.diff.change }, -- diff mode: Changed line |diff.txt|
  DiffDelete = { fg = c.default["red+1"], bg = c.default.none }, -- diff mode: Deleted line |diff.txt|
  -- DiffText = { bg = c.diff.text }, -- diff mode: Changed text within a changed line |diff.txt|

  -- These groups are not listed as default vim groups,
  -- but they are defacto standard group names for syntax highlighting.
  -- commented out groups should chain up to their "preferred" group by
  -- default,
  -- Uncomment and edit if you want more specific syntax highlighting.

  Constant = { fg = c.default.quartz }, -- (preferred) any constant
  String = { fg = c.default.green }, --   a string constant: "this is a string"
  -- Character = { fg = c.green }, --  a character constant: 'c', '\n'
  -- Number        = { }, --   a number constant: 234, 0xff
  -- Boolean       = { }, --  a boolean constant: TRUE, false
  -- Float         = { }, --    a floating point constant: 2.3e10

  -- Identifier = { fg = c.magenta }, -- (preferred) any variable name
  Function = { fg = c.default.niagara }, -- function name (also: methods for classes)

  -- Statement = { fg = c.magenta }, -- (preferred) any statement
  -- Conditional   = { }, --  if, then, else, endif, switch, etc.
  -- Repeat        = { }, --   for, do, while, etc.
  -- Label         = { }, --    case, default, etc.
  -- Operator = { fg = c.blue5 }, -- "sizeof", "+", "*", etc.
  Keyword = { fg = c.default.yellow, bold = true }, --  any other keyword
  -- Exception     = { }, --  try, catch, throw

  PreProc = { fg = c.default.quartz }, -- (preferred) generic Preprocessor
  -- Include       = { }, --  preprocessor #include
  -- Define        = { }, --   preprocessor #define
  -- Macro         = { }, --    same as Define
  -- PreCondit     = { }, --  preprocessor #if, #else, #endif, etc.

  -- Type = { fg = c.blue1 }, -- (preferred) int, long, char, etc.
  -- StorageClass  = { }, -- static, register, volatile, etc.
  -- Structure     = { }, --  struct, union, enum, etc.
  -- Typedef       = { }, --  A typedef

  -- Special = { fg = c.blue1 }, -- (preferred) any special symbol
  -- SpecialChar   = { }, --  special character in a constant
  -- Tag           = { }, --    you can use CTRL-] on this
  -- Delimiter     = { }, --  character that needs attention
  -- SpecialComment= { }, -- special things inside a comment
  -- Debug         = { }, --    debugging statements

  Underlined = { underline = true }, -- (preferred) text that stands out, HTML links
  Bold = { bold = true },
  Italic = { italic = true },

  -- ("Ignore", below, may be invisible...)
  -- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|

  -- Error = { fg = c.error }, -- (preferred) any erroneous construct
  -- Todo = { bg = c.yellow, fg = c.bg }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
}
-- }}}

---Delete GruberDarker autocmds when the
---theme changes to something else
function M.on_color_scheme()
	-- vim.api.nvim_del_autocmd("GruberDarker")
	-- vim.api.nvim_del_augroup_by_name("GruberDarker")
	vim.cmd([[autocmd! GruberDarker]])
	vim.cmd([[augroup! GruberDarker]])
end

function M.setup()
	if vim.g.colors_name then
		vim.cmd.hi("clear")
	end

	vim.opt.termguicolors = true
	vim.g.colors_name = "GruberDarker"

	-- set highlights here...
	for group, hl in pairs(highlights) do
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
	vim.api.nvim_create_autocmd("FileType", {
		group = gruber_darker_group,
		pattern = "qf,help",
		callback = function()
			vim.cmd.setlocal("winhighlight=Normal:NormalSB,SignColumn:SignColumnSB")
		end,
	})

	-- vim.cmd([[augroup GruberDarker]])
	-- vim.cmd([[  autocmd!]])
	-- vim.cmd([[  autocmd ColorSchemePre * lua require("gruber-darker").on_color_scheme()]])
	-- vim.cmd([[  autocmd FileType qf,help setlocal winhighlight=Normal:NormalSB,SignColumn:SignColumnSB]])
	-- vim.cmd([[augroup end]])
end

return M


