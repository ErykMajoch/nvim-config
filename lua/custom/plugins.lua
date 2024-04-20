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
        "clangd",
        "clang-format"
      },
    },
  },

  -- null-ls
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    opts = function ()
      return require "custom.configs.null-ls"
    end,
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

  -- cmake-tools
  {
    lazy = false,
    "Civitasv/cmake-tools.nvim",
  },

  --  cmake4vim
  {
    lazy = false,
    "ilyachur/cmake4vim"
  },

}
return plugins
