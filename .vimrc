execute pathogen#infect()
syntax on
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
set tabstop=4 " insert 4 spaces characters when tab key is pressed
set shiftwidth=4 " insert 4 spaces when autoindent indents
set autoindent " automatically indent files
set smartindent " Do smart indentation depending on code syntax (e.g. change after { }, keywords etc)
set incsearch
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
set laststatus=2 " always show the status line
set ruler " show a ruler with line number, % through file on status line
"set nu " show line number
"
set so=7 " set 7 lines to the cursor when  moving vertically using j/k
set backspace=eol,start,indent " configure backspace so it acts as it should
set whichwrap+=<,>,h,l

let mapleader = ","
let g:mapleader = ","

" fast saving
nmap <leader>w :w!<cr>
" toggle line numbers
nmap <leader>n :set nu<cr>
nmap <leader>N :set nu!<cr>

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
