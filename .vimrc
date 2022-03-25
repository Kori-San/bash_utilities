" You can either source it inside of vim ":source %"
" Or with bash '$ source ~/.vimrc'
" (bash will display errors but don't worry)

" Syntaxic coloration
syntax on

" Colors - Replace with the scheme you want
colorscheme desert
" desert -> Classic Colors with clear separations for syntax
" torte  -> Flat Color + Background Change
" ron    -> Bright Blue / Yellow / Bluish Green

" Enable filetype detection for plugins and indent options
filetype plugin indent on 

" Lenght and wrap - auto indent after 80 char (if possible)
set textwidth=80
set wrap

" Tab Options - 4 Spaces instead of a tab
set shiftwidth=4
set softtabstop=-1
set expandtab
set autoindent

" UI - Line number + EOL Char + trailling spaces = '.'
set number
set listchars=tab:>-,trail:.,eol:¤,precedes:<,extends:>
set list
set colorcolumn=80
