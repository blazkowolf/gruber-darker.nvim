local M = {}

local providers = {
  require("gruber-darker.highlights.vim"),
  require("gruber-darker.highlights.terminal"),
  require("gruber-darker.highlights.treesitter"),
}

---Set highlights for configured providers
function M.setup()
	for _, highlights in ipairs(providers) do
		highlights:setup()
	end
end

return M
