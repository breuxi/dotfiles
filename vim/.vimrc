syntax on

" General
set number		" Show line numbers
set linebreak		" Break lines at word (requires Wrap lines)
set showbreak=+++	" Wrap-broken line prefix
set textwidth=100	" Line wrap (number of cols)
set showmatch		" Highlight matching brace
set belloff=all		" Disable all bells
set encoding=UTF-8	" File encoding

set hlsearch		" Highlight all search results
set smartcase		" Enable smart-case search
set ignorecase		" Always case-insensitive
set incsearch		" Searches for strings incrementally
 
set autoindent		" Auto-indent new lines
set shiftwidth=4	" Number of auto-indent spaces
set smartindent		" Enable smart-indent
set smarttab		" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab
set cursorline		" Activate cursorline

set mouse=a

" Advanced
set ruler			" Show row and column ruler information
 
set undolevels=1000		" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour
 
" Plugins
call plug#begin()
    " Themes
    Plug 'dracula/vim', {'as': 'dracula'}

    Plug 'preservim/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'ryanoasis/vim-devicons'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Plug 'maralla/completor.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'mattn/emmet-vim'
    Plug 'alvan/vim-closetag'
    Plug 'Matt-Deacalion/vim-systemd-syntax'
    Plug 'chr4/nginx.vim'
call plug#end()

" let g:user_emmet_expandabbr_key='<Tab>'

let g:coc_global_extensions = [
	    \ 'coc-snippets',
	    \ 'coc-html', 
	    \ 'coc-json', 
	    \ 'coc-git',
	    \ 'coc-tsserver',
	    \ 'coc-python',
	    \ 'coc-pairs',
	    \ 'coc-emmet',
	    \ '@yaegassy/coc-nginx'
	    \ ]

source ~/.vim/coc/coc.vim

" Shortcuts
nnoremap <C-d> :NERDTreeToggle<CR>
map <F7> gg=G<C-o><C-o>

" Commands
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!

" NERDTree
let NERDTreeShowHidden=1

" Theme
colorscheme dracula

set cmdheight=1     " Airline CMD default height

" Add Syntax Highlighting for ssh configs
au BufNewFile,BufRead ssh_config,*/.ssh/config.d/*  setf sshconfig
