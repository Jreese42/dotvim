"Enable syntax highlighting
syntax on

"Tabs as 4 spaces always
set tabstop=4
set shiftwidth=4
set expandtab
set shiftround

"Shortcuts for edit/reload vimrc
let mapleader=","
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"Some basic editor settings
set number
set showmatch
set ignorecase
set smartcase
set smarttab
set hlsearch
set incsearch
set autoindent
set wildmenu

",/ will clear search highlighting
nnoremap <leader>/ :nohlsearch<CR>

"Command to search for visual selection in PWD
vmap <leader>s y:vimgrep /<C-R>0/gj./**<CR>:cw<CR>

"Allow for visual movement over wrapped lines
nnoremap j gj
nnoremap k gk

"Add command to force saving of files when they need sudo
cmap w!! %!sudo tee > /dev/null %

" F1 is dumb, remap it to esc
noremap <F1> <Esc>

"jk works like escape too
inoremap jk <Esc>

" <leader><leader> opens previous buffer
noremap <Leader><Leader> <C-^>

" Plugins and Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

"YouCompleteMe
Plugin 'valloric/YouCompleteMe'

"SuperTab
Plugin 'ervandew/supertab'

"UltiSnips
Plugin 'SirVer/ultisnips'

"Add some snippets
Bundle 'honza/vim-snippets'

"NERDCommenter
Plugin 'scrooloose/nerdcommenter'

"NERDTree
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsSnippetDirectories=["custom_snippets"]

let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/c/.ycm_extra_conf.py'
nmap <silent> <leader>ci :let g:ycm_show_diagnostics_ui=1<CR>:!sleep 1<CR>:e<CR>
nmap <silent> <leader>co :let g:ycm_show_diagnostics_ui=0<CR>:!sleep 1<CR>:e<CR>

nmap <silent> <leader>t :NERDTreeToggle<CR>
