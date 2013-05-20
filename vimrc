" Appearance
" ----------
colorscheme default
let html_no_rendering=1 " Get rid of pink underline between <a> tags
"set cursorline " Underline current row.
set lazyredraw " Don't update while in macro.
set number " Line numbers.
set ruler " Shows cursor position on statusbar.
set showcmd " Show commands at bottom right.
set showmatch " Show matching braces, brackets, etc.
set mat=5 "blink matching braces, etc.
set title " Show file location in titlebar.
set ttyfast " Improves redrawing.
"set vb " Visual bell.

" Search/Replace
" --------------
syntax on " Color syntax highlighting.
set hlsearch " Highlight searches.
set incsearch " Show search matches while typing.
set ignorecase " Case-insensitive searches unless search contains uppercase chars.
set smartcase " -> ignorecase
set enc=utf-8 " UTF-8 default encoding.

" General
" -------
" set paste " Paste into vim with the extra indents
set nocompatible " Vim mode instead of Vi
""" Highlight text past character 79
"set textwidth=79 " Highlight characters past position 80
"autocmd BufWinEnter * call matchadd('ErrorMsg', '\%>'.&l:textwidth.'v.\+', -1) " -> textwidth
"""
set viminfo='1000,<1000,s10,h " -> Increase clipboard size to 1000 characters.

" Mouse
" -----
set mouse=a

" Spelling
" --------
ab elfi     elif
ab eslf     self
ab fucntion function
ab funciton function
ab funtion  function
ab htis     this
ab retunr   return
ab reutrn   return
ab sefl     self
ab teh      the
ab tihs     this

" typing
" ------
"filetype plugin on " Filetype based indenting
filetype indent on
""" Skip over closing braces.
"inoremap        (  ()<Left>
"inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
"""
set autoindent
"set cindent
set backspace=indent,eol,start " Backspace normally.
set expandtab
set shiftwidth=2
set smartindent
set softtabstop=2
set tabstop=2
set list
set listchars=tab:>-,trail:-

" mac copy/paste - used for copying from on window to another
" ---
"set clipboard=unnamed

"syntastic - syntax checker
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

"pathogen
execute pathogen#infect()
