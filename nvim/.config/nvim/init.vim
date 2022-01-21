let mapleader = " "

cal plug#begin('~/.vim/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'mbbill/undotree'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'ThePrimeagen/vim-be-good'
Plug 'joom/latex-unicoder.vim'

call plug#end()

" Set 
colorscheme gruvbox
set noerrorbells
set wildignore+=**/.git/*
set background=dark
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set expandtab
set nu
set guicursor=
set nohlsearch
set hidden
set errorbells
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set incsearch
set scrolloff=8
set relativenumber

lua require("telescope")


" maps
map <leader>h :wincmd h<CR>
map <leader>l :wincmd l<CR>
map <leader>qq :q!<CR>
map <leader>qs :wq<CR>
map <leader>s :w<CR>

map <leader>wn :wincmd v<CR>
map <leader>wc :wincmd c<CR>

"nnoremaps

"Undotree
nnoremap <leader>u :UndotreeShow<CR>

"Telescope
nnoremap <leader>fs :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>fw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>

nnoremap <leader>pd :lua require('telescope').search_dotfiles()<CR>
nnoremap <leader>pf :lua require('telescope').search_pprojects()<CR>
nnoremap <leader>pp :lua require('telescope').search_projects()<CR>
