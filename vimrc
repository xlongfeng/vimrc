" https://vimdoc.sourceforge.net/htmldoc/options.html
" vim:shiftwidth=2:tabstop=2:expandtab

" Disable compatibility with vi.
set nocompatible

" Enable type file detection.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Automatically read it again when a file changed outside of Vim
set autoread

" Write the contents of the file, if it has been modified, on each :next , ...
set autowrite

" Enables the reading of .vimrc, .exrc and .gvimrc in the current directory.
set exrc

" Use visual bell instead of beeping
set visualbell

" Show the cursor position all the time
set ruler

" Print the line number in front of each line.
set number

" Use markers to specify folds.
set foldmethod=marker

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Minimal number of screen lines to keep above and below the cursor.
set scrolloff=8

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Stop the highlighting for the 'hlsearch' option.
set nohlsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Set the commands to save in history default number is 20.
set history=100

" Enable command-line completion operates in an enhanced mode.
set wildmenu

" When more than one match, list all matches and complete till longest common string.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*~,*.bin,*.bak,*.o,*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Copy indent from current line when starting a new line.
set autoindent

" Do smart autoindenting when starting a new line.
set smartindent

" Set influences the working of <BS>, <Del>, CTRL-W and CTRL-U in Insert mode.
set backspace=indent,eol,start

" Set which directory to use for the file browser
set browsedir=current

" specify how keyword completion works when CTRL-P or CTRL-N are used.
set complete+=k

" Specifiy strings to use in 'list' mode
set listchars=tab:>.,eol:\$

" Autocomplete parenthesis, brackets and braces in visual
vnoremap ( s()<Esc>P<Right>%
vnoremap [ s[]<Esc>P<Right>%
vnoremap { s{}<Esc>P<Right>%

" Autocomplete quotes in visual and select mode
xnoremap ' s''<Esc>P<Right>
xnoremap " s""<Esc>P<Right>
xnoremap ` s``<Esc>P<Right>

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
"-------------------------------------------------------------------------------
if has("autocmd")
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
endif " has("autocmd")
