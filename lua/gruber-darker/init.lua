local c = require("gruber-darker.colors")

local M = {}

-- Highlights {{{
local highlights = {
  Comment = { fg = c.default.brown }, -- any comment
  -- ColorColumn = { bg = c.black }, -- used for the columns set with 'colorcolumn'
  -- Conceal = { fg = c.dark5 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
  Cursor = { fg = c.default.none, bg = c.default.yellow }, -- character under the cursor
  lCursor = { fg = c.default.none, bg = c.default.yellow }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
  CursorIM = { fg = c.default.none, bg = c.default.yellow }, -- like Cursor, but used when in IME mode |CursorIM|
  CursorColumn = { fg = c.default.none, bg = c.default["bg+1"] }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
  CursorLine = { fg = c.default.none, bg = c.default["bg+1"] }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
  -- Directory = { fg = c.blue }, -- directory names (and other special names in listings)
  DiffAdd = { fg = c.default.green, bg = c.default.none }, -- diff mode: Added line |diff.txt|
  -- DiffChange = { bg = c.diff.change }, -- diff mode: Changed line |diff.txt|
  DiffDelete = { fg = c.default["red+1"], bg = c.default.none }, -- diff mode: Deleted line |diff.txt|
  -- DiffText = { bg = c.diff.text }, -- diff mode: Changed text within a changed line |diff.txt|
  EndOfBuffer = { fg = c.default.none }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
  -- TermCursor  = { }, -- cursor in a focused terminal
  -- TermCursorNC= { }, -- cursor in an unfocused terminal
  ErrorMsg = { fg = c.default.red }, -- error messages on the command line
  VertSplit = { fg = c.default["bg+2"] }, -- the column separating vertically split windows
  WinSeparator = { fg = c.default["bg+2"], bold = true }, -- the column separating vertically split windows
  -- Folded = { fg = c.blue, bg = c.fg_gutter }, -- line used for closed folds
  -- FoldColumn = { bg = options.transparent and c.none or c.bg, fg = c.comment }, -- 'foldcolumn'
  SignColumn = { fg = c.default["bg+2"], bg = c.default.none }, -- column where |signs| are displayed
  -- SignColumnSB = { bg = c.bg_sidebar, fg = c.fg_gutter }, -- column where |signs| are displayed
  -- Substitute = { bg = c.red, fg = c.black }, -- |:substitute| replacement text highlighting
  LineNr = { fg = c.default["bg+4"] }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
  CursorLineNr = { fg = c.default.yellow }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
  MatchParen = { bg = c.default["bg+4"] }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
  -- ModeMsg = { fg = c.fg_dark, bold = true }, -- 'showmode' message (e.g., "-- INSERT -- ")
  -- MsgArea = { fg = c.fg_dark }, -- Area for messages and cmdline
  -- MsgSeparator= { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
  -- MoreMsg = { fg = c.blue }, -- |more-prompt|
  -- NonText = { fg = c.dark3 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
  Normal = { fg = c.default.fg, bg = c.default.bg }, -- normal text
  NormalNC = { fg = c.default.fg, bg = c.default.bg }, -- normal text in non-current windows
  NormalSB = { fg = c.default.fg, bg = c.default.bg }, -- normal text in sidebar
  NormalFloat = { fg = c.default.fg, bg = c.default.bg }, -- Normal text in floating windows.
  FloatBorder = { fg = c.default["bg+2"], bg = c.default["bg-1"] },
  -- Pmenu = { bg = c.bg_popup, fg = c.fg }, -- Popup menu: normal item.
  -- PmenuSel = { bg = util.darken(c.fg_gutter, 0.8) }, -- Popup menu: selected item.
  -- PmenuSbar = { bg = util.lighten(c.bg_popup, 0.95) }, -- Popup menu: scrollbar.
  -- PmenuThumb = { bg = c.fg_gutter }, -- Popup menu: Thumb of the scrollbar.
  Question = { fg = c.default.niagara }, -- |hit-enter| prompt and yes/no questions
  -- QuickFixLine = { bg = c.bg_visual, bold = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
  -- Search = { bg = c.bg_search, fg = c.fg }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
  -- IncSearch = { bg = c.orange, fg = c.black }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
  -- CurSearch = { link = "IncSearch" },
  -- SpecialKey = { fg = c.dark3 }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
  -- SpellBad = { sp = c.error, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
  -- SpellCap = { sp = c.warning, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
  -- SpellLocal = { sp = c.info, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
  -- SpellRare = { sp = c.hint, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
  StatusLine = { fg = c.default.white, bg = c.default["bg+1"] }, -- status line of current window
  StatusLineNC = { fg = c.default.quartz, bg = c.default["bg+1"] }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
  TabLine = { bg = c.default.none }, -- tab pages line, not active tab page label
  TabLineFill = { fg = c.default["bg+4"], bg = c.default["bg+1"] }, -- tab pages line, where there are no labels
  TabLineSel = { fg = c.default.yellow, bg = c.default.none, bold = true }, -- tab pages line, active tab page label
  -- Title = { fg = c.blue, bold = true }, -- titles for output from ":set all", ":autocmd" etc.
  -- Visual = { bg = c.bg_visual }, -- Visual mode selection
  -- VisualNOS = { bg = c.bg_visual }, -- Visual mode selection when vim is "Not Owning the Selection".
  WarningMsg = { fg = c.default.red }, -- warning messages
  Whitespace = { fg = c.default.black, bg = c.default.red }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
  -- WildMenu = { bg = c.bg_visual }, -- current match in 'wildmenu' completion

  -- These groups are not listed as default vim groups,
  -- but they are defacto standard group names for syntax highlighting.
  -- commented out groups should chain up to their "preferred" group by
  -- default,
  -- Uncomment and edit if you want more specific syntax highlighting.

  Constant = { fg = c.default.quartz }, -- (preferred) any constant
  String = { fg = c.default.green }, --   a string constant: "this is a string"
  Character = { fg = c.default.green }, --  a character constant: 'c', '\n'
  -- Number        = { }, --   a number constant: 234, 0xff
  -- Boolean       = { }, --  a boolean constant: TRUE, false
  -- Float         = { }, --    a floating point constant: 2.3e10

  Identifier = { fg = c.default["fg+1"] }, -- (preferred) any variable name
  Function = { fg = c.default.niagara }, -- function name (also: methods for classes)

  -- Statement = { fg = c.magenta }, -- (preferred) any statement
  -- Conditional   = { }, --  if, then, else, endif, switch, etc.
  -- Repeat        = { }, --   for, do, while, etc.
  -- Label         = { }, --    case, default, etc.
  Operator = { fg = c.default.yellow }, -- "sizeof", "+", "*", etc.
  Keyword = { fg = c.default.yellow, bold = true }, --  any other keyword
  -- Exception     = { }, --  try, catch, throw

  PreProc = { fg = c.default.quartz }, -- (preferred) generic Preprocessor
  -- Include       = { }, --  preprocessor #include
  -- Define        = { }, --   preprocessor #define
  -- Macro         = { }, --    same as Define
  -- PreCondit     = { }, --  preprocessor #if, #else, #endif, etc.

  Type = { fg = c.default.quartz }, -- (preferred) int, long, char, etc.
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

  -- Cmp
  -- CmpDocumentation = { link = "NormalFloat" },
  -- CmpDocumentationBorder = { link = "FloatBorder" },

  -- CmpItemAbbr = { fg = c.fg, bg = c.none },
  -- CmpItemAbbrDeprecated = { fg = c.fg_gutter, bg = c.none, strikethrough = true },
  -- CmpItemAbbrMatch = { fg = c.blue1, bg = c.none },
  -- CmpItemAbbrMatchFuzzy = { fg = c.blue1, bg = c.none },

  -- CmpItemMenu = { fg = c.default.white, bg = c.default["bg+4"] },

  -- CmpItemKindDefault = { fg = c.default.white, bg = c.default["bg+4"] },

  -- CmpItemKindKeyword = { fg = c.cyan, bg = c.none },

  -- CmpItemKindVariable = { fg = c.magenta, bg = c.none },
  -- CmpItemKindConstant = { fg = c.magenta, bg = c.none },
  -- CmpItemKindReference = { fg = c.magenta, bg = c.none },
  -- CmpItemKindValue = { fg = c.magenta, bg = c.none },

  -- CmpItemKindFunction = { fg = c.blue, bg = c.none },
  -- CmpItemKindMethod = { fg = c.blue, bg = c.none },
  -- CmpItemKindConstructor = { fg = c.blue, bg = c.none },

  -- CmpItemKindClass = { fg = c.orange, bg = c.none },
  -- CmpItemKindInterface = { fg = c.orange, bg = c.none },
  -- CmpItemKindStruct = { fg = c.orange, bg = c.none },
  -- CmpItemKindEvent = { fg = c.orange, bg = c.none },
  -- CmpItemKindEnum = { fg = c.orange, bg = c.none },
  -- CmpItemKindUnit = { fg = c.orange, bg = c.none },

  -- CmpItemKindModule = { fg = c.yellow, bg = c.none },

  -- CmpItemKindProperty = { fg = c.green1, bg = c.none },
  -- CmpItemKindField = { fg = c.green1, bg = c.none },
  -- CmpItemKindTypeParameter = { fg = c.green1, bg = c.none },
  -- CmpItemKindEnumMember = { fg = c.green1, bg = c.none },
  -- CmpItemKindOperator = { fg = c.green1, bg = c.none },
  -- CmpItemKindSnippet = { fg = c.dark5, bg = c.none },
}
-- }}}

---Delete GruberDarker autocmds when the
---theme changes to something else
function M.on_color_scheme()
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
end

return M

