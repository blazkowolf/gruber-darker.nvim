---@alias ItalicType
---|"strings"
---|"comments"
---|"operators"
---|"folds"

---@alias InvertType
---|"signs"
---|"tabline"
---|"visual"

---@class GruberDarkerOpts
---@field bold boolean
---@field invert table<InvertType, boolean>
---@field italic table<ItalicType, boolean>
---@field undercurl boolean
---@field underline boolean

---@type GruberDarkerOpts
local DEFAULTS = {
	bold = true,
	invert = {
		signs = false,
		tabline = false,
		visual = false,
	},
	italic = {
		strings = true,
		comments = true,
		operators = false,
		folds = true,
	},
	undercurl = true,
	underline = true,
}

---@class ConfigMgr
---@field private resolved_opts GruberDarkerOpts
local ConfigMgr = {}
ConfigMgr.__index = ConfigMgr

---@type ConfigMgr|nil
local instance = nil

---Get GruberDarker user preferences
---@return GruberDarkerOpts
---@nodiscard
function ConfigMgr.get_opts()
	if instance ~= nil then
		return instance.resolved_opts
	end

	return DEFAULTS
end

---Set GruberDarker colorscheme options
---@param opts? GruberDarkerOpts
function ConfigMgr.setup(opts)
	if instance ~= nil then
		return
	end

	instance = setmetatable({
		resolved_opts = vim.tbl_deep_extend("force", DEFAULTS, opts or {}),
	}, ConfigMgr)
end

return ConfigMgr
