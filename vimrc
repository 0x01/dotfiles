" Fix WSL2 vim colors
set term=screen-256color
set t_ut=

" Do not use old style vim mode
set nocompatible

" Enable syntax highlighting
syntax enable

" Enable search highlighting
set hlsearch

" Shortcut to mute highlighting
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" Shortcuts to insert timestamps
nnoremap <F5> "=strftime("%Y-%m-%d")<CR>PA
inoremap <F5> <C-R>=strftime("%Y-%m-%d")<CR>
nnoremap <F4> "=strftime("%H%M")<CR>PA
inoremap <F4> <C-R>=strftime("%H%M")<CR>

" Set colorscheme
colorscheme monokai

" Use hybrid line numbers
set relativenumber
set number

" Disable relative line numbers in insert mode
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Always show postition
set ruler

" Show matching brackets when cursor is over them
set showmatch

" Set UTF-8 as standard encoding
set encoding=utf-8

" Always display the statusline
set laststatus=2

" Adjust colors 
set background=dark

" Treat all numerals as decimal
set nrformats=

" Tabs and spaces

" Size of a hard tabstop
set tabstop=4

" Size of an indent
set shiftwidth=4

" A combination of spaces and tabs are used to simulate tab stops a width 
" other that the (hard)tabstop
set softtabstop=4

" Making a copy and overwriting the original file
set backupcopy=yes

" Do not expand tabs
set noexpandtab

" Transparent background
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

" Support for custom journal syntax highlighting
autocmd BufNewFile,BufRead *.journal set syntax=journal
