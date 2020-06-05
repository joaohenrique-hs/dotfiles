call plug#begin('~/.config/nvim/bundle')

" Plugins
Plug 'sheerun/vim-polyglot'

" Icons
Plug 'ryanoasis/vim-devicons'

" intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'jiangmiao/auto-pairs' Coc-pairs solve this problem

" Format
Plug 'Yggdroot/indentLine'

" NerdTree
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Themes
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'tomasr/molokai'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Fuzzy files
Plug 'ctrlpvim/ctrlp.vim'

" Commenter
Plug 'scrooloose/nerdcommenter'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Centralize view
Plug 'junegunn/goyo.vim'

" Database Accesss
Plug 'tpope/vim-dadbod'

call plug#end()

autocmd CursorHold * silent call CocActionAsync('highlight')

autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | wincmd p | ene | exe 'NERDTree' argv()[0] | endif

au BufRead *.png,*.jpg,*.jpeg :call DisplayImage()

" coc packages
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-json',
  \ 'coc-clangd',
  \ 'coc-markdownlint',
  \ 'coc-python',
  \ 'coc-yaml',
  \]

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:prettier#autoformat_require_pragma = 0

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

inoremap <silent><expr> <c-space> coc#refresh()

map <C-n> :NERDTreeToggle<CR>
map <leader>g :Goyo<CR>

vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

nmap <F2> <Plug>(coc-rename)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

let g:quantum_italics=1

let g:indentLine_char = '▏'

let g:NERDTreeIgnore = ['^node_modules$', '\.git$[[dir]]']

let g:airline_theme='dracula'

let g:airline_powerline_fonts = 1

" ctrlp ignore
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

set signcolumn=yes

set termguicolors

set updatetime=200

colorscheme dracula 

set number
set ruler
set tabstop=2
set shiftwidth=2
set expandtab
set ignorecase
set winbl=10

" === NERDTree === "

" Remove bookmarks and help text from NERDTree
let g:NERDTreeMinimalUI = 1

