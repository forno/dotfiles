syntax on
set number
set cursorline
"
"tab view setting
set tabstop=2
set shiftwidth=2
"tab move happen
set softtabstop=2
"tab key function
set expandtab
if expand("%:r") == 'Makefile'
  set noexpandtab
endif
"auto indent
set autoindent
set smartindent
"paste setting
set pastetoggle=<F2>
"clipboard collaboration
set clipboard&
set clipboard^=unnamedplus
"backspace feature
set backspace=indent,eol,start
"ftplugin
filetype plugin on
"c or cpp language
let c_space_errors=1
let c_no_bracket_error=1
let c_curly_error=1
let g:load_doxygen_syntax=1
let doxygen_javadoc_autobrief=0
"fold
set foldmethod=syntax
"git
set updatetime=100
highlight GitGutterAdd ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1
highlight GitGutterChangeDelete ctermfg=4
