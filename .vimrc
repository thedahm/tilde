set nocompatible "Strictly Vimproved
filetype off "required by Vundle

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'bling/vim-airline'

Plugin 'tpope/vim-fugitive'

Plugin 'klen/python-mode'

call vundle#end()

filetype on
"execute pathogen#infect()
syntax on
"set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set hidden " allows opening files with unwritten changes to current buffer
set ffs=unix
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,big5,latin1
set termencoding=utf-8,gbk
set nobackup
set nowb
set noswapfile
set autoread " set auto read when a file is chnaged from the outside
set expandtab " insert space characters whenever the tab key is presse
set nowrap
set tabstop=2 " insert 2 spaces characters when tab key is pressed
set shiftwidth=4 " insert 4 spaces when autoindent indents
set autoindent " automatically indent files
set smartindent " Do smart indentation depending on code syntax (e.g. change after { }, keywords etc)
set incsearch
"set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
set laststatus=2 " always show the status line
set ruler " show a ruler with line number, % through file on status line
"set nu " show line number
"
set so=7 " set 7 lines to the cursor when  moving vertically using j/k
set backspace=eol,start,indent " configure backspace so it acts as it should
set whichwrap+=<,>,h,l

let mapleader = ","
let g:mapleader = ","
" let g:airline#extensions#tabline#enabled = 1

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

" PHP syntax check
set makeprg=php\ -l\ %
set errorformat=%m\ in\ %f\ on\ line\ %l

" F5 put a Moodle debugging msg
map <F5> oprint_object(); die(); // DONOTCOMMIT<Esc>23hi
map <F6> odebugging(''); // DONOTCOMMIT<Esc>17hi

if has ('multi_byte') && v:version > 601
	if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
		set ambiwidth=double
	endif
endif

"autocmd Filetype javascript setlocal ts=2 sts=0 sw=2 noexpandtab
autocmd Filetype python setlocal ts=4 sts=4 sw=4 expandtab
highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
