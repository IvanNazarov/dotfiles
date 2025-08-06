return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "Issafalcon/neotest-dotnet",
  },

  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-dotnet")({
          dap = {
            args = { justMyCode = false },
            adapter_name = "netcoredbg",
          },
          dotnet_additional_args = { "--verbosity detailed" },
          discovery_root = "solution",
        }),
      },
    })
  end,
  keys = {
    {
      "<leader>tr",
      function()
        require("neotest").run.run()
      end,
      desc = "Run unit tests",
    },
    {
      "<leader>tc",
      function()
        require("neotest").run.run(vim.fn.expand("%"))
      end,
      desc = "Run current file tests",
    },
    {
      "<leader>td",
      function()
        require("neotest").run.run({ strategy = "dap" })
      end,
      desc = "Debug the neariest unit test",
    },
  },
}
