local Highlight = require("gruber-darker.highlight")
local c = require("gruber-darker.palette")
local opts = require("gruber-darker.config").get_opts()

local M = {
	---@type table<string, Highlight>
	highlights = {},
}

---Set standard Vim highlights
function M.setup()
	for _, value in pairs(M.highlights) do
		value:setup()
	end
end

---any comment
M.highlights.comment = Highlight.new("Comment", { fg = c.default.brown, italic = opts.italic.comments })
---used for the columns set with 'colorcolumn'
M.highlights.color_column = Highlight.new("ColorColumn", { bg = c.default["bg+2"] })
---placeholder characters substituted for concealed text (see 'conceallevel')
M.highlights.conceal = Highlight.new("Conceal", { fg = c.default.fg, bg = c.default.bg })
---character under the cursor
M.highlights.cursor = Highlight.new("Cursor", { bg = c.default.yellow })
---the character under the cursor when |language-mapping| is used (see 'guicursor')
M.highlights.l_cursor = Highlight.new("lCursor", { fg = c.default.none, bg = c.default.yellow })
---like Cursor, but used when in IME mode |CursorIM|
M.highlights.cursor_im = Highlight.new("CursorIM", { fg = c.default.none, bg = c.default.yellow })
---Screen-column at the cursor, when 'cursorcolumn' is set.
M.highlights.cursor_column = Highlight.new("CursorColumn", { bg = c.default["bg+2"] })
---Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
M.highlights.cursor_line = Highlight.new("CursorLine", { bg = c.default["bg+1"] })
---Directory = Highlight.new("Directory", { fg = c.default.lightblue }) ---directory names (and other special names in listings)

---diff mode: Added line |diff.txt|
M.highlights.diff_add = Highlight.new("DiffAdd", { fg = c.default.green, bg = c.default.none })
---diff mode: Changed line |diff.txt|
M.highlights.diff_change = Highlight.new("DiffChange", { fg = c.default.yellow, bg = c.default.none })
---diff mode: Deleted line |diff.txt|
M.highlights.diff_delete = Highlight.new("DiffDelete", { fg = c.default["red+1"], bg = c.default.none })
---diff mode: Changed text within a changed line |diff.txt|
M.highlights.diff_text = Highlight.new("DiffText", { fg = c.default.yellow, bg = c.default.none })
---filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
M.highlights.end_of_buffer = Highlight.new("EndOfBuffer", { fg = c.default["bg+4"], bg = c.default.none })
---cursor in a focused terminal
M.highlights.term_cursor = Highlight.new("TermCursor", { bg = c.default.yellow })
---TermCursorNC= { }, ---cursor in an unfocused terminal

---error messages on the command line
M.highlights.error_msg = Highlight.new("ErrorMsg", { fg = c.default.white, bg = c.default.red })
---the column separating vertically split windows
M.highlights.vert_split = Highlight.new("VertSplit", { fg = c.default["fg+2"], bg = c.default["bg+1"] })
---the column separating vertically split windows
M.highlights.win_separator = Highlight.new("WinSeparator", { fg = c.default["bg+2"], bold = opts.bold })
---line used for closed folds
M.highlights.folded =
	Highlight.new("Folded", { fg = c.default.brown, bg = c.default["fg+2"], italic = opts.italic.folds })
---'foldcolumn'
M.highlights.fold_column = Highlight.new("FoldColumn", { fg = c.default.brown, bg = c.default["fg+2"] })
---column where |signs| are displayed
M.highlights.sign_column = Highlight.new("SignColumn", { fg = c.default["bg+2"], bg = c.default.none })
---SignColumnSB = Highlight.new("SignColumnSB", { bg = c.bg_sidebar, fg = c.fg_gutter }) ---column where |signs| are displayed
---Substitute = Highlight.new("Substitute", { bg = c.red, fg = c.black }) ---|:substitute| replacement text highlighting
---Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
M.highlights.line_number = Highlight.new("LineNr", { fg = c.default["bg+4"] })
---Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
M.highlights.cursor_line_number = Highlight.new("CursorLineNr", { fg = c.default.yellow })
---The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
M.highlights.match_paren = Highlight.new("MatchParen", { fg = c.default.fg, bg = c.default.wisteria })
---'showmode' message (e.g., "---INSERT ---")
M.highlights.mode_msg = Highlight.new("ModeMsg", { fg = c.default["fg+2"] })
---MsgArea = Highlight.new("MsgArea", { fg = c.fg_dark }) ---Area for messages and cmdline
---MsgSeparator= { }, ---Separator for scrolled messages, `msgsep` flag of 'display'
---|more-prompt|
M.highlights.more_msg = Highlight.new("MoreMsg", { fg = c.default["fg+2"] })
---'@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
M.highlights.non_text = Highlight.new("NonText", { fg = c.default["fg+2"] })
---normal text
M.highlights.normal = Highlight.new("Normal", { fg = c.default.fg, bg = c.default.bg })
---normal text in non-current windows
M.highlights.normal_non_current = Highlight.new("NormalNC", { fg = c.default.fg, bg = c.default["bg-1"] })
---normal text in sidebar
M.highlights.normal_sidebar = Highlight.new("NormalSB", { fg = c.default.fg, bg = c.default["bg-1"] })
---Normal text in floating windows.
M.highlights.normal_float = Highlight.new("NormalFloat", { fg = c.default.fg, bg = c.default.bg })
M.highlights.float_border = Highlight.new("FloatBorder", { fg = c.default["bg+2"], bg = c.default["bg-1"] })
---Popup menu: normal item.
M.highlights.popup_menu = Highlight.new("Pmenu", { fg = c.default.fg, bg = c.default["bg+1"] })
---Popup menu: selected item.
M.highlights.popup_menu_sel = Highlight.new("PmenuSel", { fg = c.default.fg, bg = c.default["bg+2"] })
---Popup menu: scrollbar.
M.highlights.popup_menu_sidebar = Highlight.new("PmenuSbar", { bg = c.default.bg })
---Popup menu: Thumb of the scrollbar.
M.highlights.popup_menu_thumb = Highlight.new("PmenuThumb", { bg = c.default.bg })
---|hit-enter| prompt and yes/no questions
M.highlights.question = Highlight.new("Question", { fg = c.default.niagara })
---Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
M.highlights.quick_fix_line = Highlight.new("QuickFixLine", { bg = c.default["bg+2"], bold = opts.bold })
---Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
M.highlights.search = Highlight.new("Search", { fg = c.default.black, bg = c.default.yellow })
---'incsearch' highlighting; also used for the text replaced with ":s///c"
M.highlights.incremental_search = Highlight.new("IncSearch", { fg = c.default.black, bg = c.default["fg+2"] })
M.highlights.current_search = Highlight.new("CurSearch", { link = M.highlights.incremental_search })
---Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
M.highlights.special_key = Highlight.new("SpecialKey", { fg = c.default["fg+2"] })
---Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
M.highlights.spell_bad = Highlight.new("SpellBad", { undercurl = true })
---Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
M.highlights.spell_cap = Highlight.new("SpellCap", { undercurl = true })
---Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
M.highlights.spell_local = Highlight.new("SpellLocal", { undercurl = true })
---Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
M.highlights.spell_rare = Highlight.new("SpellRare", { undercurl = true })
---status line of current window
M.highlights.status_line = Highlight.new("StatusLine", { fg = c.default.white, bg = c.default["bg+1"] })
---status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
M.highlights.status_line_non_current = Highlight.new("StatusLineNC", { fg = c.default.quartz, bg = c.default["bg+1"] })
---tab pages line, not active tab page label
M.highlights.tab_line = Highlight.new("TabLine", { bg = c.default.none })
---tab pages line, where there are no labels
M.highlights.tab_line_fill = Highlight.new("TabLineFill", { fg = c.default["bg+4"], bg = c.default["bg+1"] })
---tab pages line, active tab page label
M.highlights.tab_line_sel =
	Highlight.new("TabLineSel", { fg = c.default.yellow, bg = c.default.none, bold = opts.bold })
---titles for output from ":set all", ":autocmd" etc.
M.highlights.title = Highlight.new("Title", { fg = c.default.quartz })
---Visual mode selection
M.highlights.visual = Highlight.new("Visual", { bg = c.default["bg+2"] })
---Visual mode selection when vim is "Not Owning the Selection".
M.highlights.visual_nos = Highlight.new("VisualNOS", { fg = c.default.red })
---warning messages
M.highlights.warning_msg = Highlight.new("WarningMsg", { fg = c.default.red })
---"nbsp", "space", "tab" and "trail" in 'listchars'
M.highlights.whitespace = Highlight.new("Whitespace", { fg = c.default["bg+4"], bg = c.default.none })
---current match in 'wildmenu' completion
M.highlights.wild_menu = Highlight.new("WildMenu", { fg = c.default.black, bg = c.default.yellow })
---These groups are not listed as default vim groups,
---but they are defacto standard group names for syntax highlighting.
---commented out groups should chain up to their "preferred" group by
---default,
---Uncomment and edit if you want more specific syntax highlighting.

---(preferred) any constant
M.highlights.constant = Highlight.new("Constant", { fg = c.default.quartz })
---  a string constant: "this is a string"
M.highlights.string = Highlight.new("String", { fg = c.default.green, italic = opts.italic.strings })
--- a character constant: 'c', '\n'
M.highlights.character = Highlight.new("Character", { fg = c.default.green, italic = opts.italic.strings })
---  a number constant: 234, 0xff
M.highlights.number = Highlight.new("Number", { fg = c.default.fg })
--- a boolean constant: TRUE, false
M.highlights.boolean = Highlight.new("Boolean", { fg = c.default.yellow, bold = opts.bold })
---   a floating point constant: 2.3e10
M.highlights.float = Highlight.new("Float", { fg = c.default.yellow, bold = opts.bold })
---(preferred) any variable name
M.highlights.identifier = Highlight.new("Identifier", { fg = c.default["fg+1"] })
---function name (also: methods for classes)
M.highlights.func = Highlight.new("Function", { fg = c.default.niagara })
---(preferred) any statement
M.highlights.statement = Highlight.new("Statement", { fg = c.default.yellow })
---if, then, else, endif, switch, etc.
M.highlights.conditional = Highlight.new("Conditional", { fg = c.default.yellow, bold = opts.bold })
---for, do, while, etc.
M.highlights.repeats = Highlight.new("Repeat", { fg = c.default.yellow, bold = opts.bold })
---case, default, etc.
M.highlights.label = Highlight.new("Label", { fg = c.default.yellow, bold = opts.bold })
---"sizeof", "+", "*", etc.
M.highlights.operator = Highlight.new("Operator", { fg = c.default.yellow, italic = opts.italic.operators })
---any other keyword
M.highlights.keyword = Highlight.new("Keyword", { fg = c.default.yellow, bold = opts.bold })
---try, catch, throw
M.highlights.exception = Highlight.new("Exception", { fg = c.default.yellow, bold = opts.bold })
---(preferred) generic Preprocessor
M.highlights.pre_proc = Highlight.new("PreProc", { fg = c.default.quartz })
---preprocessor #include
M.highlights.include = Highlight.new("Include", { fg = c.default.quartz })
---preprocessor #define
M.highlights.define = Highlight.new("Define", { fg = c.default.quartz })
---same as Define
M.highlights.macro = Highlight.new("Macro", { fg = c.default.quartz })
---preprocessor #if, #else, #endif, etc.
M.highlights.pre_condit = Highlight.new("PreCondit", { fg = c.default.quartz })
---(preferred) int, long, char, etc.
M.highlights.type = Highlight.new("Type", { fg = c.default.quartz })
---static, register, volatile, etc.
M.highlights.storage_class = Highlight.new("StorageClass", { fg = c.default.yellow, bold = opts.bold })
---struct, union, enum, etc.
M.highlights.structure = Highlight.new("Structure", { fg = c.default.yellow, bold = opts.bold })
---A typedef
M.highlights.typedef = Highlight.new("Typedef", { fg = c.default.yellow, bold = opts.bold })
---(preferred) any special symbol
M.highlights.special = Highlight.new("Special", { fg = c.default.yellow })
---SpecialChar   = Highlight.new("", { }) --- special character in a constant
---Tag           = Highlight.new("", { }) ---   you can use CTRL-] on this
---Delimiter     = Highlight.new("", { }) --- character that needs attention
---SpecialComment= { }, ---special things inside a comment
---Debug = Highlight.new("Debug", { fg = c.default["fg+2"] }) ---   debugging statements

---(preferred) text that stands out, HTML links
M.highlights.underlined = Highlight.new("Underlined", { underline = opts.underline })
M.highlights.bold = Highlight.new("Bold", { bold = true })
M.highlights.italic = Highlight.new("Italic", { italic = true })
---("Ignore", below, may be invisible...)
---Ignore = Highlight.new("Ignore", { }) ---(preferred) left blank, hidden  |hl-Ignore|

---Error = Highlight.new("Error", { fg = c.error }) ---(preferred) any erroneous construct

---(preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
M.highlights.todo = Highlight.new("Todo", { fg = c.default.bg, bg = c.default.yellow })
M.highlights.md_heading_delim = Highlight.new("markdownHeadingDelimiter", { fg = c.default.niagara, bold = opts.bold })
M.highlights.md_code = Highlight.new("markdownCode", { fg = c.default.green })
M.highlights.md_code_block = Highlight.new("markdownCodeBlock", { fg = c.default.green })
---markdownH1 = Highlight.new("markdownH1", { fg = c.magenta, bold = true })
---markdownH2 = Highlight.new("markdownH2", { fg = c.blue, bold = true })
---markdownLinkText = Highlight.new("markdownLinkText", { fg = c.blue, underline = true })
M.highlights.md_italic = Highlight.new("markdownItalic", { fg = c.default.wisteria, italic = true })
M.highlights.md_bold = Highlight.new("markdownBold", { fg = c.default.yellow, bold = opts.bold })
M.highlights.md_code_delim = Highlight.new("markdownCodeDelimiter", { fg = c.default.brown, italic = true })
M.highlights.md_error = Highlight.new("markdownError", { fg = c.default.fg, bg = c.default["bg+1"] })

return M
