return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader><space>", false }, -- Disable, since we use this keymap to switch files.
      { "<leader>fO", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
      { "<leader>fo", require("lazyvim.util").telescope("oldfiles", { cwd = vim.loop.cwd() }), desc = "Recent (cwd)" },
      { "<leader>fo", require("lazyvim.util").telescope("oldfiles", { cwd = vim.loop.cwd() }), desc = "Recent (cwd)" },
      { "<leader>ss", require("lazyvim.util").telescope("live_grep"), desc = "Grep (root dir)" },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        mappings = {
          ["h"] = "close_node",
          ["l"] = "open",
        },
      },
    },
  },
}
