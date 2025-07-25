local keymap = vim.keymap
-- plugins/telescope.lua:

local config = function()
    local telescope = require('telescope')
    telescope.setup({
        defaults = {
            mappings = {
                i = {
                },
            },
        },
        pickers = {
            find_files = {
                theme = "dropdown",
                previewer = false,
                hidden = true,
            },
            live_grep = {
                theme = "dropdown",
                previewer = false,
            },
            find_buffers = {
                theme = "dropdown",
                previewer = false,
            }
        },
        extensions = {
        }
    })
end

return {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.5',
    lazy = false,
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = config,
        keys = {
            keymap.set('n', '<leader>ff', ":Telescope find_files<CR>"),
            keymap.set('n', '<leader>fg', ":Telescope live_grep<CR>"),
            keymap.set('n', '<leader>fk', ":Telescope keymaps<CR>"),
            keymap.set('n', '<leader>fb', ":Telescope buffers<CR>"),
            keymap.set('n', '<leader>fa', ":Telescope <CR>"),
        },
}
