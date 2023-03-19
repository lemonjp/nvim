-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- Disable automatic comment insertion
vim.api.nvim_create_autocmd({ "FileType" }, {
  group = augroup("format_options"),
  pattern = "*",
  callback = function()
    vim.cmd("setlocal formatoptions-=c formatoptions-=r formatoptions-=o")
  end,
})
