return {
   "f-person/auto-dark-mode.nvim",
    lazy = false,
    config = {
      update_interval = 1000,
      set_dark_mode = function()
        vim.api.nvim_set_option("background", "dark")
        vim.cmd("colorscheme kanagawa")
      end,
      set_light_mode = function()
        vim.api.nvim_set_option("background", "light")
        vim.cmd("colorscheme catppuccin-latte")
      end,
    },
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
