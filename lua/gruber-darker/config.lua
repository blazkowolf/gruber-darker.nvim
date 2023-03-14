---@class ConfigMgr
---@field private resolved_opts Options

---@class Options
---@field bold boolean
---@field italic boolean
---@field underline boolean
---@field comment_italics boolean

---@type ConfigMgr
local M = {
  resolved_opts = {
    bold = true,
    italic = true,
    underline = true,
    comment_italics = true,
  },
}

---Get GruberDarker user preferences
---@return Options
---@nodiscard
function M.get_resolved_opts()
  return M.resolved_opts
end

---Set GruberDarker colorscheme options
---@param opts Options
function M.set(opts)
  M.resolved_opts = vim.tbl_deep_extend("force", M.resolved_opts, opts)
end

return M
