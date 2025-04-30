return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true },
    indent = { enabled = true },
    git = { enabled = true },
    lazygit = { enabled = true },
    words = { enabled = true },
  },
  keys = {
    {
      "<leader>gb",
      function()
        Snacks.git.blame_line()
      end,
    },
    {
      "<leader>go",
      function()
        Snacks.lazygit.open()
      end,
    },
  },
}
