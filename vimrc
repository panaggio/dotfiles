" vimrc by @ivf, adapted

if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" master option
set nocompatible

" syntax highlight
"if has("syntax")
if &t_Co > 2 || has("gui_running")
  syntax on
endif

if has("autocmd")
  filetype plugin indent on
endif

set ul=1000 " max undo levels 
nohlsearch 
set expandtab " expand tabs to spaces
" Set best color scheme to dark consoles
"set background=dark
"set nu " show line number
set hidden " allows changing buffers without saving
set autoindent
set smartindent
set shiftwidth=2
set tabstop=2 " tabstop == ts
set softtabstop=2
set incsearch " incremental search

autocmd FileType c setl shiftwidth=4 cindent tabstop=4 softtabstop=4
autocmd FileType make set noet ts=4 sw=4

" Set hotkey for regenerating tags to Control-F5
map <C-F5>  :!ctags -R --c-kinds=+pm-nu  --fields=+ianS --extra=+q -I *<CR>
