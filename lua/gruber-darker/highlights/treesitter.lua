local c = require("gruber-darker.palette")
local opts = require("gruber-darker.config").get_opts()
local vim_hl = require("gruber-darker.highlights.vim").highlights
local gruber_hl = require("gruber-darker.highlights.colorscheme").highlights
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

-- Neovim tree-sitter highlights sourced from
-- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md#highlights

-- Misc

---Line and block comments
M.highlights.comment = Highlight.new("@comment", { link = vim_hl.comment })
---Comments documenting code
M.highlights.comment_documentation = Highlight.new("@comment.documentation", { link = gruber_hl.green })
---Syntax/parser errors
M.highlights.error = Highlight.new("@error", {})
---Completely disable the highlight
M.highlights.none = Highlight.new("@none", { fg = c.none, bg = c.none })
---Various preprocessor directives & shebangs
M.highlights.pre_proc = Highlight.new("@preproc", { link = vim_hl.pre_proc })
---Preprocessor definition directives
M.highlights.define = Highlight.new("@define", { link = vim_hl.define })
---Symbolic operators (e.g. `+` / `*`)
M.highlights.operator = Highlight.new("@operator", { link = vim_hl.operator })

-- Punctuation

---Delimiters (e.g. `;` / `.` / `,`)
M.highlights.punctuation_delimiter = Highlight.new("@punctuation.delimiter", { link = vim_hl.delimiter })
---Brackets (e.g. `()` / `{}` / `[]`)
M.highlights.punctuation_bracket = Highlight.new("@punctuation.bracket", { link = gruber_hl.wisteria })
---Special symbols (e.g. `{}` in string interpolation)
M.highlights.punctuation_special = Highlight.new("punctuation.special", { link = gruber_hl.brown })

-- Literals

---String literals
M.highlights.string = Highlight.new("@string", { link = vim_hl.string })
---String documenting code (e.g. Python docstrings)
M.highlights.string_documentation = Highlight.new("@string.documentation", { link = vim_hl.string })
---Regular expressions
M.highlights.string_regex = Highlight.new("@string.regex", { link = vim_hl.constant })
---Escape sequences
M.highlights.string_escape = Highlight.new("@string.escape", { link = vim_hl.constant })
---Other special strings (e.g dates)
M.highlights.string_special = Highlight.new("@string.special", { link = vim_hl.constant })

---Character literals
M.highlights.character = Highlight.new("@character", { link = vim_hl.character })
---Special characters (e.g. wildcards)
M.highlights.character_special = Highlight.new("@character.special", { link = vim_hl.constant })

---Boolean literals
M.highlights.boolean = Highlight.new("@boolean", { link = vim_hl.boolean })
---Numeric literals
M.highlights.number = Highlight.new("@number", { link = vim_hl.number })
---Floating-point number literals
M.highlights.float = Highlight.new("@float", { link = vim_hl.float })

-- Functions

---Function definitions
M.highlights.func = Highlight.new("@function", { link = vim_hl.func })
---Built-in functions
M.highlights.func_builtin = Highlight.new("@function.builtin", { link = gruber_hl.yellow })
---Function calls
-- M.highlights.func_call = Highlight.new("@function.call", {})
---Preprocessor macros
M.highlights.func_macro = Highlight.new("@function.macro", { link = vim_hl.macro })

---Method definitions
M.highlights.method = Highlight.new("@method", { link = vim_hl.func })
---Method calls
-- M.highlights.method_call = Highlight.new("@method.call", {})

---constructor calls and definitions
M.highlights.constructor = Highlight.new("@constructor", { link = vim_hl.func })
---parameters of a function
M.highlights.parameter = Highlight.new("@parameter", { link = vim_hl.identifier })

-- Keywords

---various keywords
M.highlights.keyword = Highlight.new("@keyword", { link = vim_hl.keyword })
---keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
-- M.highlights.keyword_coroutine = Highlight.new("@keyword.coroutine", {})
---keywords that define a function (e.g. `func` in Go, `def` in Python)
-- M.highlights.keyword_function = Highlight.new("@keyword.function", {})
---operators that are English words (e.g. `and` / `or`)
-- M.highlights.keyword_operator = Highlight.new("@keyword.operator", {})
---keywords like `return` and `yield`
-- M.highlights.keyword_return = Highlight.new("@keyword.return", {})

---keywords related to conditionals (e.g. `if` / `else`)
M.highlights.conditional = Highlight.new("@conditional", { fg = c.yellow })
---ternary operator (e.g. `?` / `:`)
M.highlights.conditional_ternary = Highlight.new("@conditional.ternary", {})

---keywords related to loops (e.g. `for` / `while`)
M.highlights.repeats = Highlight.new("@repeat", { link = vim_hl.repeats })
---keywords related to debugging
M.highlights.debug = Highlight.new("@debug", { link = vim_hl.debug })
---GOTO and other labels (e.g. `label:` in C)
M.highlights.label = Highlight.new("@label", { link = vim_hl.label })
---keywords for including modules (e.g. `import` / `from` in Python)
-- M.highlights.include = Highlight.new("@include", {})
---keywords related to exceptions (e.g. `throw` / `catch`)
-- M.highlights.exception = Highlight.new("@exception", {})

-- Types

---type or class definitions and annotations
M.highlights.type = Highlight.new("@type", { link = vim_hl.type })
---built-in types
M.highlights.type_builtin = Highlight.new("@type.builtin", { link = gruber_hl.yellow })
---type definitions (e.g. `typedef` in C)
M.highlights.type_definition = Highlight.new("@type.definition", { link = vim_hl.typedef })
---type qualifiers (e.g. `const`)
-- M.highlights.type_qualifier = Highlight.new("@type.qualifier", {})

---modifiers that affect storage in memory or life-time
M.highlights.storage_class = Highlight.new("@storageclass", { link = vim_hl.storage_class })
---attribute annotations (e.g. Python decorators)
-- I don't think this is supported anymore...
-- M.highlights.attribute = Highlight.new("@attribute", { link = gruber_hl.brown })
---object and struct fields
M.highlights.field = Highlight.new("@field", { link = gruber_hl.niagara })
---similar to `@field`
M.highlights.property = Highlight.new("@property", { link = gruber_hl.dark_niagara })

-- Identifiers

---various variable names
M.highlights.variable = Highlight.new("@variable", { link = vim_hl.identifier })
---built-in variable names (e.g. `this`)
M.highlights.variable_builtin = Highlight.new("@variable.builtin", { link = gruber_hl.yellow })

---constant identifiers
M.highlights.constant = Highlight.new("@constant", { link = vim_hl.constant })
---built-in constant values
M.highlights.constant_builtin = Highlight.new("@constant.builtin", { link = gruber_hl.yellow })
---constants defined by the preprocessor
M.highlights.constant_macro = Highlight.new("@constant.macro", { link = vim_hl.define })

---modules or namespaces
-- M.highlights.namespace = Highlight.new("@namespace", {})
---symbols or atoms
-- M.highlights.symbol = Highlight.new("@symbol", {})

-- Text (mainly for markup languages)

---non-structured text
M.highlights.text = Highlight.new("@text", { link = vim_hl.normal })
---bold text
M.highlights.text_strong = Highlight.new("@text.strong", { link = vim_hl.bold })
---text with emphasis
M.highlights.text_emphasis = Highlight.new("@text.emphasis", { link = vim_hl.italic })
---underlined text
M.highlights.text_underline = Highlight.new("@text.underline", { link = vim_hl.underlined })
---strikethrough text
M.highlights.text_strike = Highlight.new("@text.strike", { strikethrough = true })
---text that is part of a title
M.highlights.text_title = Highlight.new("@text.title", { link = vim_hl.title })
---literal or verbatim text (e.g., inline code)
M.highlights.text_literal = Highlight.new("@text.literal", { link = vim_hl.constant })
---text quotations
-- M.highlights.text_quote = Highlight.new("@text.quote", {})
---URIs (e.g. hyperlinks)
M.highlights.text_uri = Highlight.new("@text.uri", { fg = c.niagara, underline = opts.underline })
---math environments (e.g. `$ ... $` in LaTeX)
-- M.highlights.text_math = Highlight.new("@text.math", { link = vim_hl.special })
---text environments of markup languages
-- M.highlights.text_environment = Highlight.new("@text.environment", {})
---text indicating the type of an environment
-- M.highlights.text_environment_name = Highlight.new("@text.environment.name", {})
---text references, footnotes, citations, etc.
-- M.highlights.text_reference = Highlight.new("@text.reference", {})

---todo notes
M.highlights.text_todo = Highlight.new("@text.todo", { link = vim_hl.todo })
---info notes
M.highlights.text_note = Highlight.new("@text.note", { link = vim_hl.comment })
---warning notes
M.highlights.text_warning = Highlight.new("@text.warning", { link = vim_hl.warning_msg })
---danger/error notes
M.highlights.text_danger = Highlight.new("@text.danger", { link = vim_hl.error_msg })

---added text (for diff files)
M.highlights.text_diff_add = Highlight.new("@text.diff.add", { link = vim_hl.diff_add })
---deleted text (for diff files)
M.highlights.text_diff_delete = Highlight.new("@text.diff.delete", { link = vim_hl.diff_delete })
M.highlights.text_diff_change = Highlight.new("@text.diff.change", { link = vim_hl.diff_change })

-- Tags (used for XML-like tags)

---XML tag names
M.highlights.tag = Highlight.new("@tag", { link = vim_hl.tag })
---XML tag attributes
M.highlights.tag_attribute = Highlight.new("@tag.attribute", { link = M.highlights.field })
---XML tag delimiters
M.highlights.tag_delimiter = Highlight.new("@tag.delimiter", { link = vim_hl.delimiter })

return M
