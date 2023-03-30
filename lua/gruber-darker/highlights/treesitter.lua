local c = require("gruber-darker.palette").default
local opts = require("gruber-darker.config").get_opts()
local vim_hl = require("gruber-darker.highlights.vim").highlights
local Highlight = require("gruber-darker.highlight")

---@type HighlightsProvider
local M = {
	highlights = {},
}

---Set `nvim-treesitter` plugin highlights
function M.setup()
	for _, value in pairs(M.highlights) do
		value:setup()
	end
end

-- These groups are for the neovim tree-sitter highlights.
-- As of writing, tree-sitter support is a WIP, group names may change.
-- By, most of these groups link to an appropriate Vim group,
-- TSError -> Error for example, so you do not have to define these unless
-- you explicitly want to support Treesitter's improved syntax awareness.

-- TSAnnotation        = Highlight.new("", { })    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
-- TSAttribute         = Highlight.new("", { })    -- (unstable) TODO: docs
M.highlights.boolean = Highlight.new("TSBoolean", { fg = c.quartz }) -- For booleans.
M.highlights.character = Highlight.new("TSCharacter", { link = vim_hl.character }) -- For characters.
M.highlights.comment = Highlight.new("TSComment", { link = vim_hl.comment }) -- For comment blocks.
-- TSNote = Highlight.new("TSNote", { fg = c.bg, bg = c.info })
M.highlights.text_warning = Highlight.new("@text.warning", { fg = c.red })
M.highlights.text_danger = Highlight.new("@text.danger", { fg = c.white, bg = c.red })
-- ["@constructor"] = Highlight.new("", { fg = c.magenta }, -- For constructor calls and definitions: `= { })` in Lua, and Java constructors.
M.highlights.conditional = Highlight.new("TSConditional", { fg = c.yellow }) -- For keywords related to conditionnals.
M.highlights.constant = Highlight.new("TSConstant", { fg = c.quartz }) -- For constants
-- TSConstBuiltin      = Highlight.new("", { })    -- For constant that are built in the language: `nil` in Lua.
-- TSConstMacro        = Highlight.new("", { })    -- For constants that are defined by macros: `NULL` in C.
-- TSError             = Highlight.new("", { })    -- For syntax/parser errors.
-- TSException         = Highlight.new("", { })    -- For exception related keywords.
-- ["@field"] = Highlight.new("", { fg = c.green1 }) -- For fields.
-- TSFloat             = Highlight.new("", { })    -- For floats.
-- TSFunction          = Highlight.new("", { })    -- For function (calls and definitions).
-- TSFuncBuiltin       = Highlight.new("", { })    -- For builtin functions: `table.insert` in Lua.
-- TSFuncMacro         = Highlight.new("", { })    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
-- TSInclude           = Highlight.new("", { })    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
-- ["@keyword"] = Highlight.new("", { fg = c.purple, style = options.styles.keywords }) -- For keywords that don't fall in previous categories.
-- ["@keyword.function"] = Highlight.new("", { fg = c.magenta, style = options.styles.functions }) -- For keywords used to define a fuction.
-- ["@label"] = Highlight.new("", { fg = c.blue }) -- For labels: `label:` in C and `:label:` in Lua.
-- TSMethod            = Highlight.new("", { })    -- For method calls and definitions.
-- TSNamespace         = Highlight.new("", { })    -- For identifiers referring to modules and namespaces.
-- TSNone              = Highlight.new("", { })    -- TODO: docs
-- TSNumber            = Highlight.new("", { })    -- For all numbers
-- ["@operator"] = Highlight.new("", { fg = c.blue5 }) -- For any operator: `+`, but also `->` and `*` in C.
-- ["@parameter"] = Highlight.new("", { fg = c.yellow }) -- For parameters of a function.
-- TSParameterReference= { },    -- For references to parameters of a function.
-- ["@property"] = Highlight.new("", { fg = c.green1 }) -- Same as `TSField`.
-- ["@punctuation.delimiter"] = Highlight.new("", { fg = c.blue5 }) -- For delimiters ie: `.`
-- ["@punctuation.bracket"] = Highlight.new("", { fg = c.fg_dark }) -- For brackets and parens.
-- ["@punctuation.special"] = Highlight.new("", { fg = c.blue5 }) -- For special punctutation that does not fall in the catagories before.

-- For keywords related to loops.
M.highlights.repeats = Highlight.new("TSRepeat", { link = vim_hl.repeats })
-- For strings.
M.highlights.string = Highlight.new("TSString", { link = vim_hl.string })
-- ["@string.regex"] = Highlight.new("", { fg = c.blue6 }) -- For regexes.
-- ["@string.escape"] = Highlight.new("", { fg = c.magenta }) -- For escape characters within a string.
-- TSSymbol            = Highlight.new("", { })    -- For identifiers referring to symbols or atoms.

---For types.
M.highlights.type = Highlight.new("TSType", { fg = c.quartz })
-- TSTypeBuiltin       = Highlight.new("", { })    -- For builtin types.
-- ["@variable"] = Highlight.new("", { style = options.styles.variables }) -- Any variable name that does not have another highlight.
-- ["@variable.builtin"] = Highlight.new("", { fg = c.red }) -- Variable names that are defined by the languages, like `this` or `self`.

-- TSTag               = Highlight.new("", { })    -- Tags like html tag names.
-- TSTagDelimiter      = Highlight.new("", { })    -- Tag delimiter like `<` `>` `/`
-- TSText              = Highlight.new("", { })    -- For strings considered text in a markup language.
-- ["@text.reference"] = Highlight.new("", { fg = c.teal })
-- TSEmphasis          = Highlight.new("", { })    -- For text to be represented with emphasis.
-- TSUnderline         = Highlight.new("", { })    -- For text to be represented with an underline.
-- TSStrike            = Highlight.new("", { })    -- For strikethrough text.
-- TSTitle             = Highlight.new("", { })    -- Text that is part of a title.
-- TSLiteral           = Highlight.new("", { })    -- Literal text.

---Any URI like a link or email.
M.highlights.uri = Highlight.new("TSURI", { fg = c.niagara, underline = opts.underline })

M.highlights.text_diff_add = Highlight.new("@text.diff.add", { link = vim_hl.diff_add })
M.highlights.text_diff_delete = Highlight.new("@text.diff.delete", { link = vim_hl.diff_delete })
M.highlights.text_diff_change = Highlight.new("@text.diff.change", { link = vim_hl.diff_change })

return M
