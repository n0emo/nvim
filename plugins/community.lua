return {
  "AstroNvim/astrocommunity",
  -- language packs
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.julia" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.haskell" },

  { import = "astrocommunity.pack.rust" },
  {
    "simrat39/rust-tools.nvim",
    opts = {
      tools = {
        inlay_hints = {
          auto = false,
        },
      },
    },
  },

  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.cmake" },

  { import = "astrocommunity.pack.java" },
  {
    "mfussenegger/nvim-jdtls",
    opts = {
      settings = {
        java = {
          configuration = {
            runtimes = {
              {
                name = "JavaSE-1.8",
                path = "/usr/lib/jvm/java-1.8.0-openjdk/",
              },
              -- {
              --   name = "JavaSE-17",
              --   path = "/usr/lib/jvm/java-17-openjdk/",
              -- }
            },
          },
        },
      },
      on_init = function(client)
        client.notify("workspace/didChangeConfiguration", { settings = client.config.settings })
      end,
    },
  },

  { import = "astrocommunity.lsp.lsp-inlayhints-nvim" },
  {
    "lvimuser/lsp-inlayhints.nvim",
    opts = {
      inlay_hints = {
        parameter_hints = {
          show = true,
        },
      },
    },
  },

  -- catppuccin for light mode, kanagawa for dark
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.kanagawa-nvim" },

  { import = "astrocommunity.media.vim-wakatime" },

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
              notes = "~/notes",
            },
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
    init = function() vim.g.mkdp_filetypes = { "markdown" } end,
  },
}
