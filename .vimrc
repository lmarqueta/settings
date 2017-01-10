" Basics
set nocompatible
set ruler
set backspace=eol,start,indent
set ignorecase
set smartcase
set hlsearch
set number
set showcmd
set showmode
" set incsearch
set showmatch
set noerrorbells
set visualbell

" Color
syntax on
set background=dark
if !empty(glob("~/.vim/colors/Tomorrow-Night-Eighties.vim"))
    colorscheme Tomorrow-Night-Eighties
    set colorcolumn=80
endif
set encoding=utf-8
" set cursorline

" Tabs
set autoindent
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Files
filetype indent on
autocmd FileType html,json setlocal shiftwidth=2 softtabstop=2
autocmd FileType gitcommit setlocal tw=72 colorcolumn=80

" Autogroups
augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
                \:call <SID>StripTrailingWhitespaces()
    autocmd FileType java setlocal noexpandtab
    autocmd FileType java setlocal list
    autocmd FileType java setlocal listchars=tab:+\ ,eol:-
    autocmd FileType java setlocal formatprg=par\ -w80\ -T4
    autocmd FileType php setlocal expandtab
    autocmd FileType php setlocal list
    autocmd FileType php setlocal listchars=tab:+\ ,eol:-
    autocmd FileType php setlocal formatprg=par\ -w80\ -T4
    autocmd FileType python setlocal commentstring=#\ %s
    autocmd BufEnter Makefile setlocal noexpandtab
    autocmd BufEnter *.sh setlocal tabstop=2
    autocmd BufEnter *.sh setlocal shiftwidth=2
    autocmd BufEnter *.sh setlocal softtabstop=2
augroup END

" Maps
let mapleader=","

fu! MdRemaps()
    inoremap <leader>code ```<CR><CR>```<ESC>ka
    inoremap <leader>img ![]()
    inoremap <leader>href [](http://)<ESC>F[a
    inoremap <leader>table \| \| <CR>--- \| --- \| ---<CR>\| \|<ESC>kki
endfu

autocmd FileType markdown call MdRemaps()

