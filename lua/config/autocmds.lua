-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds hereby

-- This file is automatically loaded by lazyvim.config.init

local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- Set the filetype for .yml files to yaml
vim.api.nvim_create_autocmd("BufRead,BufNewFile", {
  pattern = "*.yml",
  callback = function()
    vim.api.nvim_buf_set_option(0, "filetype", "yaml")
  end,
})
