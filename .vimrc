" Load Pathogen
execute pathogen#infect()

" Use Vim settings, rather then Vi settings (much better!).
set nocompatible

" Set background type"
set background=dark

"color scheme"
" colorscheme elflord
" colorscheme delek
" colorscheme desert
" colorscheme default
colorscheme PaperColor

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Disable mouse "
set mouse=

" showmatch: Show the matching bracket for the last ')'?
set showmatch

" highlight strings inside C comments
let c_comment_strings=1

"color syntax"
syn on
set encoding=UTF-8

" status line
"set statusline=%(%F%m%r%h%w\ [%Y]\ %{&encoding}\ %)%=%(%l,%v\ %LL\ %p%%%)
set laststatus=2
set linespace=0
"let g:airline_theme = 'badwolf'
let g:airline_theme = 'wombatseocam'
let g:airline_powerline_fonts = 1
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#branch#enabled = 1
" tablines are cool but are degrading performance
"let g:airline#extensions#tabline#enabled = 1

" Keep git sign column as default (+, -, ~, etc.)
"let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_max_signs = 10000

" Change line number color
" (by default gitgutter uses same color as LineNr)
highlight LineNr ctermbg=235

"tab config"
set ts=4
set expandtab
set softtabstop=4

" 4 spaces for indenting
set shiftwidth=4

"Disable autoindentation"
set noai

" Enable filetype plugins "
filetype plugin on

" Disable preview code when using omni complete"
set completeopt=menu

" Allow modelines"
set modelines=1

set spelllang=en,pt_br

" vim markdown settings
let g:vim_markdown_folding_disabled=1

" force vim to use 265 colors
set term=screen-256color

" remove trailing spaces for certain file types
autocmd FileType python,javascript,ruby,c,cpp,java,php autocmd BufWritePre <buffer> :%s/\s\+$//e

"------------ Mappings --------------"

"+ and - to resize splited windows"
map - <C-W>-
map = <C-W>+

" Make tab in v mode work like I think it should (keep highlighting):
vmap <tab> >gv
vmap <s-tab> <gv

nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>

" Makes Ctrl-P plugin ignore .git and everything on .gitignore "
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Let Ctrl-P open buffers:
" Where:
"   i - all files as hidden buffers.
"   j - after opening, jump to the first opened tab or window.
" Source: http://stackoverflow.com/questions/33315406/open-all-selected-files-as-hidden-buffer
let g:ctrlp_open_multiple_files = 'ij'

" Required to make highlight work for JSX with pure JS
let g:jsx_ext_required = 0
