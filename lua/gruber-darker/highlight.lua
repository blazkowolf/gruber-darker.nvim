---@class HighlightOpts
---@field fg Color foreground
---@field bg Color background
---@field sp Color special
---@field blend integer value between 0 and 100
---@field bold boolean
---@field standout boolean
---@field underline boolean
---@field undercurl boolean
---@field underdouble boolean
---@field underdotted boolean
---@field underdashed boolean
---@field strikethrough boolean
---@field italic boolean
---@field reverse boolean
---@field nocombine boolean
---@field link Highlight
---@field default any Don't override existing definition
---@field ctermfg any
---@field ctermbg any
---@field cterm any

---Get highlight definition map accepted by `nvim_set_hl`
---@param opts HighlightOpts
---@return table<string, any>
local function get_hl_definition_map(opts)
	local hl = {}

	for key, value in pairs(opts) do
		if key == "fg" or key == "bg" or key == "sp" then
			hl[key] = value:to_string()
		elseif key == "link" then
			hl[key] = value.group
		else
			hl[key] = value
		end
	end

	return hl
end

---@class Highlight
---@field private group string
---@field private opts HighlightOpts
local Highlight = {}
Highlight.__index = Highlight

---Create a new highlight
---@param group string
---@param opts HighlightOpts
---@return Highlight
function Highlight.new(group, opts)
	local highlight = setmetatable({
		group = group,
		opts = opts,
	}, Highlight)
	return highlight
end

---Set global highlight for the group this is associated with
function Highlight:setup()
	-- print(self.group)
	vim.api.nvim_set_hl(0, self.group, get_hl_definition_map(self.opts))
end

return Highlight
