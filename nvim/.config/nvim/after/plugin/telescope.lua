local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-p>', builtin.git_files, {})

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

vim.keymap.set('n', '<leader>pp', function()
	builtin.find_files({prompt_title = "< Projects >", cwd = "~/dev/", hidden = true, file_ignore_patterns = {".git"} })
end)

vim.keymap.set('n', '<leader>pi', function()
	builtin.find_files({prompt_title = "< XD >", cwd = "~/.__p_dev/", hidden = true, file_ignore_patterns = {".git"} })
end)

vim.keymap.set('n', '<leader>p.', function()
	builtin.find_files({prompt_title = "< Dotfiles >", cwd = "~/.dotfiles/", hidden = true, file_ignore_patterns = {".git"} })
end)

vim.keymap.set('n', '<leader>pd', function()
	builtin.find_files({prompt_title = "< Documents >", cwd = "~/docs/", hidden = true, file_ignore_patterns = {".git"} })
end)

vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
