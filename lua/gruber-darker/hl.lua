local c = require("gruber-darker.palette")
local config = require("gruber-darker.config").get_resolved_opts()

local M = {}

---Set Neovim terminal colors
local function set_terminal_colors()
	-- terminal colors adapted from
	-- https://github.com/drsooch/gruber-darker-vim/blob/master/colors/GruberDarker.vim#L202
  vim.g.terminal_color_0 = c.default["bg+1"]
	vim.g.terminal_color_8 = c.default["bg+1"]

	vim.g.terminal_color_1 = c.default["red+1"]
	vim.g.terminal_color_9 = c.default["red+1"]

	vim.g.terminal_color_2 = c.default.green
	vim.g.terminal_color_10 = c.default.green

	vim.g.terminal_color_3 = c.default.yellow
	vim.g.terminal_color_11 = c.default.yellow

	vim.g.terminal_color_4 = c.default.niagara
	vim.g.terminal_color_12 = c.default.niagara

	vim.g.terminal_color_5 = c.default.purple
	vim.g.terminal_color_13 = c.default.purple

	vim.g.terminal_color_6 = c.default.niagara
	vim.g.terminal_color_14 = c.default.niagara

	vim.g.terminal_color_7 = c.default.fg
	vim.g.terminal_color_15 = c.default.fg

	vim.g.terminal_color_background = c.default["bg+1"]
	vim.g.terminal_color_foreground = c.default.white
end

function M.setup()
	set_terminal_colors()

	M.groups = {
		Comment = { fg = c.default.brown, italic = config.comment_italics and config.italic }, -- any comment
		ColorColumn = { bg = c.default["bg+2"] }, -- used for the columns set with 'colorcolumn'
		Conceal = { fg = c.default.fg, bg = c.default.bg }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { bg = c.default.yellow }, -- character under the cursor
		lCursor = { fg = c.default.none, bg = c.default.yellow }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
		CursorIM = { fg = c.default.none, bg = c.default.yellow }, -- like Cursor, but used when in IME mode |CursorIM|
		CursorColumn = { bg = c.default["bg+2"] }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine = { bg = c.default["bg+1"] }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
		-- Directory = { fg = c.default.lightblue }, -- directory names (and other special names in listings)
		DiffAdd = { fg = c.default.green, bg = c.default.none }, -- diff mode: Added line |diff.txt|
		DiffChange = { fg = c.default.yellow, bg = c.default.none }, -- diff mode: Changed line |diff.txt|
		DiffDelete = { fg = c.default["red+1"], bg = c.default.none }, -- diff mode: Deleted line |diff.txt|
		DiffText = { fg = c.default.yellow, bg = c.default.none }, -- diff mode: Changed text within a changed line |diff.txt|
		EndOfBuffer = { fg = c.default.fg, bg = c.default.bg }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
		TermCursor = { bg = c.default.yellow }, -- cursor in a focused terminal
		-- TermCursorNC= { }, -- cursor in an unfocused terminal
		ErrorMsg = { fg = c.default.white, bg = c.default.red }, -- error messages on the command line
		VertSplit = { fg = c.default["fg+2"], bg = c.default["bg+1"] }, -- the column separating vertically split windows
		WinSeparator = { fg = c.default["bg+2"], bold = config.bold }, -- the column separating vertically split windows
		Folded = { fg = c.default.brown, bg = c.default["fg+2"], italic = true }, -- line used for closed folds
		FoldColumn = { fg = c.default.brown, bg = c.default["fg+2"] }, -- 'foldcolumn'
		SignColumn = { fg = c.default["bg+2"], bg = c.default.none }, -- column where |signs| are displayed
		-- SignColumnSB = { bg = c.bg_sidebar, fg = c.fg_gutter }, -- column where |signs| are displayed
		-- Substitute = { bg = c.red, fg = c.black }, -- |:substitute| replacement text highlighting
		LineNr = { fg = c.default["bg+4"] }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		CursorLineNr = { fg = c.default.yellow }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		MatchParen = { fg = c.default.fg, bg = c.default.wisteria }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg = { fg = c.default["fg+2"] }, -- 'showmode' message (e.g., "-- INSERT -- ")
		-- MsgArea = { fg = c.fg_dark }, -- Area for messages and cmdline
		-- MsgSeparator= { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg = { fg = c.default["fg+2"] }, -- |more-prompt|
		NonText = { fg = c.default["fg+2"] }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal = { fg = c.default.fg, bg = c.default.bg }, -- normal text
		NormalNC = { fg = c.default.fg, bg = c.default.bg }, -- normal text in non-current windows
		NormalSB = { fg = c.default.fg, bg = c.default.bg }, -- normal text in sidebar
		NormalFloat = { fg = c.default.fg, bg = c.default.bg }, -- Normal text in floating windows.
		FloatBorder = { fg = c.default["bg+2"], bg = c.default["bg-1"] },
		Pmenu = { fg = c.default.fg, bg = c.default["bg+1"] }, -- Popup menu: normal item.
		PmenuSel = { fg = c.default.fg, bg = c.default["bg+2"] }, -- Popup menu: selected item.
		PmenuSbar = { bg = c.default.bg }, -- Popup menu: scrollbar.
		PmenuThumb = { bg = c.default.bg }, -- Popup menu: Thumb of the scrollbar.
		Question = { fg = c.default.niagara }, -- |hit-enter| prompt and yes/no questions
		QuickFixLine = { bg = c.default["bg+2"], bold = config.bold }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search = { fg = c.default.black, bg = c.default.yellow }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
		IncSearch = { fg = c.default.black, bg = c.default["fg+2"] }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		CurSearch = { link = "IncSearch" },
		SpecialKey = { fg = c.default["fg+2"] }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
		SpellBad = { undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap = { undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal = { undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare = { undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		StatusLine = { fg = c.default.white, bg = c.default["bg+1"] }, -- status line of current window
		StatusLineNC = { fg = c.default.quartz, bg = c.default["bg+1"] }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine = { bg = c.default.none }, -- tab pages line, not active tab page label
		TabLineFill = { fg = c.default["bg+4"], bg = c.default["bg+1"] }, -- tab pages line, where there are no labels
		TabLineSel = { fg = c.default.yellow, bg = c.default.none, bold = config.bold }, -- tab pages line, active tab page label
		Title = { fg = c.default.quartz }, -- titles for output from ":set all", ":autocmd" etc.
		Visual = { bg = c.default["bg+2"] }, -- Visual mode selection
		VisualNOS = { fg = c.default.red }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg = { fg = c.default.red }, -- warning messages
		Whitespace = { fg = c.default["bg+4"], bg = c.default.none }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		WildMenu = { fg = c.default.black, bg = c.default.yellow }, -- current match in 'wildmenu' completion
		-- These groups are not listed as default vim groups,
		-- but they are defacto standard group names for syntax highlighting.
		-- commented out groups should chain up to their "preferred" group by
		-- default,
		-- Uncomment and edit if you want more specific syntax highlighting.

		Constant = { fg = c.default.quartz }, -- (preferred) any constant
		String = { fg = c.default.green }, --   a string constant: "this is a string"
		Character = { fg = c.default.green }, --  a character constant: 'c', '\n'
		Number = { fg = c.default.fg }, --   a number constant: 234, 0xff
		Boolean = { fg = c.default.yellow, bold = config.bold }, --  a boolean constant: TRUE, false
		Float = { fg = c.default.yellow, bold = config.bold }, --    a floating point constant: 2.3e10
		Identifier = { fg = c.default["fg+1"] }, -- (preferred) any variable name
		Function = { fg = c.default.niagara }, -- function name (also: methods for classes)
		Statement = { fg = c.default.yellow }, -- (preferred) any statement
		Conditional = { fg = c.default.yellow, bold = config.bold }, --  if, then, else, endif, switch, etc.
		Repeat = { fg = c.default.yellow, bold = config.bold }, --   for, do, while, etc.
		Label = { fg = c.default.yellow, bold = config.bold }, --    case, default, etc.
		Operator = { fg = c.default.yellow }, -- "sizeof", "+", "*", etc.
		Keyword = { fg = c.default.yellow, bold = config.bold }, --  any other keyword
		Exception = { fg = c.default.yellow, bold = config.bold }, --  try, catch, throw
		PreProc = { fg = c.default.quartz }, -- (preferred) generic Preprocessor
		Include = { fg = c.default.quartz }, --  preprocessor #include
		Define = { fg = c.default.quartz }, --   preprocessor #define
		Macro = { fg = c.default.quartz }, --    same as Define
		PreCondit = { fg = c.default.quartz }, --  preprocessor #if, #else, #endif, etc.
		Type = { fg = c.default.quartz }, -- (preferred) int, long, char, etc.
		StorageClass = { fg = c.default.yellow, bold = config.bold }, -- static, register, volatile, etc.
		Structure = { fg = c.default.yellow, bold = config.bold }, --  struct, union, enum, etc.
		Typedef = { fg = c.default.yellow, bold = config.bold }, --  A typedef
		Special = { fg = c.default.yellow }, -- (preferred) any special symbol
		-- SpecialChar   = { }, --  special character in a constant
		-- Tag           = { }, --    you can use CTRL-] on this
		-- Delimiter     = { }, --  character that needs attention
		-- SpecialComment= { }, -- special things inside a comment
		-- Debug = { fg = c.default["fg+2"] }, --    debugging statements

		Underlined = { underline = config.underline }, -- (preferred) text that stands out, HTML links
		Bold = { bold = config.bold },
		Italic = { italic = config.italic },
		-- ("Ignore", below, may be invisible...)
		-- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|

		-- Error = { fg = c.error }, -- (preferred) any erroneous construct
		Todo = { fg = c.default.bg, bg = c.default.yellow }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		markdownHeadingDelimiter = { fg = c.default.niagara, bold = config.bold },
		markdownCode = { fg = c.default.green },
		markdownCodeBlock = { fg = c.default.green },
		-- markdownH1 = { fg = c.magenta, bold = true },
		-- markdownH2 = { fg = c.blue, bold = true },
		-- markdownLinkText = { fg = c.blue, underline = true },
		markdownItalic = { fg = c.default.wisteria, italic = config.italic },
		markdownBold = { fg = c.default.yellow, bold = config.bold },
		markdownCodeDelimiter = { fg = c.default.brown, italic = config.italic },
		markdownError = { fg = c.default.fg, bg = c.default["bg+1"] },
		-- These groups are for the neovim tree-sitter highlights.
		-- As of writing, tree-sitter support is a WIP, group names may change.
		-- By default, most of these groups link to an appropriate Vim group,
		-- TSError -> Error for example, so you do not have to define these unless
		-- you explicitly want to support Treesitter's improved syntax awareness.

		-- TSAnnotation        = { },    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
		-- TSAttribute         = { },    -- (unstable) TODO: docs
		TSBoolean = { fg = c.default.quartz }, -- For booleans.
		TSCharacter = { fg = c.default.green }, -- For characters.
		TSComment = { fg = c.default.brown }, -- For comment blocks.
		-- TSNote = { fg = c.bg, bg = c.info },
		["@text.warning"] = { fg = c.default.red },
		["@text.danger"] = { fg = c.default.white, bg = c.default.red },
		-- ["@constructor"] = { fg = c.magenta }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
		TSConditional = { fg = c.default.yellow }, -- For keywords related to conditionnals.
		TSConstant = { fg = c.default.quartz }, -- For constants
		-- TSConstBuiltin      = { },    -- For constant that are built in the language: `nil` in Lua.
		-- TSConstMacro        = { },    -- For constants that are defined by macros: `NULL` in C.
		-- TSError             = { },    -- For syntax/parser errors.
		-- TSException         = { },    -- For exception related keywords.
		-- ["@field"] = { fg = c.green1 }, -- For fields.
		-- TSFloat             = { },    -- For floats.
		-- TSFunction          = { },    -- For function (calls and definitions).
		-- TSFuncBuiltin       = { },    -- For builtin functions: `table.insert` in Lua.
		-- TSFuncMacro         = { },    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
		-- TSInclude           = { },    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
		-- ["@keyword"] = { fg = c.purple, style = options.styles.keywords }, -- For keywords that don't fall in previous categories.
		-- ["@keyword.function"] = { fg = c.magenta, style = options.styles.functions }, -- For keywords used to define a fuction.
		-- ["@label"] = { fg = c.blue }, -- For labels: `label:` in C and `:label:` in Lua.
		-- TSMethod            = { },    -- For method calls and definitions.
		-- TSNamespace         = { },    -- For identifiers referring to modules and namespaces.
		-- TSNone              = { },    -- TODO: docs
		-- TSNumber            = { },    -- For all numbers
		-- ["@operator"] = { fg = c.blue5 }, -- For any operator: `+`, but also `->` and `*` in C.
		-- ["@parameter"] = { fg = c.yellow }, -- For parameters of a function.
		-- TSParameterReference= { },    -- For references to parameters of a function.
		-- ["@property"] = { fg = c.green1 }, -- Same as `TSField`.
		-- ["@punctuation.delimiter"] = { fg = c.blue5 }, -- For delimiters ie: `.`
		-- ["@punctuation.bracket"] = { fg = c.fg_dark }, -- For brackets and parens.
		-- ["@punctuation.special"] = { fg = c.blue5 }, -- For special punctutation that does not fall in the catagories before.
		TSRepeat = { fg = c.default.yellow }, -- For keywords related to loops.
		TSString = { fg = c.default.green }, -- For strings.
		-- ["@string.regex"] = { fg = c.blue6 }, -- For regexes.
		-- ["@string.escape"] = { fg = c.magenta }, -- For escape characters within a string.
		-- TSSymbol            = { },    -- For identifiers referring to symbols or atoms.
		TSType = { fg = c.default.quartz }, -- For types.
		-- TSTypeBuiltin       = { },    -- For builtin types.
		-- ["@variable"] = { style = options.styles.variables }, -- Any variable name that does not have another highlight.
		-- ["@variable.builtin"] = { fg = c.red }, -- Variable names that are defined by the languages, like `this` or `self`.

		-- TSTag               = { },    -- Tags like html tag names.
		-- TSTagDelimiter      = { },    -- Tag delimiter like `<` `>` `/`
		-- TSText              = { },    -- For strings considered text in a markup language.
		-- ["@text.reference"] = { fg = c.teal },
		-- TSEmphasis          = { },    -- For text to be represented with emphasis.
		-- TSUnderline         = { },    -- For text to be represented with an underline.
		-- TSStrike            = { },    -- For strikethrough text.
		-- TSTitle             = { },    -- Text that is part of a title.
		-- TSLiteral           = { },    -- Literal text.
		TSURI = { fg = c.default.niagara, underline = config.underline }, -- Any URI like a link or email.
		["@text.diff.add"] = { link = "DiffAdd" },
		["@text.diff.delete"] = { link = "DiffDelete" },
		["@text.diff.change"] = { link = "DiffChange" },
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
end

return M
