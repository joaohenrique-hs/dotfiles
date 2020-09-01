call plug#begin('~/.config/nvim/bundle')

" Start Scree
Plug 'mhinz/vim-startify'

" Indenter
Plug 'sheerun/vim-polyglot'

" Icons
Plug 'ryanoasis/vim-devicons'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Floating windows
Plug 'voldikss/vim-floaterm'

Plug 'liuchengxu/vim-clap'

" intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
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
  \ 'coc-explorer',
  \ 'coc-tabnine',
  \ 'coc-highlight',
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

" intellisense
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

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

" Coc Explorer
let g:coc_explorer_global_presets = {
\   'tab': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\     'floating-width': 30,
\     'open-action-strategy': 'tab',
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   },
\   'right': {
\     'position': 'right',
\     'quit-on-open': v:true,
\     'open-action-strategy': 'sourceWindow',
\     'file-child-template': '[git | 2] [selection | clip | 1] [indent][icon | 1] [filename omitCenter 1] [diagnosticError][modified][readonly] [linkIcon & 1][link growRight 1 omitCenter 5][size]'
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'simplify': {
\     'position': 'right',
\     'quit-on-open': v:true,
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }

" Use preset argument to open it
nmap <space>e :CocCommand explorer --preset simplify<CR>
nmap <space>f :CocCommand explorer --preset floating<CR>
nmap <space>t :CocCommand explorer --preset tab<CR>

autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

" Open directory with explorer
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'CocCommand explorer --preset simplify' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif


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

" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>

" Vim Clap
nmap <c-p> :Clap files<CR>
nmap <c-c> :Clap yanks<CR>
nmap <c-g> :Clap grep<CR>

" Floating windows
let g:floaterm_keymap_toggle = '<c-t>'

" Starting

let g:startify_custom_header = [
      \ '       _  __     _         __  ___         __ ',
      \ '      / |/ /  __(_)_ _    /  |/  /__ _____/ / ',
      \ '     /    / |/ / /  ` \  / /|_/ / _ `/ __/ _ \',
      \ '    /_/|_/|___/_/_/_/_/ /_/  /_/\_,_/\__/_//_/',
      \]

let g:startify_lists = [
      \ { 'type': 'files', 'header': ['   Files'] },
      \]

let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1

let g:webdevicons_enable_startify = 1

let g:startify_enable_special = 0


" General config
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

