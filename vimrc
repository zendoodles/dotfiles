" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
 au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
 \| exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
filetype plugin indent on


" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes) in terminals

" Source a global configuration file if available
" XXX Deprecated, please move your changes here in /etc/vim/vimrc
"if filereadable("/etc/vim/vimrc.local")
"  source /etc/vim/vimrc.local
"endif

" Drupal friendly coding... 
set expandtab
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent

" Use php for .module and .install files
augroup filetypedetect
	au! BufRead,BufNewFile *.install    setfiletype php
	au! BufRead,BufNewFile *.profile    setfiletype php
	au! BufRead,BufNewFile *.module	    setfiletype php
augroup END


" Some Options I like
set number              " Display Line numbers
"set nowrap "Could this be causing the terminal issues where it will not
            "scroll anymore at the bottom of the window after running vim?

set whichwrap=<,>,[,]   " Cursor moves to the next/prev using arrow keys at eol
colorscheme koehler     " Purdy colors.

" php syntax highlighting options. 
let php_sql_query = 1
let php_htmlInStrings = 1
let php_parent_error_close = 1
let php_parent_error_open = 1
"let php_folding = 1
