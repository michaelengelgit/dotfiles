local actions = require('telescope.actions')

local M = {}
M.search_dotfiles = function()
    require("telescope.builtin").find_files({
        prompt_title = "< Dotfiles >",
        cwd = "~/.dotfiles",
        hidden = true,
        file_ignore_patterns= {".git"},
    })
end

M.search_projects = function()
    require("telescope.builtin").find_files({
        prompt_title = "< Projects >",
        cwd = "~/dev/",
        hidden = true,
        file_ignore_patterns= {".git"},
    })
end

M.search_pprojects = function()
    require("telescope.builtin").find_files({
        prompt_title = "< ;/ >",
        cwd = "~/.__p_dev/",
        hidden = true,
        file_ignore_patterns= {".git"},
    })
end
return M
