---@class CustomModule
local M = {}

M.notebook = function()
  vim.cmd(":terminal euporie-notebook ")
end

return M
