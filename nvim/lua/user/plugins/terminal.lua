--- Floating terminal

return {
    'voldikss/vim-floaterm',
    keys = {
      { '<Leader>`', ':FloatermToggle<CR>' },
      { '<Leader>`', '<Esc>:FloatermToggle<CR>', mode = 'i' },
      { '<Leader>`', '<C-\\><C-n>:FloatermToggle<CR>', mode = 't' },
    },
    cmd = { 'FloatermToggle' },
    init = function()
      vim.g.floaterm_height = 0.4
      vim.g.floaterm_wintype = 'split'

      -- Disable spell check in when the terminal is open
      vim.cmd([[
        augroup FileTypeOverrides
          autocmd!
          autocmd TermOpen * setlocal nospell
        augroup END
      ]])
    end,
  }
