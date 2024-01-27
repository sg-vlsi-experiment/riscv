set secure nocompatible
if version >= 600
  syntax enable

  if version >= 700
    filetype plugin indent on
  else
    filetype on
    filetype plugin on
    filetype indent on
  endif
else
  :finish
endif

set autoindent
set ruler
set showcmd
set showmatch
set showmode

set backspace=indent,eol,start
set formatoptions=croq
set numberwidth=4
set number
set shiftwidth=2
set smartindent
set tabstop=4
set expandtab
set ignorecase    
set diffopt+=iwhite


set encoding=utf-8 fileencodings=

set nobackup
set writebackup
set nowrap
set hlsearch

set cursorline

highlight Constant  NONE
highlight Delimiter NONE
highlight Directory   NONE
highlight Error   NONE
highlight ErrorMsg  NONE
highlight Identifier  NONE
highlight LineNr    NONE
highlight ModeMsg   NONE
highlight MoreMsg   NONE
highlight NonText   NONE
highlight Normal    NONE
highlight PreProc   NONE
highlight Question  NONE
highlight Search    NONE
highlight Special   NONE
highlight SpecialKey  NONE
highlight Statement NONE
highlight StatusLine  NONE
highlight Title   NONE
highlight Todo      NONE
highlight Type      NONE
highlight Visual    NONE
highlight WarningMsg  NONE

highlight Comment   term=bold ctermfg=5 ctermbg=0 guifg=#FF005F guibg=gray
highlight Constant  term=underline ctermfg=6 guifg=#FF2F8F
highlight Delimiter   term=bold cterm=bold ctermfg=1 gui=bold guifg=red
highlight Directory term=bold ctermfg=DarkBlue guifg=Blue
highlight Error   term=standout cterm=bold ctermbg=1 ctermfg=1 gui=bold guifg=red
highlight ErrorMsg  term=standout cterm=bold ctermfg=1 gui=bold guifg=red
highlight Identifier  term=underline ctermfg=3 guifg=Yellow3
highlight LineNr    term=underline cterm=bold ctermfg=3 guifg=Brown guibg=darkgreen
highlight ModeMsg   term=bold cterm=bold ctermfg=3 ctermbg=1 guifg=yellow2 guibg=red
highlight MoreMsg   term=bold cterm=bold ctermfg=2 gui=bold guifg=green
highlight NonText   term=bold ctermfg=2 guifg=green3
highlight Normal    ctermfg=white ctermbg=black guifg=grey90 guibg=#000020
highlight PreProc   term=underline ctermfg=14 guifg=cyan
highlight Question  term=standout cterm=bold ctermfg=2 gui=bold guifg=Green
highlight Search    term=reverse ctermbg=2 guibg=Yellow
highlight Special   term=bold ctermfg=5 guifg=SlateBlue
highlight SpecialKey  term=bold ctermfg=DarkBlue guifg=Blue
colorscheme desert

set statusline=%<\ %{mode()}\ \|\ %F%=\ %{&fileformat}\ \|\ %{&fileencoding}\ \|\ %{&filetype}\ \|\ %p%%\ \|\ LN\ %l:%c\  

