local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
    options = {
        mode = "tabs",
        separator_style = {'', ''},
        always_show_bufferline = false,
        show_buffer_close_icons = false,
        show_close_icon = false,
        color_icons = true,
        offsets = { {
            filetype = "NvimTree",
            text = "File Explorer",
            text_align = "left",
            separator = true
        } },
        show_duplicate_prefix = false,
        show_tab_indicators = false,
        indicator = { style = 'none' },
        enforce_regular_tabs = true
    },
    highlights = {
        buffer_selected = {
            fg = '#f38ba8',
            bold = true,
            italic = false
        },
    },
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
