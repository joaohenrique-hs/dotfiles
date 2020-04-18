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

" Prettier
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Ctrl + D
" Plug 'tpope/vim-abolish'

call plug#end()

autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | wincmd p | ene | exe 'NERDTree' argv()[0] | endif

au BufRead *.png,*.jpg,*.jpeg :call DisplayImage()

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

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

nmap <F2> <Plug>(coc-rename)

let g:prettier#autoformat_require_pragma = 0

let g:quantum_italics=1

let g:indentLine_char = '▏'

let g:mapleader = ","

set signcolumn=yes

set termguicolors

set updatetime=500

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

" Hide certain files and directories from NERDTree
let g:NERDTreeIgnore = ['^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$']

