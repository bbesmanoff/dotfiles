"Run Pathogen
execute pathogen#infect()

" Set coloring and formatting of source files
syntax on
filetype plugin indent on

" Set vim mode
set nocompatible

" Set leader
let mapleader=","

" General code style
set tw=80
set tabstop=2
set shiftwidth=2
set expandtab

" Backspace settings
set backspace=indent,eol,start

" See where the cursor is in the file numerically
set ruler

" Relative numbers for easy jumping
set relativenumber

" highlight search results
set hlsearch

" Map <Tab> to highlight indentation
map <Tab> /^ \+<CR>

" Code Folding
set fdm=indent
set foldlevelstart=999
set foldenable

" Map space to help with code folding
map <Space> za

" Setup cursor and line highlight
hi CursorColumn ctermbg=darkgrey
hi CursorLine ctermbg=darkgrey

" Map Leader G to toggle cursor line and column
" G - grid
map <silent> <Leader>g :set cursorcolumn! cursorline!<CR>

"config.ru is a ruby file
autocmd BufNewFile,BufRead config.ru set ft=ruby

"Gemfile is a ruby file
autocmd BufNewFile,BufRead Gemfile,Gemfile.lock set ft=ruby

"Vagrantfile is a ruby file
autocmd BufNewFile,BufRead Vagrantfile,VagrantFile set ft=ruby

" My alias and funcion files are shell files
autocmd BufNewFile,BufRead .aliases,.functions set ft=sh

" Reload .vimrc if it is saved
autocmd BufWritePost ~/.vimrc source ~/.vimrc

" Make sure that a visible color is used for search highlighting
hi Search ctermbg=DarkYellow
