-- The Tao
local quotes = {
    'Because she competes with no one, no one can compete with her.',
    'The best athlete wants his opponent at his best.',
    'Nothing in the world is as soft and yielding as water.',
    'Be like water.',
    'In work, do what you enjoy.',
    'Care about people\'s approval and you will be their prisoner.',
    'Do your work, then step back.',
    'Success is as dangerous as failure.',
    'The Master doesn\'t talk, he acts.',
    'A good traveler has no fixed plans and is not intent upon arriving.',
    'Knowing others is intelligence; knowing yourself is true wisdom.',
    'If your happiness depends on money, you will never be happy with yourself.',
    'If you look to others for fulfillment, you will never truly be fulfilled.',
    'To attain knowledge, add things every day; To attain wisdom, subtract things every day.',
    'Close your eyes. Count to one. That is how long forever feels.',
    'The whole world belongs to you.',
    'Stop trying to control.',
}

local function getRandomQuote()
    -- Seed the random number generator
    math.randomseed(os.time())
    -- Get a random index
    local randomIndex = math.random(#quotes)
    -- Return the quote at the random index
    return quotes[randomIndex]
end

-- Dashboard
return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  dependencies = {
    'nvim-telescope/telescope.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    theme = 'doom',
    disable_move = true,
    config = {
      header = {
        "                                                     ",
        "                                                     ",
        "                                                     ",
        "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
        "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
        "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
        "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
        "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
        "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
        "                                                     ",
        "                                                     ",
      },
      center = {
        { icon = '  ', desc = 'New file          ', action = 'enew' },
        { icon = '  ', desc = 'Find file         ', key = 'Space + f', action = 'Telescope find_files' },
        { icon = '󱔗  ', desc = 'Recent files      ', key = 'Space + h', action = 'Telescope oldfiles' },
        { icon = '  ', desc = 'Find Word         ', key = 'Space + g', action = 'Telescope live_grep' },
        { icon = '  ', desc = 'Open terminal     ', key = 'Space + `', action = 'FloatermToggle' },

      },
      footer = { '', getRandomQuote() }
    },
    hide = {
      statusline = false,
      tabline = false,
      winbar = false,
    }
  },
  init = function()
    vim.api.nvim_set_hl(0, 'DashboardHeader', { fg = '#6272a4' })
    vim.api.nvim_set_hl(0, 'DashboardDesc', { fg = '#f8f8f2' })
    vim.api.nvim_set_hl(0, 'DashboardIcon', { fg = '#bd93f9' })
    vim.api.nvim_set_hl(0, 'DashboardKey', { fg = '#6272a4' })
    vim.api.nvim_set_hl(0, 'DashboardFooter', { fg = '#6272a4' })
  end,
}
