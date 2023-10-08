return {
  "AstroNvim/astrocommunity",
  -- language packs
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.julia" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.cpp" },

  -- catppuccin for light mode, kanagawa for dark
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.kanagawa-nvim" },

  -- note taking
  { import = "astrocommunity.note-taking.neorg" },
  {
    "nvim-neorg/neorg",
    opts = {
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {},
        ["core.dirman"] = {
          config = {
            workspaces = {
              notes = "~/notes"
            }
          },
        },
      },
    },
  },
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  {
       "iamcco/markdown-preview.nvim",
       ft = { "markdown" },
       build = "cd app && npm install",
       init = function()
         vim.g.mkdp_filetypes = { "markdown" }
       end,
  },
}
