return {
  {
    "vim-test/vim-test",
    dependencies = {
      "folke/which-key.nvim",
    },
    event = "VeryLazy",
    config = function()
      vim.cmd([[let test#strategy = "neovim"]])
      require("which-key").register({
        t = {
          name = "test",
          f = { "<cmd>TestFile<cr>", "Run tests (current file)" },
          n = { "<cmd>TestNearest<cr>", "Run tests (nearest)" },
          l = { "<cmd>TestLast<cr>", "Run tests (last)" },
          g = { "<cmd>TestVisit<cr>", "Open test file" },
          a = { "<cmd>TestSuite<cr>", "Run tests (suite)" },
        },
      }, { prefix = "<leader>" })
    end,
  },
}
