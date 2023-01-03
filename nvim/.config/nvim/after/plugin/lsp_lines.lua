local lsp_lines = require('lsp_lines')
vim.diagnostic.config({
    virtual_text = false,
})

vim.keymap.set(
    "",
    "<Leader>L",
    require("lsp_lines").toggle,
    { desc = "Toggle lsp_lines" }
)

lsp_lines.setup()
