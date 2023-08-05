local status, saga = pcall(require, 'lspsaga')
if (not status) then return end

saga.setup({
    ui = {
        border = 'rounded',
    },
    symbol_in_winbar = {
        enable = false
    },
    lightbulb = {
        enable = false
    },
    outline = {
        layout = 'float'
    },
    finder_action_keys = {
        open = '<CR>',
    },
    definition_action_keys = {
        edit = '<CR>'
    }
})
