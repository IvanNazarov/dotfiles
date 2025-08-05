return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      cs = { "csharpier" },
    },
    formatters = {
      csharpier = {
        command = vim.fn.stdpath("data") .. "/mason/bin/csharpier",
        -- command = "dotnet-csharpier", -- Или полный путь к бинарнику
        args = { "format", "--write-stdout" }, -- Аргументы для csharpier
      },
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_format = "fallback",
    },
  },
}
