"file $HOME/.vimrc

syntax on
filetype plugin on
filetype indent on

set autoindent
set nosi

" Turn smart indenting on for perl and ruby files
autocmd FileType perl set smartindent
autocmd FileType perl set nowrap
autocmd FileType perl set ts=4
autocmd FileType perl set shiftwidth=4
autocmd FileType perl set shiftround
autocmd FileType perl set expandtab

autocmd FileType ruby set smartindent
autocmd FileType ruby set nowrap
autocmd FileType ruby set ts=2
autocmd FileType ruby set shiftwidth=2 
autocmd FileType ruby set shiftround
autocmd FileType ruby set expandtab

set background=dark
colorscheme desert

set nocompatible  " Use Vim defaults (much better!)
set bs=2    " allow backspacing over everything in insert mode
set history=500    " keep 50 lines of command line history
set ruler   " show the cursor position all the time
set nostartofline " leave my cursor where it was on file reopen
set showmatch " Show matching brackets
set matchtime=5 " Match fo 5 tenths of a second
set softtabstop=2
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set copyindent " Copy indenting conventions from elsewhere in the file?
set preserveindent " Same as above?
set nowrap " Turn line wrapping off
set foldcolumn=0 " Set left margin to 0
set textwidth=80
set showmatch   " Show matching brackets.
set ignorecase " Do case insensitive matching
set smartcase
set incsearch  " Incremental search
set hlsearch   " Highlight search matches.
set backup
set backupdir=~/.vim/backupfiles/ " backup dir
set directory=~/.vim/tmp
set showcmd  " Show (partial) command in status line.
set showmode
set enc=utf-8
set fenc=utf-8
set fencs=iso-2022-jp,sjis,euc-jp,utf-8
set wildmode=list:longest,full
set wildmenu

map <C-G> c_("<C-R>"")<ESC>
map <C-B> c<%= _("<C-R>"") %><ESC>%
:abbr teh the
:abbr rs <%
:abbr rq <%=
:abbr re %>

" LargeFile.vim settings
" don't run syntax and other expensive things on files larger than NUM megs
let g:LargeFile = 20

" Key bindings
map <F3> :set paste! <CR>
map <F3><F3> :set nopaste! <CR>
imap <F3> <C-o>:set paste! <CR>

map <F4> :set nowrap! <CR>
map <F4><F4> :set wrap! <CR>
imap <F4> <C-o>:set nowrap! <CR>

map <F2> :nohlsearch <CR>

map <F6> : !ispell %<CR>: e %<CR>

:map <F7> :setlocal spell! spelllang=en_us<CR>
:imap <F7> <C-o>:setlocal spell! spelllang=en_us<CR>

"When editing a file, make screen display the name of the file you are editing
function! SetTitle()
  if $TERM =~ "^screen"
    let l:title = 'vi: ' . expand('%:t')

    if (l:title != 'vi: __Tag_List__')
      let l:truncTitle = strpart(l:title, 0, 15)
      silent exe '!echo -e -n "\033k' . l:truncTitle . '\033\\"'
    endif
  endif
endfunction

" Set silent (no beep)
set vb t_vb=".
