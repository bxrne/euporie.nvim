-- main module file
local module = require("euporie.module")

---@class Config
---@field path string The path at which to open the session
local config = {
  path = "."
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
