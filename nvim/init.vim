" plugins
call plug#begin('~/.vim/plugged')
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'lambdalisue/fern.vim'
	Plug 'ghifarit53/tokyonight-vim'
  Plug 'lambdalisue/nerdfont.vim'
  Plug 'lambdalisue/fern-renderer-nerdfont.vim'
  Plug 'junegunn/fzf.vim'
  Plug 'easymotion/vim-easymotion'
  Plug 'jiangmiao/auto-pairs'
  Plug 'tpope/vim-surround'
  Plug 'mg979/vim-visual-multi'
  Plug 'mattn/emmet-vim'
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'preservim/nerdcommenter'
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
  Plug 'tranvansang/octave.vim'
  Plug 'Nudin/vim-indentguides'
  Plug 'vim-airline/vim-airline'
  Plug 'dag/vim-fish'
  Plug 'wojciechkepka/vim-github-dark'
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  Plug 'tomasiser/vim-code-dark'
  Plug 'vim-airline/vim-airline-themes'
call plug#end()

"""""""" personal
nnoremap <space>u :bprevious<CR>
nnoremap <space>i   :bnext<CR>
set colorcolumn=80
set number
set rnu
set mouse=a
nmap <C-p> :GFiles<CR>
nmap <C-F> :CocSearch 
nmap <Tab> :Fern . -drawer -toggle<CR>
" nmap <C-P> :FZF<CR>
nmap <c-j> :resize +3<CR>
nmap <c-k> :resize -3<CR>
nmap <c-h> :vertical resize -3<CR>
nmap <c-l> :vertical resize +3<CR>
nmap <space>s :wa<CR>
map <space>p :Prettier<CR>
nmap <space>q :bd<CR>
nmap <space>Q :q!<CR>
nmap <space>n :noh<CR>
nmap <c-LeftMouse> <Plug>(fern-action-open-or-expand)
filetype plugin indent on
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set termguicolors
" let g:tokyonight_style = 'night' " available: night, storm
" let g:tokyonight_enable_italic = 1
let g:gh_color = "soft"
colorscheme ghdark
" colorscheme codedark

autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
" let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
highlight ColorColumn ctermbg=0 guibg=#222222

"""""""" fern 
let g:fern#renderer = "nerdfont"
set cursorline

"""""""" coc
set hidden
set nobackup
set nowritebackup
set updatetime=300

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

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

autocmd CursorHold * silent call CocActionAsync('highlight')

nmap <F2> <Plug>(coc-rename)
" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" tsx
" light-grey
hi tsxTypeBraces guifg=#999999
" dark-grey
hi tsxTypes guifg=#666666

" light-grey
hi tsxTypeBraces guifg=#999999
" dark-grey
hi tsxTypes guifg=#666666

hi ReactState guifg=#C176A7
hi ReactProps guifg=#D19A66
hi ApolloGraphQL guifg=#CB886B
hi Events ctermfg=204 guifg=#56B6C2
hi ReduxKeywords ctermfg=204 guifg=#C678DD
hi ReduxHooksKeywords ctermfg=204 guifg=#C176A7
hi WebBrowser ctermfg=204 guifg=#56B6C2
hi ReactLifeCycleMethods ctermfg=204 guifg=#D19A66

" nerd commenter
filetype plugin on

" vim -indentations
" let g:indentguides_spacechar = '┆'
" let g:indentguides_spacechar = '|'
" let g:indentguides_tabchar = '|'
let g:indentguides_spacechar = '▏'
let g:indentguides_tabchar = '▏'
let g:indentguides_toggleListMode = 0
let g:indentguides_concealcursor_unaltered = 1

" vim airline
let g:airline#extensions#tabline#fnamemod = ':.'
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'molokai'

" git gutter
set updatetime=100
let g:gitgutter_enabled = 1
