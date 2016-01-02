" get rid of Vi compatibility mode
set nocompatible
let &t_Co=256

"color/theme settings
set background=dark
colorscheme solarized

""""""""""""""" plugins """"""""""""""""

""vundle plugins
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" nerdtree file browser plugin form github
Plugin 'scrooloose/nerdtree'

" airline (status bar) plugin from github
Plugin 'bling/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()

filetype on

"airline settings
let g:airline_theme='solarized'

"set left and right seperator
let g:airline_left_sep = ''
let g:airline_right_sep = '|'

" don't count trailing whitespace since it lags in huge files
let g:airline#extensions#whitespace#enabled = 0

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n'  : 'Nr',
      \ 'i'  : 'In',
      \ 'R'  : 'R',
      \ 'c'  : 'Cm',
      \ 'v'  : 'Vs',
      \ 'V'  : 'Vs',
      \ 's'  : 'S',
      \ 'S'  : 'S',
      \ }

""""""""""""""" basic editing setup """""""""""""

"1. set auto indent
set ai
filetype indent on
filetype plugin indent on
set smarttab

"2. convert tabs to spaces
set tabstop=4
set expandtab
set sts=2 "soft tab stop
" see : http://stackoverflow.com/questions/158968/
"       for file specific indent behaviour (.py, .js, etc)

"3. set indent as two chars (for ai)
set shiftwidth=2

"Example to change 2 spaces to 4
"
"   set ts=2 sts=2 noet
"   retab!
"   This changes every 2 spaces to a TAB character, then:
"
"   set ts=4 sts=4 et
"   retab
"   This changes every TAB to 4 spaces
"(ts=tabstop, sts=softtabstop, [no]et=[no]expandtab, retab! => space to tab)

"4. makes this work like a normal backspace - :help 'backspace'
set backspace=2

"5. show spelling error in markdown files
autocmd BufRead,BufNewFile *.md setlocal spell

"6. search effeciently - highlight as I type, go back and forth, etc
set nohlsearch            " Don't continue to highlight searched phrases.
set incsearch             " But do highlight as you type your search.
"set ignorecase           " Make searches case-insensitive.

"7. handle multiple buffers (without having to save between switch)
set hidden

"""""""""""""""" visual setup """""""""""""

"1. line numbering
set number

"2. set scroll offset
"set so=10

"3. trailing space markers
set list
set listchars=trail:~ "set listchars+=eol:¬

"4. 80 char markers - make it translucent and till end of screen
set colorcolumn=80

"5. set current line highlight
set cursorline

"6. show indentation as dots
set listchars+=tab:>» "TODO - dots for leading spaces spaces

"7. syntax highlight
syntax enable

"8. show indent lines
"TODO - will probably need a plugin for this.
" use this - https://github.com/Yggdroot/indentLine, has leading space support
" as well

"show bottom status line
set ls=2

"9. show git change status in the left gutter space (next to line nos.)
"TODO - will probably need a plugin for this. (probably too heavy)



"XXX. scroll even after EoF - Not possible via mouse

"XXX. open bash bottom of screen? NO - heavy, not required, better to use tmux
"  ^ but can use this plugin https://github.com/jewes/Conque-Shell

""NOTE - add insert mode maps for basic commands such as to delete a line
""       or to move to end of line, etc. binding can start with cmd/ctl.

"proper split screen support
"  navigate b/w splits and tabs
"  shuffle buffer in splits
"  handle buffers effeciently

"file nav
"  nerdTree and ctrlP
"  again manage jumping to nerdTree
map <C-f> :NERDTreeToggle<CR>

"proper navigation (mostly key mappings)
"  scroll page up/down without moving
"  jump to line
"  jump to middle of visual screen
"  etc

"code folding based on indentation
"  need to think of a nice interface for this (like how to I trigger the code
"    folding?)

"TMUX support?

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"This was the basic config - nothing language specific

"Primarily because I want vim to handle light handling - heavy work is best
"  left to fully fledged IDEs, atleast as of now.

"If I ever want to use VIM to handle projects - I can install the following
"  language specific bindings.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"build support if reqd
"open REPL in tab below
"debugger
"linter
"line between every function
"code suggest (show appropriate functions with what params it takes and all)
"code complete (eg. type 'cl' followed by tab, class structure will generate)
"code browser - ctags sort of thing
"refactor support
"go to definition
"git support (language independent)
"api doc generation
"have project concept like eclipse does. 
"  search for function, class throughout the project.
"  list all instance where a function / class have been used


