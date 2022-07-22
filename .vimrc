set number
syntax on 
colorscheme ron
set bg=dark
set tabstop=4
set autoindent
set smartindent
set cursorline
set hidden
set noerrorbells
set mouse=a
set ttymouse=xterm2
set anti
set history=1000
set scrolloff=8
set nohlsearch
set incsearch
set ignorecase
set smartcase
set backup
set linebreak " set bex=DESIRED_EXTENSION 
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set signcolumn=yes
set encoding=UTF-8
set spell
set spelllang=en_us

" plugs
if filereadable(expand("~/.vimrc.plug"))
    source ~/.vimrc.plug
endif
