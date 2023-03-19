-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- Clear lazyvim custom keymaps to window using the <ctrl> hjkl keys
map("n", "<C-h>", "", { desc = "Go to left window" })
map("n", "<C-j>", "", { desc = "Go to lower window" })
map("n", "<C-k>", "", { desc = "Go to upper window" })
map("n", "<C-l>", "", { desc = "Go to right window" })

-- Toggle BufExplorer
map("n", "<C-l>", "<cmd>BufExplorer<cr>", { desc = "Toggle BufExplorer" })
