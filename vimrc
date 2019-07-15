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
Plug 'tyrannicaltoucan/vim-quantum'

"Git wrapper
Plug 'tpope/vim-fugitive'

"Airline
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" YCM
Plug 'Valloric/YouCompleteMe', {'for': ['c','cpp'] }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" 符号索引
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'

" Initialize plugin system
call plug#end()

set path='.,/usr/local/include,/usr/lib/llvm-8/lib/clang/8.0.1/include,/usr/include/x86_64-linux-gnu,/usr/include,/home/raohao/Workspace/lab/inc,,'

set relativenumber
set number

""" 设置缩进
filetype plugin indent on " 根据文件类型自动设置缩进规则
set tabstop=4 " 默认是8
set expandtab " 使用空格替换 tab
set shiftwidth=4 " 缩进改为4空格
set autoindent " 启用自动缩进
set smartindent " 启用智能缩进
set cindent " 启用严格的C风格缩进


set background=dark
set termguicolors
colorscheme quantum

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1

let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1

map <C-]> :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui=0


let g:UltiSnipsExpandTrigger="<c-j>"


" enable gtags module
let g:gutentags_modules = ['gtags_cscope']
" " config project root markers.
let g:gutentags_project_root = ['.root','.svn','.git','.hg','.project']
" generate datebases in my cache directory, prevent gtags files polluting my
" project
let g:gutentags_cache_dir = expand('~/.cache/tags')
" change focus to quickfix window after search (optional).
let g:gutentags_plus_switch = 1
let g:gutentags_define_advanced_commands = 1
let g:gutentags_auto_add_gtags_cscope = 1


set t_Co=256
