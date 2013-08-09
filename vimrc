"Run Pathogen
execute pathogen#infect()
execute pathogen#helptags()

" Set coloring and formatting of source files
syntax on
filetype plugin indent on

" Set 256 color
set t_Co=256

" Set vim mode
set nocompatible

" Set leader
let mapleader=","

" Set the timeout length
set timeoutlen=250

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
nnoremap <Tab> /^ \+<CR>

" Code Folding
set fdm=indent
set foldlevelstart=999
set foldenable

"Start in no-paste mode
set nopaste

" Map space to help with code folding
nnoremap <Space> za

" Setup cursor and line highlight
hi CursorColumn ctermbg=darkgrey
hi CursorLine ctermbg=darkgrey

" Map Leader G to toggle cursor line and column
" G - grid
nnoremap <silent> <Leader>g :set cursorcolumn! cursorline!<CR>

" Map Leader F to search for and count occurrences of the current word
nnoremap <silent> <Leader>f :%s/<C-r><C-w>//ng<CR>

" Map Leader X to clear the current search
nnoremap <silent> <Leader>x :let @/ = ""<CR>

" Map Leader TS to opening a tool-sharpening list in a split
nnoremap <Leader>ts :split ~/tool-sharpening.txt<CR>

" Map Leader VR to opening my vimrc in a vertical split
nnoremap <Leader>vr :vsplit ~/.vimrc <CR>

" Map Leader L to toggling line numbers vs relative numbers
nnoremap <silent> <Leader>l :call ToggleRelativeAbsLineNumbers()<CR>

"Map Leader v to toggling between paste modes
nnoremap <silent> <Leader>v :set paste!<CR>

"config.ru is a ruby file
autocmd BufNewFile,BufRead config.ru set ft=ruby

"Gemfile is a ruby file
autocmd BufNewFile,BufRead Gemfile,Gemfile.lock set ft=ruby

"Vagrantfile is a ruby file
autocmd BufNewFile,BufRead Vagrantfile,VagrantFile set ft=ruby

" My alias and funcion files are shell files
autocmd BufNewFile,BufRead .aliases,.functions set ft=sh

" Make sure that a visible color is used for search highlighting
hi Search ctermbg=DarkYellow

" When entering and leaving windows, clear and restore cursorcolumn/line
" Useful when multiple windows are open and you would like to see where you are

autocmd WinEnter * call LoadCursorColumnLineState()
autocmd WinLeave * call SaveCursorColumnLineState()

function SaveCursorColumnLineState()
  let w:columnstate = &cursorcolumn
  let w:linestate = &cursorline

  set nocursorcolumn
  set nocursorline
endfunction

function LoadCursorColumnLineState()
  if exists('w:columnstate') && exists('w:linestate')
    let &cursorcolumn = w:columnstate
    let &cursorline = w:linestate
  endif
endfunction

function ToggleRelativeAbsLineNumbers()
  let l:relative = &relativenumber

  if l:relative == 1
    set norelativenumber number
  else
    set nonumber relativenumber
  endif
endfunction
