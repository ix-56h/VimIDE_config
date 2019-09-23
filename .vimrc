set number
set smartindent
set autoindent
set ruler
set tabstop=4
set shiftwidth=4
set softtabstop=4
set mouse=a
syntax on
colorscheme Tomorrow-Night
hi Normal guibg=NONE ctermbg=NONE
let mapleader = ","
set visualbell

"---------------------------- Syntastic ---------------------------- 

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"---------------------------- vim-airline ---------------------------- 

set laststatus=2
set t_Co=256

"------------------------------ Buffers ------------------------------ 

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>


"---------------------------- plug-vim ---------------------------- 

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

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

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

"       Syntax checking hack for vim
Plug 'scrooloose/syntastic'

"   Vim script for text filtering and alignment
Plug 'godlygeek/tabular'

"   Powerful shell implemented by vim
Plug 'shougo/vimshell.vim'

"   Lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline'

"       Fuzzy file, buffer, tag, etc finder.
Plug 'kien/ctrlp.vim'

"       vim-airline themes

Plug 'vim-airline/vim-airline-themes'

"       Badwolf theme
"Plug 'sjl/badwolf'

"  ignore version warning

let g:go_version_warning = 0

" Initialize plugin system
call plug#end()
