return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    dependencies = { "nvim-lualine/lualine.nvim" },
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato",
        transparent_background = true,
        custom_highlights = function(colors)
          return {
            Comment = { fg = colors.flamingo },
            TabLineSel = { bg = colors.pink },
            CmpBorder = { fg = colors.surface2 },
            Pmenu = { bg = colors.none },
          }
        end,
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = false,
          mini = {
            enabled = true,
            indentscope_color = "lavender",
          },
          mason = true,
          fidget = true,
          markdown = true,
        },
      })
      vim.cmd.colorscheme("catppuccin")
      require("lualine").setup({
        options = {
          theme = "catppuccin",
          -- ... the rest of your lualine config
        },
      })
      require("fidget").setup({
        notification = {
          window = {
            winblend = 0,
          },
        },
        -- ... the rest of your fidget config
      })
    end,
  },
}
