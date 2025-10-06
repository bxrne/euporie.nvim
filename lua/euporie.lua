-- main module file
local module = require("euporie.module")

---@class Config
---@field path string The path at which to open the session
---@field graphics_dpi number? The DPI for graphics rendering (default: 300)
---@field graphics_height number? The maximum graphics height in pixels (default: 40)
local config = {
  path = ".",
  graphics_dpi = 300,
  graphics_height = 40,
}

---@class MyModule
local M = {}

---@type Config
M.config = config

---@param args Config?
-- you can define your setup function here. Usually configurations can be merged, accepting outside params and
-- you can also put some validation here for those.
M.setup = function(args)
  M.config = vim.tbl_deep_extend("force", M.config, args or {})
end

M.notebook = function()
  return module.notebook()
end

return M
