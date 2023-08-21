vim.cmd[[highlight IndentBlanklineChar guifg=#404040 gui=nocombine]]
vim.cmd[[highlight IndentBlanklineSpaceChar guifg=#404040 gui=nocombine]]
vim.cmd[[highlight IndentBlanklineContextChar guifg=#707070 gui=nocombine]]

require("indent_blankline").setup {

  --for example, context is off by default, use this to turn it on

  show_current_context = true,

  --show_current_context_start = true,
  use_treesitter = true,
}
