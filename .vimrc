"Starts the Pathogen plugin manager
execute pathogen#infect()

filetype plugin indent on
syntax on
nmap j gj
nmap k gk
set number
nmap \l :setlocal number!<CR>
nmap \o :set paste!<CR>
set incsearch
set smartcase
set hlsearch
nmap \q :nohlsearch<CR>
set wildmenu
set showcmd
set autoindent
set nostartofline
set laststatus=2
set confirm
set visualbell
set mouse=a
set cmdheight=2
set notimeout ttimeout ttimeoutlen=200
set expandtab tabstop=2 shiftwidth=2 softtabstop=2
set wrap
map Y y$
nnoremap <C-L> :nohl<CR><C-L>
nmap <F7> :tabp<CR>
nmap <F8> :tabn<CR>
nmap \t :NERDTreeTabsToggle<CR>
let NERDTreeMapOpenInTab='<CR>'
