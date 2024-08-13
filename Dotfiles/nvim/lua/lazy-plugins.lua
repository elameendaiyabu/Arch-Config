require('lazy').setup({
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  { 'numToStr/Comment.nvim', opts = {} },

  require 'kickstart/plugins/tokyonight',
  require 'kickstart/plugins/vim-tmux-navigator',

  require 'kickstart/plugins/lualine',

  require 'kickstart/plugins/gitsigns',

  require 'kickstart/plugins/telescope',

  require 'kickstart/plugins/lspconfig',

  require 'kickstart/plugins/conform',

  require 'kickstart/plugins/cmp',

  require 'kickstart/plugins/todo-comments',

  require 'kickstart/plugins/mini',

  require 'kickstart/plugins/treesitter',

  require 'kickstart/plugins/autotag',

  require 'kickstart/plugins/null-ls',

  --require 'kickstart/plugins/typescript-tools',

  --require 'kickstart/plugins/scrollbar',

  require 'kickstart/plugins/lazygit',

  -- require 'kickstart.plugins.debug',
  -- require 'kickstart.plugins.indent_line',
  require 'kickstart.plugins.lint',
  require 'kickstart.plugins.autopairs',
  require 'kickstart.plugins.neo-tree',

  { import = 'custom.plugins' },
}, {
  ui = {
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- vim: ts=2 sts=2 sw=2 et
