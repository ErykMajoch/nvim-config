local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

lspconfig.marksman.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"markdown"},
  root_dir = lspconfig.util.root_pattern(".git", ".marksman.toml")
})

lspconfig.ltex.setup({
  on_attach = on_attach,
  capabilities = capabilities
})
