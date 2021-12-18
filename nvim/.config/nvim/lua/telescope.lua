local actions = require('telescope.actions')

local M = {}
M.search_dotfiles = function()
    require("telescope.builtin").find_files({
        prompt_title = "< Dotfiles >",
        cwd = "~/.dotfiles",
        hidden = true,
    })
end

M.search_projects = function()
    require("telescope.builtin").find_files({
        prompt_title = "< Projects >",
        cwd = "~/dev/",
        hidden = true,
    })
end

return M
