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
set autoread

" Backspace settings
set backspace=indent,eol,start

" See where the cursor is in the file numerically
set ruler

" With 7.4, the current line number can be bumped out
set number
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

" Setup colors
set background=dark
colorscheme solarized

" Configure :set spell highlighting
hi clear SpellBad
hi SpellBad ctermbg=red

" Configure RNU/NU coloring
hi CursorLineNr cterm=bold ctermbg=0 ctermfg=15

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

"Map Leader v to toggling between paste modes
nnoremap <silent> <Leader>v :set paste!<CR>

"Map Leader TT to run the current spec file
nnoremap <silent> <Leader>tt :call RunCurrentSpecFile()<CR>

"Map Leader NT to run the nearest spec
nnoremap <silent> <Leader>nt :call RunNearestSpec()<CR>

"Map F7 to toggle spell checking
nnoremap <F7> :set spell!<CR>

" Map C-n to opening a new tab
nnoremap <silent> <C-n> :tabnew<CR>

" Map C-x to closing a tab
nnoremap <silent> <C-x> :tabclose<CR>

" Map clipboard copy on yank
nnoremap <silent> <Leader>y "*y
nnoremap <silent> <Leader>Y "*Y

" Map clipboard paste on put
nnoremap <silent> <Leader>p "*p
nnoremap <silent> <Leader>P "*P

"config.ru is a ruby file
autocmd BufNewFile,BufRead config.ru set ft=ruby

"Gemfile is a ruby file
autocmd BufNewFile,BufRead Gemfile,Gemfile.lock set ft=ruby

"Vagrantfile is a ruby file
autocmd BufNewFile,BufRead Vagrantfile,VagrantFile set ft=ruby

" My alias and funcion files are shell files
autocmd BufNewFile,BufRead {,.}{aliases,functions} set ft=sh

" When entering and leaving windows, clear and restore cursorcolumn/line
" Useful when multiple windows are open and you would like to see where you are

autocmd WinEnter * call LoadCursorColumnLineState()
autocmd WinLeave * call SaveCursorColumnLineState()

" Closing the command t window
let g:CommandTCancelMap='<C-x>'

" Configure vim-multiple-cursors
let g:multi_cursor_next_key='<C-w>'
let g:multi_cursor_prev_key='<C-e>'
let g:multi_cursor_skip_key='<C-q>'

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
