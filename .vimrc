set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ervandew/supertab'
Plugin 'fsharp/vim-fsharp'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'fatih/vim-go'
Plugin 'vimwiki/vimwiki'
Plugin 'bling/vim-airline'
Plugin 'lambdatoast/elm.vim'
Plugin 'mileszs/ack.vim'
Plugin 'def-lkb/ocp-indent-vim'
Plugin 'the-lambda-church/merlin', {'name': 'vimbufsync', 'rtp': 'vim/vimbufsync'}
Plugin 'the-lambda-church/merlin', {'rtp': 'vim/merlin'}
Plugin 'benmills/vimux'
Plugin 'OmniSharp/omnisharp-vim'
Plugin 'tpope/vim-dispatch'
Plugin 'rust-lang/rust.vim'
call vundle#end()

filetype plugin indent on

set t_Co=256
set background=dark
set directory=~/Temp
let g:vimwiki_url_maxsave=0
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:SuperTabDefaultCompletionType="<c-x><c-o>"
let g:SuperTabLongestEnhanced=1
let g:SuperTabLongetHighlight=1
let g:SuperTabClosePreviewOnPopupClose=1

let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#syntastic#enabled=1
let g:airline#extensions#branch#enabled=1

let g:syntastic_check_on_open=1
let g:syntastic_ocaml_checkers = ['merlin']

"let g:ocp_indent_args='--indent-empty'

autocmd FileType ocaml call SuperTabSetDefaultCompletionType("<c-x><c-o>")
autocmd FileType fsharp call SuperTabSetDefaultCompletionType("<c-x><c-o>")
autocmd Filetype gitcommit set tw=78 spell
autocmd Filetype mail set tw=72 wrap spell nocp 
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
colorscheme solarized

syntax on

map <C-n> :NERDTreeToggle<CR>

set spelllang=en
set spellfile=~/.vim/en.utf-8.add
setglobal fileencoding=utf-8
set wildmode=list:longest,full
set foldmethod=syntax
set nofoldenable
set foldlevel=0
set completeopt=longest,menuone,preview
set encoding=utf-8
set autowrite
set mouse=a
set nospell
set backup
set showmode
set showcmd
set laststatus=2
set backspace=indent,eol,start
set number
set showmatch
set incsearch
set nohlsearch
set infercase
set magic
set smartcase
set nowrap
set autoindent
set shiftwidth=2
set shiftround
set expandtab
set tabstop=2
set softtabstop=2
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
let g:vimwiki_list = [{'path': '~/Dropbox/vimwiki', 'path_html':'~/Documents'}]

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
            \ 'dir': '\.git$\|\.hg$\|\.svn$',
            \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$\|\~$' }

"let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
"execute "set rtp+=" . g:opamshare . "/merlin/vim"


"autocmd FileType fsharp map <Leader>ru :call VimuxRunCommand("clear; fsharpi " . bufname("%"))<CR>
autocmd FileType ocaml map <Leader>ru :call VimuxRunCommand("clear; utop " . bufname("%"))<CR>
autocmd FileType haskell map <Leader>ru :call VimuxRunCommand("clear; ghci " . bufname("%"))<CR>
autocmd FileType python map <Leader>ru :call VimuxRunCommand("clear; python " . bufname("%"))<CR>

map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
map <Leader>vi :VimuxInspectRunner<CR>
map <Leader>vq :VimuxCloseRunner<CR>
map <Leader>vx :VimuxInterruptRunner<CR>
map <Leader>vz :call VimuxZoomRunner()<CR>
map <Leader>vt :VimuxTogglePane<CR>

function! VimuxSlime()
  call VimuxSendText(@v)
  "call VimuxSendKeys("Enter")
endfunction

vmap <LocalLeader>vs "vy :call VimuxSlime()<CR>
nmap <LocalLeader>vs vip<LocalLeader>vs<CR>
