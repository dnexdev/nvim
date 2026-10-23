return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "retrobox",
    },
    init = function()
      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = function()
          vim.api.nvim_set_hl(0, "Directory", { bold = true })
          vim.api.nvim_set_hl(0, "FloatermBorder", { bg = "NONE" })
        end,
      })
    end,
  },
  {
    "chrisgrieser/nvim-spider",
    lazy = true,
    keys = {
      { "w", "<cmd>lua require('spider').motion('w')<CR>", mode = { "n", "o", "x" } },
      { "e", "<cmd>lua require('spider').motion('e')<CR>", mode = { "n", "o", "x" } },
      { "b", "<cmd>lua require('spider').motion('b')<CR>", mode = { "n", "o", "x" } },
    },
  },
  {
    "Olical/conjure",
    ft = { "racket", "scheme" },
    lazy = true,
    init = function() end,
  },
  { "prisma/vim-prisma" },
  { "elkowar/yuck.vim" },
}
