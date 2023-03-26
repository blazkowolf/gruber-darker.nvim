local terminal_hl = require("gruber-darker.highlights.terminal")
local vim_hl = require("gruber-darker.highlights.vim")
local treesitter_hl = require("gruber-darker.highlights.treesitter")

local M = {}

---Set highlights for configured groups
function M.setup()
  terminal_hl.setup()
  vim_hl.setup()
  treesitter_hl.setup()
end

return M
