set nocompatible "Strictly Vimproved
filetype off "required by Vundle

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
"Plugin 'klen/python-mode'

call vundle#end()

filetype on
syntax on

" allows opening files with unwritten changes to current buffer
set hidden
set ffs=unix
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,big5,latin1
set termencoding=utf-8,gbk
set nobackup
set nowb
set noswapfile
" set auto read when a file is chnaged from the outside
set autoread
" insert space characters whenever the tab key is pressed
set expandtab
" do not word-wrap text display
set nowrap
" insert 2 spaces characters when tab key is pressed
set tabstop=2
" insert 4 spaces when autoindent indents
set shiftwidth=4
" automatically indent files
set autoindent
" Do smart indentation depending on code syntax (e.g. change after { }, keywords etc)
set smartindent
" Display search matches while typing
set incsearch
" always show the status line
set laststatus=2
" show a ruler with line number, % through file on status line
set ruler
" show line number
set nu
" set 7 lines to the cursor when  moving vertically using j/k
set so=7
" configure backspace so it acts as it should
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

let mapleader = ","
let g:mapleader = ","

" fast saving
nmap <leader>w :w!<cr>
" fast save and quit
nmap <leader>W ZZ<cr>
" fast no save and quit
nmap <leader>q ZQ<cr>
" display pod2txt
nmap <leader>? :<C-U>!\/buzzfeed\/bin\/pod2text %\|less<CR>
" toggle line numbers
nmap <leader>n :set nu<cr>
nmap <leader>N :set nu!<cr>
" Tabs
nmap <leader>t :tabe %<cr>
nmap <leader>T :Te<cr>
nmap <leader>c :tabclose<cr>

vmap <leader>b :<C-U>!svn blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>
vmap <leader>g :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>
vmap <leader>h :<C-U>!hg blame -fu <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>

set errorformat=%m\ in\ %f\ on\ line\ %l

if has ('multi_byte') && v:version > 601
	if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
		set ambiwidth=double
	endif
endif

"autocmd Filetype javascript setlocal ts=2 sts=0 sw=2 noexpandtab
autocmd Filetype python setlocal ts=4 sts=4 sw=4 expandtab
highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
