require('lazy').setup({
    -- Other plugins

    {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup({
                theme = 'doom', -- You can change the theme here
                config = {
       week_header = {
       enable = true,
      },
                    center = {
                        {
                            icon = '  ',
                            desc = 'Recently opened files                   ',
                            action = 'Telescope oldfiles',
                            key = 'r',
                        },
                        {
                            icon = '  ',
                            desc = 'Find File                               ',
                            action = 'Telescope find_files',
                            key = 'f',
                        },
                        {
                            icon = '  ',
                            desc = 'File Browser                            ',
                            action = 'Telescope file_browser',
                            key = 'b',
                        },
                        {
                            icon = '  ',
                            desc = 'Find word                               ',
                            action = 'Telescope live_grep',
                            key = 'w',
                        },
                        {
                            icon = '  ',
                            desc = 'Open Personal dotfiles                  ',
                            action = 'Telescope dotfiles path=~/.dotfiles',
                            key = 'd',
                        },
                    },
                    footer = {"Have a nice day!"}  -- Footer message
                }
            })
        end,
        requires = {'nvim-telescope/telescope.nvim'}
    }
})

-- Ensure you have `telescope.nvim` installed as well
{
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
}

