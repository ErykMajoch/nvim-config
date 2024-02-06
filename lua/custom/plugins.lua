local plugins = {
  -- LSP Config
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },

  -- Mason
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "marksman",
        "ltex-ls",
        "clangd"
      },
    },
  },

  -- Nabla
  {
    "jbyuki/nabla.nvim"
  },

  -- follow-md-link
  {
    "jghauser/follow-md-links.nvim",
    lazy = false
  },

  -- lazygit
  {
    "kdheepak/lazygit.nvim",
    lazy=false,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
}
return plugins
