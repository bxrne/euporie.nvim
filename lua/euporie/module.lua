---@class CustomModule
local M = {}

M.notebook = function()
  local config = require("euporie").config

  -- build command with graphics options
  local cmd = "euporie-notebook"
  if config.graphics_dpi then
    cmd = cmd .. " --graphics-dpi=" .. config.graphics_dpi
  end
  if config.graphics_height then
    cmd = cmd .. " --graphics-height=" .. config.graphics_height
  end

  -- open service
  vim.cmd(":terminal " .. cmd)

  -- set buffer name to euporie (buffer number)
  vim.api.nvim_buf_set_name(0, "euporie (" .. vim.api.nvim_get_current_buf() .. ")")

  -- enter insert mode
  vim.cmd("startinsert")
end

return M
