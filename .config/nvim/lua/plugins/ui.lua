return {
  {
    "echasnovski/mini.indentscope",
    opts = {
      -- Disable animations when highlighting current indentation.
      draw = { animation = require("mini.indentscope").gen_animation.none() },
    },
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      stages = "static",
      timeout = 4000,
    },
  },
  {
    "folke/noice.nvim",
    opts = {
      views = {
        cmdline_popup = {
          position = {
            row = 12,
          },
        },
      },
      presets = {
        bottom_search = false,
        command_palette = true,
      },
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true,
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
        },
      },
    },
  },
}
