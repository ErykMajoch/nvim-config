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

lspconfig.clangd.setup{
  -- on_attach = on_attach,
  -- capabilities = capabilities
  on_attach = function (client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
}
