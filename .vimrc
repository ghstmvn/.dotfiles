" be IMproved, required for vundle
set nocompatible
" filetype off, required for vundle
filetype off

" set the runtime path to include vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugins start
" CtrlP
Plugin 'ctrlpvim/ctrlp.vim'
" Base16 color
Plugin 'chriskempson/base16-vim'
" Gundo.vim
Plugin 'sjl/gundo.vim'
" vim-fugitive 
Plugin 'tpope/vim-fugitive'
" vim-airline 
Plugin 'bling/vim-airline'
" vim-gitgutter
Plugin 'airblade/vim-gitgutter'
" emmet-vim
Plugin 'mattn/emmet-vim'
" NERDtree
Plugin 'scrooloose/nerdtree'
" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'
" Vim surround
Plugin 'tpope/vim-surround'
" Vim repeat
Plugin 'tpope/vim-repeat'
" Vimtex
Plugin 'lervag/vimtex'

" plugins end
call vundle#end()
filetype plugin indent on

" non-plugin config
" set colorscheme
colorscheme base16-materia
let base16colorspace=256
" enable syntax
syntax enable
" show line numbers
set number
" turn on relative line number
set relativenumber
" set tabs to have 4 spaces
set ts=4
" indent when moving to the next line
set autoindent
" expand tabs into spaces
set expandtab
" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4
" show a visual line under the cursor's current line
set cursorline
" show the matching part of the pair for [], {} and ()
" set showmatch
" set matchtime=0
" enable all Python syntax highlighting features
let python_highlight_all = 1
" visual autocomplete for complete menu
set wildmenu
" redraw only when needed
set lazyredraw
" search as characters are entered
set incsearch
" highlight search matches
set hlsearch
" turn off highlighting when pressing ,<space>
nnoremap <leader>h :nohlsearch<CR>   
" enable folding
set foldenable
" open all folds by default
set foldlevelstart=10
" set nested fold max
set foldnestmax=10
" <leader>f open/closes folds
nnoremap <leader>f za
" fold based on indent level
set foldmethod=indent
" move vertically by visual line
nnoremap j gj
nnoremap k gk

" put backups in /tmp
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" set colorcolumn at 80
set cc=80

" Shiftwidth, tabstop, softtabstop settings
" Python
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4
" HTML
autocmd FileType html set sw=2
autocmd FileType html set ts=2
autocmd FileType html set sts=2
" DjangoHTML
autocmd FileType htmldjango set sw=2
autocmd FileType htmldjango set ts=2
autocmd FileType htmldjango set sts=2

" YCM settings
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
