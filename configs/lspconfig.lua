local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"gopls"},
  filetypes = {"go", "gomod", "gowork", "gotmpl"},
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      gofumpt = true,
    }
  }
}

-- The following was tested as an alternative to null-ts, but it didn't work..
--vim.api.nvim_create_autocmd({ "BufWritePre" }, {
--  pattern = "*.go",
--  callback = function ()
--    vim.lsp.buf.format({ async = false })
--  end
--})

lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"rust"},
  root_dir = util.root_pattern("Cargo.toml"),
  settings = {
    ['rust-analyzer'] = {
      cargo = {
        allFeatures = true,
      },
    },
  },
})

lspconfig.tsserver.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggestions = true,
    }
  }
})

lspconfig.tailwindcss.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
