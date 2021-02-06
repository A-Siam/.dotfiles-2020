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
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'kevinoid/vim-jsonc'
Plug 'mg979/vim-visual-multi'
Plug 'romainl/Apprentice'
Plug 'puremourning/vimspector'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

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

" COC
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300

"" ctrl+space to trigger auto completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap keys for applying codeAction to the current buffer.
nmap ca  <Plug>(coc-codeaction)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <F2> <Plug>(coc-rename)

"coc prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" vimspector
let g:vimspector_enable_mappings='HUMAN'

" airline
" let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_theme='minimalist'

" my config
set termguicolors
set term=xterm-256color
colorscheme apprentice

set number 
set rnu
set mouse=


nmap <space><space>b :echo gitbranch#name()<CR>
nmap <space><space>s :wa<CR>
nmap <space><space>g :!lazygit<CR>
nmap <space><c-p> :Buffers<CR>

" map copying and pasting to/from clipboard to something close to my hand
nmap <space><space>c "+y
vmap <space><space>c "+y
nmap <space><space>v "+p
vmap <space><space>v "+p

nmap D <Plug>(fern-action-remove)
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

set hlsearch
set ignorecase
set smartcase
set cursorline

set spell
set noshowmode

nmap tt :set mouse=nv<CR>
