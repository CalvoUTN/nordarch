filetype plugin indent on " Load plugins according to detected filtype
syntax on
set encoding=utf8

set tabstop=1
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set smarttab
set shiftround

" Rule and relative numbers
set colorcolumn=80             " Create rule at 80 characters
set number                     " Show current line number
set relativenumber             " Show relative line numbers
set cursorline                 " Highlight the cursor

set backspace=indent,eol,start " Make baclspace work as you would expect
set laststatus=2 " always show status line
set showcmd " show already typed keys when more are expected

set splitbelow " open new windows below the current windows
set splitright " open new windows right to the current window

""" plugins
call plug#begin('~/.vim/plugged') " specify directory for plugins

" aesthetics
Plug 'arcticicestudio/nord-vim', { 'branch': 'develop' }

" markdown plugin
Plug 'plasticboy/vim-markdown'

" vimtex
Plug 'lervag/vimtex'
  let g:tex_flavor='latex'
  let g:vimtex_quickfix_mode=0
  set conceallevel=1
  let g:tex_conceal='abdmg'
  let g:vimtex_view_general_viewer='zathura'

" snippets
Plug 'sirver/ultisnips'
  let g:ultisnipsexpandtrigger = '<tab>'
  let g:UltiSnipsJumpForwardTrigger = '<tab>'
  let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" git diffs
Plug 'airblade/vim-gitgutter'
call plug#end()

""" Aesthetics stuff defined after colorscheme
colorscheme nord
highlight LineNR ctermfg=4
highlight CursorLineNR ctermfg=7

""" Script to change relativenumber depending on insert mode
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
