local M = {
  filetype = {
    javascript = {
      require("formatter.filetypes.javascript").biome
    },
    javascriptreact = {
      require("formatter.filetypes.javascriptreact").biome
    },
    typescript = {
      require("formatter.filetypes.typescript").biome
    },
    typescriptreact = {
      require("formatter.filetypes.typescriptreact").biome
    },
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
  }
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  command = "FormatWriteLock"
})

return M
