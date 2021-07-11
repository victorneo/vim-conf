call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'nvie/vim-flake8'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'fatih/vim-go'
Plug 'guns/vim-clojure-static'
Plug 'kien/rainbow_parentheses.vim'
Plug 'pangloss/vim-javascript'
call plug#end()

" General Vim Settings
set t_Co=256
set guioptions=aAce
set mouse=a
set smarttab
set expandtab
set autoindent
set backspace=indent,eol,start
set number
set nowrap
syntax on
filetype plugin indent on
fixdel
colorscheme benokai
set pastetoggle=<F12>
highlight Pmenu ctermbg=238 gui=bold
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.egg,*.tar.gz,*.tar,*.gz,*.out,*/static/vendor/*,*.min.css,*.min.js,*.css.map,*.jpg,*.png,*.gif

" Shortcuts for moving around splits with ctrl + Arrow
map <C-Left> <C-W><Left>
map <C-Right> <C-W><Right>
map <C-Up> <C-W><Up>
map <C-Down> <C-W><Down>

" NERDTree Settings
map <F2> :NERDTreeToggle<CR>
map <F3> :Todo<CR>
let NERDTreeIgnore = ['\.pyc$', '^__pycache__$', '\.out$', '\.git$', '\.class$', '.DS_Store', '\.swp$', '^.pytest_cache$']
let NERDTreeShowHidden=1

" vim-javascript settings
let g:javascript_plugin_flow = 1

" Auto-enable RainbowParaentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare

" Enable TODO search
command Todo noautocmd vimgrep /TODO\|FIXME/j ** | cw
