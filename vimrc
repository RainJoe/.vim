" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Colorscheme
" Plug 'tyrannicaltoucan/vim-quantum'
Plug 'morhetz/gruvbox'

"Git wrapper
Plug 'tpope/vim-fugitive'

"Airline
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" YCM
Plug 'Valloric/YouCompleteMe', {'for': ['c','cpp', 'go'] }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" vim-go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()


set relativenumber
set number
set backspace=2
set background=dark
set termguicolors
colorscheme gruvbox


filetype plugin indent on
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set smartindent
set cindent

let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1

let g:UltiSnipsExpandTrigger="<c-j>"

let g:airline_powerline_fonts=1
