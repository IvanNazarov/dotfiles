return {
  "christoomey/vim-tmux-navigator",
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateDown",
    "TmuxNavigateUp",
    "TmuxNavigateRight",
    "TmuxNavigatePrevious",
  },
  keys = {
    { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>", desc = "Navigate left" },
    { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>", desc = "Naviate down" },
    { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>", desc = "Naviate up" },
    { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>", desc = "Naviate right" },
    { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>", desc = "Naviate previous" },
  },
}
