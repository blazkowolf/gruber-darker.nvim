local Highlight = require("gruber-darker.highlight")
local c = require("gruber-darker.palette")
local opts = require("gruber-darker.config").get_opts()
local gruber_hl = require("gruber-darker.highlights.colorscheme").highlights

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

---Any comment
M.highlights.comment = Highlight.new("Comment", { fg = c.brown, italic = opts.italic.comments })
---Used for the columns set with 'colorcolumn'
M.highlights.color_column = Highlight.new("ColorColumn", { bg = c["bg+2"] })
---Placeholder characters substituted for concealed text (see 'conceallevel')
M.highlights.conceal = Highlight.new("Conceal", { fg = c.fg, bg = c.bg })
---Character under the cursor
M.highlights.cursor = Highlight.new("Cursor", { bg = c.yellow })
---The character under the cursor when |language-mapping| is used (see 'guicursor')
M.highlights.l_cursor = Highlight.new("lCursor", { fg = c.none, bg = c.yellow })
---Like Cursor, but used when in IME mode |CursorIM|
M.highlights.cursor_im = Highlight.new("CursorIM", { fg = c.none, bg = c.yellow })
---Screen-column at the cursor, when 'cursorcolumn' is set.
M.highlights.cursor_column = Highlight.new("CursorColumn", { bg = c["bg+2"] })
---Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
M.highlights.cursor_line = Highlight.new("CursorLine", { bg = c["bg+1"] })
---Directory names (and other special names in listings)
M.highlights.directory = Highlight.new("Directory", { link = gruber_hl.niagara_bold })

---Diff mode: Added line |diff.txt|
M.highlights.diff_add = Highlight.new("DiffAdd", { fg = c.green, bg = c.none })
---Diff mode: Changed line |diff.txt|
M.highlights.diff_change = Highlight.new("DiffChange", { fg = c.yellow, bg = c.none })
---Diff mode: Deleted line |diff.txt|
M.highlights.diff_delete = Highlight.new("DiffDelete", { fg = c["red+1"], bg = c.none })
---Diff mode: Changed text within a changed line |diff.txt|
M.highlights.diff_text = Highlight.new("DiffText", { fg = c.yellow, bg = c.none })

---Fugitive highlights; might need separate provider for git related plugins
M.highlights.diff_added = Highlight.new("diffAdded", { link = M.highlights.diff_add })
M.highlights.diff_removed = Highlight.new("diffRemoved", { link = M.highlights.diff_delete })
M.highlights.diff_line = Highlight.new("diffLine", { link = M.highlights.diff_change })

---Filler lines (~) after the end of the buffer.  By, this is highlighted like |hl-NonText|.
M.highlights.end_of_buffer = Highlight.new("EndOfBuffer", { fg = c["bg+4"], bg = c.none })
---Cursor in a focused terminal
M.highlights.term_cursor = Highlight.new("TermCursor", { bg = c.yellow })
---TermCursorNC= { }, ---cursor in an unfocused terminal

---Error messages on the command line
M.highlights.error_msg = Highlight.new("ErrorMsg", { fg = c.white, bg = c.red })
---The column separating vertically split windows
M.highlights.vert_split = Highlight.new("VertSplit", { fg = c["fg+2"], bg = c["bg+1"] })
---The column separating vertically split windows
M.highlights.win_separator = Highlight.new("WinSeparator", { fg = c["bg+2"], bold = opts.bold })
---Line used for closed folds
M.highlights.folded = Highlight.new("Folded", { fg = c.brown, bg = c["bg+2"], italic = opts.italic.folds })
---'foldcolumn'
M.highlights.fold_column = Highlight.new("FoldColumn", { fg = c.brown, bg = c["bg+2"] })
---column where |signs| are displayed
M.highlights.sign_column = Highlight.new("SignColumn", { fg = c["bg+2"], bg = c.none })
---SignColumnSB = Highlight.new("SignColumnSB", { bg = c.bg_sidebar, fg = c.fg_gutter }) ---column where |signs| are displayed
---Substitute = Highlight.new("Substitute", { bg = c.red, fg = c.black }) ---|:substitute| replacement text highlighting
---Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
M.highlights.line_number = Highlight.new("LineNr", { fg = c["bg+4"] })
---Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
M.highlights.cursor_line_number = Highlight.new("CursorLineNr", { fg = c.yellow })
---The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
M.highlights.match_paren = Highlight.new("MatchParen", { fg = c.fg, bg = c.wisteria })
---'showmode' message (e.g., "---INSERT ---")
M.highlights.mode_msg = Highlight.new("ModeMsg", { link = gruber_hl.fg2 })
---Area for messages and cmdline
-- M.highlights.msg_area = Highlight.new("MsgArea", { fg = c.fg_dark })
---Separator for scrolled messages, `msgsep` flag of 'display'
-- M.highlights.msg_separator = Highlight.new("MsgSeparator", { }),
---|more-prompt|
M.highlights.more_msg = Highlight.new("MoreMsg", { fg = c["fg+2"] })
---'@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
M.highlights.non_text = Highlight.new("NonText", { link = M.highlights.end_of_buffer })
---Normal text
M.highlights.normal = Highlight.new("Normal", { fg = c.fg, bg = c.bg })
---Normal text in non-current windows
M.highlights.normal_non_current = Highlight.new("NormalNC", { fg = c.fg, bg = c.bg })
---Normal text in sidebar
M.highlights.normal_sidebar = Highlight.new("NormalSB", { fg = c.fg, bg = c["bg-1"] })
---Normal text in floating windows.
M.highlights.normal_float = Highlight.new("NormalFloat", { fg = c.fg, bg = c.bg })
M.highlights.float_border = Highlight.new("FloatBorder", { fg = c["bg+4"], bg = c.none })

-- Popup

---Popup menu: normal item.
M.highlights.popup_menu = Highlight.new("Pmenu", { fg = c.fg, bg = c["bg+1"] })
---Popup menu: selected item.
M.highlights.popup_menu_sel = Highlight.new("PmenuSel", { fg = c.fg, bg = c["bg+2"] })
---Popup menu: scrollbar.
M.highlights.popup_menu_sidebar = Highlight.new("PmenuSbar", { bg = c.bg })
---Popup menu: Thumb of the scrollbar.
M.highlights.popup_menu_thumb = Highlight.new("PmenuThumb", { bg = c.bg })

---|hit-enter| prompt and yes/no questions
M.highlights.question = Highlight.new("Question", { fg = c.niagara })
---Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
M.highlights.quick_fix_line = Highlight.new("QuickFixLine", { bg = c["bg+2"], bold = opts.bold })

-- Search

---Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
M.highlights.search = Highlight.new("Search", { fg = c.black, bg = c.yellow })
---'incsearch' highlighting; also used for the text replaced with ":s///c"
M.highlights.incremental_search = Highlight.new("IncSearch", { fg = c.black, bg = c["fg+2"] })
M.highlights.current_search = Highlight.new("CurSearch", { link = M.highlights.incremental_search })

---Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
M.highlights.special_key = Highlight.new("SpecialKey", { fg = c["fg+2"] })

-- Spell

---Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
M.highlights.spell_bad = Highlight.new("SpellBad", { link = gruber_hl.red_underline })
---Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
M.highlights.spell_cap = Highlight.new("SpellCap", { undercurl = opts.undercurl })
---Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
M.highlights.spell_local = Highlight.new("SpellLocal", { undercurl = opts.undercurl })
---Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
M.highlights.spell_rare = Highlight.new("SpellRare", { undercurl = opts.undercurl })

-- Statusline

---Status line of current window
M.highlights.status_line = Highlight.new("StatusLine", { fg = c.white, bg = c["bg+1"] })
---Status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
M.highlights.status_line_non_current = Highlight.new("StatusLineNC", { fg = c.quartz, bg = c["bg+1"] })

-- Tabline

---Tab pages line, not active tab page label
M.highlights.tab_line = Highlight.new("TabLine", { bg = c.none })
---Tab pages line, where there are no labels
M.highlights.tab_line_fill = Highlight.new("TabLineFill", { fg = c["bg+4"], bg = c["bg+1"] })
---Tab pages line, active tab page label
M.highlights.tab_line_sel = Highlight.new("TabLineSel", { fg = c.yellow, bg = c.none, bold = opts.bold })

---Titles for output from ":set all", ":autocmd" etc.
M.highlights.title = Highlight.new("Title", { link = gruber_hl.quartz })
---Visual mode selection
M.highlights.visual = Highlight.new("Visual", { bg = c["bg+2"], reverse = opts.invert.visual })
---Visual mode selection when vim is "Not Owning the Selection".
M.highlights.visual_nos = Highlight.new("VisualNOS", { link = gruber_hl.red })
---Warning messages
M.highlights.warning_msg = Highlight.new("WarningMsg", { link = gruber_hl.red })
---"nbsp", "space", "tab" and "trail" in 'listchars'
M.highlights.whitespace = Highlight.new("Whitespace", { fg = c["bg+4"], bg = c.none })
---Current match in 'wildmenu' completion
M.highlights.wild_menu = Highlight.new("WildMenu", { fg = c.black, bg = c.yellow })
---These groups are not listed as vim groups,
---but they are defacto standard group names for syntax highlighting.
---commented out groups should chain up to their "preferred" group by
--,
---Uncomment and edit if you want more specific syntax highlighting.

---(preferred) any constant
M.highlights.constant = Highlight.new("Constant", { link = gruber_hl.quartz })
---A string constant: "this is a string"
M.highlights.string = Highlight.new("String", { fg = c.green, italic = opts.italic.strings })
---A character constant: 'c', '\n'
M.highlights.character = Highlight.new("Character", { fg = c.green, italic = opts.italic.strings })
---A number constant: 234, 0xff
M.highlights.number = Highlight.new("Number", { link = gruber_hl.wisteria })
---A boolean constant: TRUE, false
M.highlights.boolean = Highlight.new("Boolean", { link = gruber_hl.yellow_bold })
---A floating point constant: 2.3e10
M.highlights.float = Highlight.new("Float", { link = gruber_hl.wisteria })
---(preferred) any variable name
M.highlights.identifier = Highlight.new("Identifier", { link = gruber_hl.fg1 })
---Function name (also: methods for classes)
M.highlights.func = Highlight.new("Function", { link = gruber_hl.niagara })
---(preferred) any statement
M.highlights.statement = Highlight.new("Statement", { fg = c.yellow })
---If, then, else, endif, switch, etc.
M.highlights.conditional = Highlight.new("Conditional", { link = gruber_hl.yellow_bold })
---For, do, while, etc.
M.highlights.repeats = Highlight.new("Repeat", { link = gruber_hl.yellow_bold })
---Case,, etc.
M.highlights.label = Highlight.new("Label", { link = gruber_hl.yellow_bold })
---"sizeof", "+", "*", etc.
M.highlights.operator = Highlight.new("Operator", { fg = c.fg, italic = opts.italic.operators })
---Any other keyword
M.highlights.keyword = Highlight.new("Keyword", { link = gruber_hl.yellow_bold })
---Try, catch, throw
M.highlights.exception = Highlight.new("Exception", { link = gruber_hl.yellow_bold })
---(preferred) generic Preprocessor
M.highlights.pre_proc = Highlight.new("PreProc", { link = gruber_hl.quartz })
---Preprocessor #include
M.highlights.include = Highlight.new("Include", { link = gruber_hl.quartz })
---Preprocessor #define
M.highlights.define = Highlight.new("Define", { link = gruber_hl.quartz })
---Same as Define
M.highlights.macro = Highlight.new("Macro", { link = gruber_hl.quartz })
---Preprocessor #if, #else, #endif, etc.
M.highlights.pre_condit = Highlight.new("PreCondit", { link = gruber_hl.quartz })
---(preferred) int, long, char, etc.
M.highlights.type = Highlight.new("Type", { link = gruber_hl.quartz })
---Static, register, volatile, etc.
M.highlights.storage_class = Highlight.new("StorageClass", { link = gruber_hl.yellow_bold })
---Struct, union, enum, etc.
M.highlights.structure = Highlight.new("Structure", { link = gruber_hl.yellow_bold })
---A typedef
M.highlights.typedef = Highlight.new("Typedef", { link = gruber_hl.yellow_bold })
---(preferred) any special symbol
M.highlights.special = Highlight.new("Special", { link = gruber_hl.yellow })
--- special character in a constant
M.highlights.special_char = Highlight.new("SpecialChar", { link = gruber_hl.yellow })
---You can use CTRL-] on this
M.highlights.tag = Highlight.new("Tag", { link = gruber_hl.yellow })
---Character that needs attention
M.highlights.delimiter = Highlight.new("Delimiter", { link = gruber_hl.fg0 })
---Special things inside a comment
M.highlights.special_comment = Highlight.new("SpecialComment", { link = gruber_hl.wisteria_bold })
---Debugging statements
M.highlights.debug = Highlight.new("Debug", { link = gruber_hl.fg2 })

---(preferred) text that stands out, HTML links
M.highlights.underlined = Highlight.new("Underlined", { fg = c.wisteria, underline = opts.underline })
M.highlights.bold = Highlight.new("Bold", { bold = opts.bold })
M.highlights.italic = Highlight.new("Italic", { italic = true })
---("Ignore", below, may be invisible...)
---Ignore = Highlight.new("Ignore", { }) ---(preferred) left blank, hidden  |hl-Ignore|

---Error = Highlight.new("Error", { fg = c.error }) ---(preferred) any erroneous construct

---(preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
M.highlights.todo = Highlight.new("Todo", { fg = c.bg, bg = c.yellow })

-- Markdown

M.highlights.md_heading_delim = Highlight.new("markdownHeadingDelimiter", { fg = c.niagara, bold = opts.bold })
M.highlights.md_code = Highlight.new("markdownCode", { fg = c.green })
M.highlights.md_code_block = Highlight.new("markdownCodeBlock", { fg = c.green })
---markdownH1 = Highlight.new("markdownH1", { fg = c.magenta, bold = true })
---markdownH2 = Highlight.new("markdownH2", { fg = c.blue, bold = true })
---markdownLinkText = Highlight.new("markdownLinkText", { fg = c.blue, underline = true })
M.highlights.md_italic = Highlight.new("markdownItalic", { fg = c.wisteria, italic = true })
M.highlights.md_bold = Highlight.new("markdownBold", { link = gruber_hl.yellow_bold })
M.highlights.md_code_delim = Highlight.new("markdownCodeDelimiter", { fg = c.brown, italic = true })
M.highlights.md_error = Highlight.new("markdownError", { fg = c.fg, bg = c["bg+1"] })

return M
