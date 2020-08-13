call plug#begin('~/.config/nvim/bundle')

" Indenter
Plug 'sheerun/vim-polyglot'


" intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jiangmiao/auto-pairs'

" Format / editorconfig
Plug 'Yggdroot/indentLine'
Plug 'editorconfig/editorconfig-vim'
Plug 'alvan/vim-closetag'

" Multiple cursors
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Themes
Plug 'dracula/vim', { 'as': 'dracula' }

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
Plug 'ap/vim-css-color'

call plug#end()

autocmd CursorHold * silent call CocActionAsync('highlight')

" coc packages
let g:coc_global_extensions = [
  \ 'coc-snippets',
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

nmap <leader>rn <Plug>(coc-rename)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)

" Snippets
" Trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

let g:quantum_italics=1

let g:indentLine_char = '▏'

let g:airline_theme='dracula'

let g:airline_powerline_fonts = 1

let g:WebDevIconsUnicodeDecorateFolderNodes = v:true

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

