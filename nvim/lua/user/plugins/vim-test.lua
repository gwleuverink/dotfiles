-- Testing helper

return {
  'vim-test/vim-test',
  dependencies = {
    'voldikss/vim-floaterm'
  },
  keys = {
    { '<Leader>tn', ':silent TestNearest<CR>' },
    { '<Leader>tf', ':silent TestFile<CR>' },
    { '<Leader>ts', ':silent TestSuite<CR>' },
    { '<Leader>tp', ':silent TestLast<CR>' },
    { '<Leader>tv', ':silent TestVisit<CR>' },
  },
  config = function()
    vim.cmd([[
      let test#php#phpunit#options = '--colors=always'
      let test#php#pest#options = '--colors=always'

      function! FloatermStrategy(cmd)
        execute 'silent FloatermSend q'
        execute 'silent FloatermKill'
        execute 'FloatermNew! '.a:cmd.' |less -X'
      endfunction

      let g:test#custom_strategies = {'floaterm': function('FloatermStrategy')}
      let g:test#strategy = 'floaterm'
    ]])
  end
}
