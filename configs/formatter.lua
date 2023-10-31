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
    python = {
      require("formatter.filetypes.python").black
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
