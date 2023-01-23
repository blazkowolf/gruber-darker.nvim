---@class ConfigMgr
---@field private resolved_opts Options|nil 

---@class Options
---@field message string

---@type ConfigMgr
local M = {
  resolved_opts = nil
}

---Get default GruberDarker colorscheme options
---@return Options
---@nodiscard
function M.get_default_opts()
	return {
		message = "Big Hello",
	}
end

---Get GruberDarker user preferences
---@return Options|nil
---@nodiscard
function M.get_resolved_opts()
  return M.resolved_opts
end

---Set GruberDarker colorscheme options
---@param opts Options
function M.set(opts)
  -- If user already called GruberDarker setup
  -- either with/without default options
  if M.resolved_opts ~= nil then
    return
  end

	M.resolved_opts = vim.tbl_deep_extend("force", M.get_default_opts(), opts)
end

return M
