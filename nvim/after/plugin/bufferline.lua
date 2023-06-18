vim.opt.termguicolors = true
require("bufferline").setup{
    options = {
        number = "ordinal",
--        indicator = {
--            style = 'underline'
--        },
        hover = {
            enabled = true,
            delay = 150,
            reveal = {'close'}
        }
    }
}
