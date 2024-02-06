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
    "williamboma/mason.nvim",
    opts = {
      ensure_installed = {
        "marksman",
        "ltex-ls"
      },
    },
  },

  -- Nabla
  {
    "jbyuki/nabla.nvim"
  },
}
return plugins
