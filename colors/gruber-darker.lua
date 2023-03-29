-- local function R()
--	for k in pairs(package.loaded) do
--		if k:match(".*gruber-darker.*") then
--			package.loaded[k] = nil
--		end
--	end
--   package.loaded["gruber-darker"] = nil
--   require("gruber-darker").setup()
-- end

-- vim.api.nvim_create_user_command("GruberDarkerTest", R, {})

require("gruber-darker").load()
