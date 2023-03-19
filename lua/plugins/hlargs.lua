return {
  { -- Highlight arguments' definitions and usages, asynchronously, using Treesitter
    "m-demare/hlargs.nvim",
    event = "VimEnter",
    config = function()
      require("hlargs").setup()
    end,
  },
}
