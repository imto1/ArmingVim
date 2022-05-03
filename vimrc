call plug#begin('~/.vim/plugged')
Plug 'https://github.com/preservim/nerdtree.git'
Plug 'https://github.com/preservim/nerdcommenter.git'
Plug 'https://github.com/frazrepo/vim-rainbow.git'
Plug 'https://github.com/itchyny/lightline.vim.git'
Plug 'https://github.com/airblade/vim-gitgutter.git'
Plug 'https://github.com/vim-scripts/taglist.vim.git'
Plug 'https://github.com/itchyny/vim-gitbranch.git'
Plug 'https://github.com/wincent/terminus.git'
Plug 'https://github.com/skywind3000/asyncrun.vim.git'
Plug 'https://github.com/davidhalter/jedi-vim.git'
Plug 'https://github.com/peterhoeg/vim-qml.git'
Plug 'https://github.com/vim-syntastic/syntastic.git'
Plug 'https://github.com/Yggdroot/indentLine.git'
call plug#end()
syntax enable
filetype on
colorscheme monokai
set number
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set nofoldenable
setlocal foldmethod=indent
set t_Co=256
set nowrap
set nocp
set clipboard=unnamed
set clipboard=unnamedplus
set autoindent
set cindent
set si
set showmatch
set hlsearch
set noswapfile
set mouse=a
set updatetime=100
filetype plugin on
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }
let g:rainbow_active = 1
let $PYTHONUNBUFFERED=1
autocmd FileType python :noremap <F5> :AsyncRun -raw python % <CR>
autocmd FileType sh  :noremap <F5> :AsyncRun bash % <CR>
let g:asyncrun_open = 8
map <F12> :bw!<CR>
autocmd FileType python :map <F10> :AsyncRun pylint ./%<CR><CR>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" auto complete for ( , " , ' , [ , { 
inoremap        (  ()<Left>
inoremap        "  ""<Left>
inoremap        `  ``<Left>
inoremap        '  ''<Left>
inoremap        [  []<Left>
inoremap      {  {}<Left>

map <F8> :setlocal spell! spelllang=en_us<CR> " check spelling with F8
set pastetoggle=<F2>
map <F3> :TlistToggle<CR>
let g:indentLine_char = '.'

" NERDTree plugin setting
map <F9> :NERDTreeToggle<CR> 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeMapOpenInTab='<c-t>'
