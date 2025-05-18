return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    enabled = false,
    priority = 1000,
    dependencies = { "nvim-lualine/lualine.nvim" },
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato",
        transparent_background = true,
        custom_highlights = function(colors)
          return {
            Comment = { fg = colors.teal },
            TabLineSel = { fg = colors.base, bg = colors.pink },
            CmpBorder = { fg = colors.surface2 },
            Pmenu = { bg = colors.none },
            LineNr = { fg = colors.lavender },
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
  {
    "RedsXDD/neopywal.nvim",
    enabled = true,
    name = "neopywal",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      require("neopywal").setup({
        use_wallust = true,
        transparent_background = true,
        plugins = {
          alpha = true,
          dashboard = false,
          git_gutter = true,
          indent_blankline = true,
          lazy = true,
          lazygit = true,
          noice = false,
          notify = true,
          nvim_cmp = true,
          mini = {
            hipatterns = true,
            indentscope = {
              enabled = true,
            },
            pick = true,
            starter = true,
          },
        },
        fileformats = {
          c_cpp = true,
          c_sharp = true,
          clojure = false,
          cmake = true,
          common_lisp = false,
          css = true,
          dart = false,
          diff = true,
          elixir = false,
          erlang = false,
          git_commit = true,
          go = true,
          haskell = false,
          help = true,
          html = true,
          ini = false,
          java = false,
          javascript = true,
          javascript_react = false,
          json = true,
          kotlin = false,
          latex = false,
          less = false,
          lua = true,
          makefile = true,
          markdown = true,
          matlab = false,
          objectivec = false,
          ocaml = false,
          perl = false,
          php = true,
          powershell = false,
          python = true,
          restructuredtext = false,
          ruby = false,
          rust = true,
          sass = false,
          scala = false,
          shell = true,
          swift = false,
          toml = true,
          typescript = true,
          viml = true,
          xml = false,
          yaml = true,
          zsh = true,
        },
      })
      vim.cmd.colorscheme("neopywal")
      local has_lualine, lualine = pcall(require, "lualine")
      if not has_lualine then
        return
      end

      local has_neopywal, neopywal_lualine = pcall(require, "neopywal.theme.plugins.lualine")
      if not has_neopywal then
        return
      end

      neopywal_lualine.setup()

      lualine.setup({
        options = {
          theme = "neopywal",
          -- The rest of your lualine config ...
        },
      })
    end,
  },
}
