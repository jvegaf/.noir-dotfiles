return {
  {
    "folke/todo-comments.nvim",
    event = "VimEnter",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = { signs = false },
  },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
  { "Shatur/neovim-session-manager", opts = {} },
  { "hrsh7th/nvim-cmp" },
}
