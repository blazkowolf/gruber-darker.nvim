for k in pairs(package.loaded) do
    if k:match(".*gruber-darker.*") then
        package.loaded[k] = nil
    end
end

require("gruber-darker").setup()
