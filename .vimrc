call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/vim-gitbranch'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'junegunn/fzf.vim'
Plug 'dag/vim-fish'
Plug 'tpope/vim-surround'
Plug 'ayu-theme/ayu-vim' 
Plug 'jiangmiao/auto-pairs'

call plug#end()

" plugin config
" fern nerd tree renderer
let g:fern#renderer = "nerdfont"

" glyph palette
augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END

" coc prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" my config
set termguicolors
set term=xterm-256color
let ayucolor="dark"   " for dark version of theme
colorscheme ayu
set number 
set rnu
set mouse=nv
nmap <space><space>b :echo gitbranch#name()<CR>
nmap <space><space>w :wa<CR>
nmap <space><space>g :!git-cola<CR>
" nmap D <Plug>(fern-action-remove)
set spell
set nocp
filetype plugin on
nmap <Tab> :Fern . -drawer -toggle<CR>
nmap <c-p> :call fzf#run({'source': 'git ls-files --exclude-standard --others --cached', 'sink': 'edit'})<CR>
" tab size to 2 spaces
set tabstop=2 " set display width of tab; 1 tab = x space with
set autoindent " auto indent; new line with number of space at the beginning same as previous
set shiftwidth=2 " number of space append to lines when type >> 

vmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f :Prettier<CR>
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guifg=#7D7F91

set hlsearch
set ignorecase
set smartcase
