local trouble = require("trouble")

trouble.setup{
    icons = false,
}

vim.keymap.set("n", "<leader>tt", "<cmd>TroubleToggle<cr>")


