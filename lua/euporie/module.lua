---@class CustomModule
local M = {}

M.notebook = function()
  -- open service
  vim.cmd(":terminal euporie-notebook ")

  -- set buffer name to euporie (buffer number)
  vim.api.nvim_buf_set_name(0, "euporie (" .. vim.api.nvim_get_current_buf() .. ")")

  -- enter insert mode
  vim.cmd("startinsert")
end

return M
