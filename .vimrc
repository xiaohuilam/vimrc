"mapleader
let mapleader = ","

"source ~/.vimbundle

" encoding dectection
set fileencoding=utf-8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

" enable filetype dectection and ft specific plugin/indent
filetype plugin indent on

" enable syntax hightlight and completion
syntax on


call plug#begin('~/.vim/plugged')

Plug 'terryma/vim-multiple-cursors'


Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug '~/my-prototype-plugin'
Plug 'junegunn/vim-easy-align',       { 'on': ['<Plug>(EasyAlign)', 'EasyAlign'] }
Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity']      }
Plug 'junegunn/vim-emoji'
Plug 'junegunn/vim-pseudocl'
Plug 'junegunn/vim-slash'
Plug 'junegunn/vim-fnr'
Plug 'junegunn/vim-peekaboo'
Plug 'junegunn/vim-journal'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/gv.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vader.vim',  { 'on': 'Vader', 'for': 'vader' }
Plug 'junegunn/vim-ruby-x', { 'on': 'RubyX' }
Plug 'junegunn/fzf',        { 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/rainbow_parentheses.vim'
"Plug 'godlygeek/tabular'
"Plug 'plasticboy/vim-markdown'

Plug 'tomasr/molokai'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-commentary',        { 'on': '<Plug>Commentary' }
Plug 'mbbill/undotree',             { 'on': 'UndotreeToggle'   }
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'rhysd/vim-grammarous'
Plug 'junegunn/vim-online-thesaurus'
Plug 'tpope/vim-tbone'
Plug 'Yggdroot/indentLine', { 'on': 'IndentLinesEnable' }
autocmd! User indentLine doautocmd indentLine Syntax

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
augroup nerd_loader
    autocmd!
    autocmd VimEnter * silent! autocmd! FileExplorer
    autocmd BufEnter,BufNew *
                \  if isdirectory(expand('<amatch>'))
                \|   call plug#load('nerdtree')
                \|   execute 'autocmd! nerd_loader'
                \| endif
augroup END

Plug 'vim-ruby/vim-ruby'
Plug 'kovisoft/paredit',    { 'for': 'clojure' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'guns/vim-clojure-static'
Plug 'guns/vim-clojure-highlight'
Plug 'guns/vim-slamhound'

Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'groenewege/vim-less'
Plug 'pangloss/vim-javascript'
Plug 'kchmck/vim-coffee-script'
Plug 'slim-template/vim-slim'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-rails',      { 'for': []      }
Plug 'ensime/ensime-vim',    { 'for': 'scala' } " sbt/ensimeConfig
Plug 'honza/dockerfile.vim'
Plug 'solarnz/thrift.vim'
Plug 'dag/vim-fish'
Plug 'chrisbra/unicode.vim', { 'for': 'journal' }


Plug 'phpvim/phpcd.vim', { 'for': 'php' , 'do': 'composer update' }
Plug 'phpvim/phpfold.vim', { 'for': 'php', 'do':'composer update' }

call plug#end()

let g:fzf_history_dir = '~/.local/share/fzf-history'

"--------
" Vim user interface
"--------
" color scheme
set background=dark

" For showmarks plugin
"hi ShowMarksHLl ctermbg=Yellow   ctermfg=Black  guibg=#FFDB72    guifg=Black
"hi ShowMarksHLu ctermbg=Magenta  ctermfg=Black  guibg=#FFB3FF    guifg=Black

" highlight current line
"au WinLeave * set nocursorline nocursorcolumn
"au WinEnter * set cursorline cursorcolumn
"set cursorline cursorcolumn


" search
set incsearch
set ignorecase
set smartcase

" editor settings
set history=5000
set nocompatible
set nofoldenable                                                  " disable folding"
set confirm                                                       " prompt when existing from an unsaved file
set backspace=indent,eol,start                                    " More powerful backspacing
set t_Co=256                                                      " Explicitly tell vim that the terminal has 256 colors "
set mouse=a                                                       " use mouse in all modes
set report=0                                                      " always report number of lines changed                "
set nowrap                                                        " dont wrap lines
set scrolloff=5                                                   " 5 lines above/below cursor when scrolling
set number                                                        " show line numbers
set showmatch                                                     " show matching bracket (briefly jump)
set showcmd                                                       " show typed command in status bar
set title                                                         " show file in titlebar
set laststatus=2                                                  " use 2 lines for the status bar
set matchtime=2                                                   " show matching bracket for 0.2 seconds
set matchpairs+=<:>                                               " specially for html
set clipboard=unnamed                                             " yank and paste with the system clipboard
set hidden

" Default Indentation
set autoindent
set smartindent     " indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace
set shiftwidth=4    " indent width
set expandtab       " expand tab to space


autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType sass,scss,css setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml,tpl setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0

" syntax support
"autocmd Syntax javascript set syntax=jquery   " JQuery syntax support

"tpl support
au BufNewFile,BufRead *.tpl set ft=html
"au FileType javascript call JavaScriptFold()
" js
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" highlight tabs and trailing spaces
set list
set listchars=tab:>-,trail:-,extends:>,precedes:<

"-----------------
" Plugin settings
"-----------------
"
"IndentGuides
let g:indent_guides_enable_on_vim_startup = 1

"syntastic
"let g:syntastic_check_on_open=1
let g:syntastic_javascript_checkers=['jshint']

" Rainbow parentheses for Lisp and variants
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
autocmd Syntax lisp,scheme,clojure,racket RainbowParenthesesToggle

"dash
:nmap <silent> <leader>z <Plug>DashSearch

"ctags
set tags=tags;
set autochdir

"MRU plugin
let MRU_Max_Entries = 400
map <leader>x :MRU<CR>

"tabbar
"let g:Tb_MaxSize = 2
"let g:Tb_TabWrap = 1
"
"hi Tb_Normal guifg=white ctermfg=white
"hi Tb_Changed guifg=green ctermfg=green
"hi Tb_VisibleNormal ctermbg=252 ctermfg=235
"hi Tb_VisibleChanged guifg=green ctermbg=252 ctermfg=white

" showmarks setting
" Enable ShowMarks
"let showmarks_enable = 1
" Show which marks
"let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
" Ignore help, quickfix, non-modifiable buffers
"let showmarks_ignore_type = "hqm"
" Hilight lower & upper marks
"let showmarks_hlline_lower = 1
"let showmarks_hlline_upper = 1
"nmap <F10> :MarksBrowser<cr>

"yankring
nnoremap <leader>q :YRShow<CR>
let g:yankring_replace_n_pkey = 'π'
let g:yankring_replace_n_nkey = '˜'
let g:yankring_history_dir = '~/.vim/temp_dirs/'


" Tagbar
let g:tagbar_right=1
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1
" tag for coffee
if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }

  let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'sort' : 0,
    \ 'kinds' : [
        \ 'h:sections'
    \ ]
    \ }
endif

" Nerd Tree
let NERDChristmasTree=1
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
" let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "left"


"gitgutter
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

" ZenCoding
let g:user_zen_expandabbr_key='<C-j>'

" powerline
let g:Powerline_symbols = 'fancy'
set laststatus=2 " Always display the statusline in all windows
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

"zenroom goyo
nnoremap <silent> <leader>d :Goyo<cr>
let g:goyo_margin_top=1
let g:goyo_margin_bottom=1


"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

" Define keyword.



" SuperTab
let g:SuperTabDefaultCompletionType = '<C-X><C-O>'
let g:SuperTabRetainCompletionType=2


"auto session let g:session_autoload = 'yes'
" auto load session
let g:session_autoload = 'yes'
let g:session_autosave = 'yes'

"js format
autocmd FileType javascript noremap <buffer>  <c-s> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-s> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-s> :call CSSBeautify()<cr>


" ctrlp
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" other keybindings for plugin toggle
nmap <F5> :TagbarToggle<cr>
nmap <F6> :NERDTreeToggle<cr>
nmap <F3> :GundoToggle<cr>
nmap <F4> :IndentGuidesToggle<cr>
map <F7> :Gist
"nmap  <D-/> :
nnoremap <leader>a :CtrlSF
nnoremap <leader>v V`]
nnoremap <leader>i :FixWhitespace<cr>
nnoremap <leader>r :Unite register<cr>


"------------------
" Useful Functions
"------------------

" Turn persistent undo on
"    means that you can undo even when you close a buffer/VIM
try
    set undodir=~/.vim/temp_dirs/undodir
    set undofile
catch
endtry

" paste without replace
xnoremap p pgvy

if has("mac") || has("macunix")
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==

inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi

vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv
endif


"Switch CWD to the directory of the open buffer:
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

"for long line move
map j gj
map k gk

"Open vimgrep and put the cursor in the right position:
map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>

"Vimgreps in the current file:
map <leader><space> :vimgrep // <C-R>%<C-A><right><right><right><right><right><right><right><right><right>

"Toggle paste mode on and off:
map <leader>pp :setlocal paste!<cr>

"use ag instead of ack, should install the_silver_searcher
let g:ackprg = 'ag --nogroup --nocolor --column'


"When you press gv you vimgrep after the selected text:
vnoremap <silent> gv :call VisualSelection('gv', '')<CR>

function! s:VSetSearch(cmdtype)
  let temp = @s
  norm! gv"sy
  let @/ = '\V' . substitute(escape(@s, a:cmdtype.'\'), '\n', '\\n', 'g')
  let @s = temp
endfunction

"Visual mode pressing * or # searches for the current selection:
xnoremap * :<C-u>call <SID>VSetSearch('/')<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call <SID>VSetSearch('?')<CR>?<C-R>=@/<CR><CR>


function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.' . a:extra_filter)
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

" w!! to sudo & write a file
cmap w!! w !sudo tee >/dev/null %

:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa

"--------
"for macvim
"--------
if has("gui_running")
    set go=aAce  " remove toolbar
    "set transparency=30
    set guifont=Source\ Code\ Pro\ for\ Powerline:h13
    set showtabline=2 " always show tabs in gvim, but not vim
    set columns=140
    set lines=40
    map <D-1> 1gt
    map <D-2> 2gt
    map <D-3> 3gt
    map <D-4> 4gt
    map <D-5> 5gt
    map <D-6> 6gt
    map <D-7> 7gt
    map <D-8> 8gt
    map <D-9> 9gt
    map <D-0> :tablast<CR>
endif

map tt :NERDTreeToggle<CR>
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <C-n> :tabnew<CR>
map <C-S-a> :qall<CR>
map <C-s-a> :wqall<CR>

map pp :GFiles<CR>
map po :History<CR>
map pa :Files<CR>
map gc :Commits<CR>
map gcf :BCommits<CR>

map kk <C-]>
map jj <C-t>
map <C-j> <C-]>
map <C-k> <C-t>
imap <C-j> <ESC><C-]>
imap <C-k> <ESC><C-t>

map s zm
map ss zc
map sss /unction<space>

nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})





let mapleader      = ' '
let maplocalleader = ' '

augroup vimrc
    autocmd!
augroup END

set nu
set autoindent
set smartindent
set lazyredraw
set laststatus=2
set showcmd
set visualbell
set backspace=indent,eol,start
set timeoutlen=500
set whichwrap=b,s
set shortmess=aIT
set hlsearch " CTRL-L / CTRL-R W
set incsearch
set hidden
set ignorecase smartcase
set wildmenu
set wildmode=full
set tabstop=2
set shiftwidth=2
set expandtab smarttab
set scrolloff=5
set encoding=utf-8
set list
set listchars=tab:\|\ ,
set virtualedit=block
set nojoinspaces
set diffopt=filler,vertical
set autoread
set clipboard=unnamed
set foldlevelstart=99
set grepformat=%f:%l:%c:%m,%f:%l:%m
set completeopt=menuone,preview
set nocursorline
set nrformats=hex
silent! set cryptmethod=blowfish2

set formatoptions+=1
if has('patch-7.3.541')
    set formatoptions+=j
endif
if has('patch-7.4.338')
    let &showbreak = '↳ '
    set breakindent
    set breakindentopt=sbr
endif

if has('termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif


nmap ff F
nmap uu <C-r>

imap ii <ESC>
imap aa <ESC>
imap oo <ESC>
imap <tab><tab> <C-x><C-o>

set pastetoggle=<F9>
set modelines=2
set synmaxcol=1000
set tags=./tags;/

inoremap <C-s>     <C-O>:update<cr>
nnoremap <C-s>     :update<cr>
nnoremap <leader>s :update<cr>
nnoremap <leader>w :update<cr>


let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

let g:vim_markdown_frontmatter=1
