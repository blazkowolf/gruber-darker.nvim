local Color = require("gruber-darker.color")
local M = {}

---@type table<string, Color>
M = {
	none = Color.none(),
	fg = Color.new(0xe4e4e4),
	["fg+1"] = Color.new(0xf4f4ff),
	["fg+2"] = Color.new(0xf5f5f5),
	white = Color.new(0xffffff),
	black = Color.new(0x000000),
	["bg-1"] = Color.new(0x101010),
	bg = Color.new(0x181818),
	["bg+1"] = Color.new(0x282828),
	["bg+2"] = Color.new(0x453d41),
	["bg+3"] = Color.new(0x484848),
	["bg+4"] = Color.new(0x52494e),
	["red-1"] = Color.new(0xc73c3f),
	red = Color.new(0xf43841),
	["red+1"] = Color.new(0xff4f58),
	green = Color.new(0x73d936),
	yellow = Color.new(0xffdd33),
	brown = Color.new(0xcc8c3c),
	quartz = Color.new(0x95a99f),
	["niagara-2"] = Color.new(0x303540),
	["niagara-1"] = Color.new(0x565f73),
	niagara = Color.new(0x96a6c8),
	wisteria = Color.new(0x9e95c7),
}

return M
