call plug#begin('~/.config/nvim/bundle')

" Indenter
Plug 'sheerun/vim-polyglot'

" Icons
Plug 'ryanoasis/vim-devicons'

" intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jiangmiao/auto-pairs' "Coc-pairs solve this problem

" Format / editorconfig
Plug 'Yggdroot/indentLine'
Plug 'editorconfig/editorconfig-vim'
Plug 'alvan/vim-closetag'

" Multiple cursors
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" NerdTree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Themes
Plug 'dracula/vim', { 'as': 'dracula' }

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
Plug 'kristijanhusak/vim-dadbod-ui'

" Hex colors
Plug 'gko/vim-coloresque'

call plug#end()

autocmd CursorHold * silent call CocActionAsync('highlight')

autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | wincmd p | ene | exe 'NERDTree' argv()[0] | endif

let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "*",            
    \ "Staged"    : "•",            
    \ "Untracked" : "+",            
    \ "Dirty"     : "⁖",            
    \ "Clean"     : "✅",                   
    \ 'Unknown'   :'?',
    \ }

let g:NERDTreeGitStatusShowIgnored = 1

" coc packages
let g:coc_global_extensions = [
  \ 'coc-snippets',
  "\ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-json',
  \ 'coc-clangd',
  \ 'coc-markdownlint',
  \ 'coc-python',
  \ 'coc-yaml',
  \ 'coc-emmet',
  \ 'coc-css',
  \ 'coc-prettier',
  \ 'coc-stylelint',
  \]

let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-d>'           " replace C-n
let g:VM_maps['Find Subword Under'] = '<C-d>'           " replace visual C-n

let NERDTreeWinPos=1

let NERDTreeAutoDeleteBuffer = 1

nnoremap <silent> <Leader>t :NERDTreeFocus<CR>

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.tsx,*.jsx'

let g:closetag_emptyTags_caseSensitive = 1

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
map <leader>g :Goyo<CR>

vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

nmap <F2> <Plug>(coc-rename)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

let g:quantum_italics=1

let g:indentLine_char = '▏'

let g:NERDTreeIgnore = ['^node_modules$', '\.git$[[dir]]']

let g:airline_theme='dracula'

let g:airline_powerline_fonts = 1

let g:WebDevIconsNerdTreeBeforeGlyphPadding = ''

let g:WebDevIconsUnicodeDecorateFolderNodes = v:true

" ctrlp ignore
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

set signcolumn=yes

set termguicolors

set updatetime=200

colorscheme dracula 

set encoding=UTF-8

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

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

