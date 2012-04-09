""
"" Vundle
""
set nocompatible  " be iMproved
filetype off

" Start Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle, required
Bundle 'gmarik/vundle'


""
"" Plugin Bundles
""

" Navigation
"Bundle 'kien/ctrlp.vim'
" UI
Bundle 'scrooloose/nerdtree'
Bundle 'altercation/vim-colors-solarized'
" Automatic Helpers
"Bundle 'scrooloose/syntastic'
"Bundle 'garbas/vim-snipmate'
"Bundle 'tomtom/tlib_vim'
"Bundle 'MarcWeber/vim-addon-mw-utils'
"Bundle 'honza/snipmate-snippets'
" Ruby
"Bundle 'vim-ruby/vim-ruby'
"Bundle 'tpope/vim-endwise'
" Rails
"Bundle 'tpope/vim-rails'
" JavaScript
"Bundle 'pangloss/vim-javascript'
" CoffeeScript
"Bundle 'kchmck/vim-coffee-script'
" SCSS
"Bundle 'cakebaker/scss-syntax.vim'
" RSPEC
"Bundle 'skwp/vim-rspec'
" Cucumber
"Bundle 'tpope/vim-cucumber'
" Haml
"Bundle 'tpope/vim-haml'

filetype plugin indent on " Turn on filetype plugins (:help filetype-plugin)


""
"" Color
""
set background=dark
colorscheme solarized


""
"" UI
""
set number  " Show line numbers
set ruler  " Show line and column number
set showmode  " Show the mode
set showcmd  " Keyboard input state
set cursorline  " Highlight cursor line


""
"" Behaviors
""
set ttyfast
syntax enable
set encoding=utf-8  "Set default encoding to UTF-8


""
"" Whitespace
""

set nowrap  " don't wrap lines
set tabstop=2  " a tab is two spaces
set shiftwidth=2  " an autoindent (with <<) is two spaces
set expandtab  " use spaces, not tabs
set list  " Show invisible characters
set backspace=indent,eol,start  " Backspace through everything in insert mode

" List chars
set listchars=""  " Reset the listchars
set listchars=tab:\ \  " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.  " show trailing spaces as dots
set listchars+=extends:>  " The character to show in the last column when wrap is
                          " off and the line continues beyond the right of the screen
set listchars+=precedes:<  " The character to show in the last column when wrap is
                           " off and the line continues beyond the right of the screen


""
"" Searching
""
set hlsearch  " Highlight matches
set incsearch  " Incremental searching
set ignorecase  " Searches are case insensitive...
set smartcase  " ... unless they contain at least one capital letter


""
"" Visual
""
set showmatch  " Show matching brackets.
set matchtime=2  " How many tenths of a second to blink


""
"" Sounds
""
set noerrorbells
set novisualbell
set t_vb=


""
"" Wild settings
""
" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*


""
"" Backup and swap files
""
set backupdir=~/.vim/_backup//    " where to put backup files.
set directory=~/.vim/_temp//      " where to put swap files.


""
"" File types
""

" Some file types should wrap their text
function! s:setupWrapping()
  set wrap
  set linebreak
  set textwidth=72
  set nolist
endfunction

if has("autocmd")
  " In Makefiles, use real tabs, not tabs expanded to spaces
  au FileType make set noexpandtab

  " Make sure all mardown files have the correct filetype set and setup wrapping
  au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} setf markdown | call s:setupWrapping()

  " Treat JSON files like JavaScript
  au BufNewFile,BufRead *.json set ft=javascript

  " make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
  au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79

  " Remember last location in file, but not for commit messages.
  " see :help last-position-jump
  au BufReadPost * if &filetype !~ '^git\c' && line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g`\"" | endif
endif


""
"" Key Bindings
""

let mapleader = ","  " This line MUST come before any <leader> mappings

" Toggle paste mode
nmap <silent> <F4> :set invpaste<CR>:set paste?<CR>
imap <silent> <F4> <ESC>:set invpaste<CR>:set paste?<CR>

" Toggle hlsearch with <leader>hs
nmap <leader>hs :set hlsearch! hlsearch?<CR>


""
"" Plugin Configuration
""

" Vundle
nmap <Leader>bi :BundleInstall<CR>
nmap <Leader>bu :BundleInstall!<CR>  " Because this also updates
nmap <Leader>bc :BundleClean<CR>

" ctrlp
let g:ctrlp_custom_ignore = {
   \ 'dir':  '\.git$\|\.hg$\|\.svn$',
   \ 'file': '\.pyc$\|\.pyo$\|\.rbc$|\.rbo$\|\.class$\|\.o$\|\~$\',
   \ }

" NERDtree
nmap <Leader>n :NERDTreeToggle<CR>


""
"" Credits:
"" github.com/carlhuda/janus
"" github.com/mutewinter/dot_vim
""
