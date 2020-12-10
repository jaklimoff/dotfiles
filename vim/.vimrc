" ------------ Main Settings ------------- {{{

let mapleader=","

set t_Co=256
set nocompatible
syntax on
set colorcolumn=120
set nowrap
set list
set expandtab
set shiftwidth=4
set tabstop=4
set showcmd                             " Show (partial) command in the last line of the screen.
set path+=**                            " file finder
set wildmenu
set wildignore+=*/node_modules/*        " ctrlp - ignore node modules

"  }}}

" --------------- Idea VIM --------------- {{{

if has('nvim')

else

set ideajoin
set ideastatusicon=gray

set easymotion
set surround
set multiple-cursors

map fd :action ReformatCode<CR>
map <C-p> <Plug>NextWholeOccurrence
map <leader>r <Action>(RenameElement)
map <leader>z <Action>(ToggleDistractionFreeMode)

endif

"  }}}

" 🛠  Plugins Installed ---- {{{
" A minimalist Vim plugin manager.
" https://github.com/junegunn/vim-plug

call plug#begin()
    " Lean & mean status/tabline for vim that's light as air
    " https://github.com/vim-airline/vim-airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Use release branch (Recommend)
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Comment staff out
    " https://github.com/tpope/vim-commentary
    Plug 'tpope/vim-commentary'

    " Quoting/parenthesizing made simple
    " https://github.com/tpope/vim-surround
    Plug 'tpope/vim-surround'

    " Multiple cursors
    " https://github.com/mg979/vim-visual-multi
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}

    " Insert or delete brackets, parens, quotes in pair.
    " https://github.com/jiangmiao/auto-pairs
    Plug 'jiangmiao/auto-pairs'

    " Material color scheme for Vim based on w0ng/vim-hybrid color scheme
    " https://github.com/kristijanhusak/vim-hybrid-material
"   Plug 'kristijanhusak/vim-hybrid-material'
    
    " A dark colorscheme for space-vim
    " https://github.com/liuchengxu/space-vim-dark/
"   Plug 'liuchengxu/space-vim-dark'

    " Adds file type icons to Vim plugins such as: NERDTree, 
    " vim-airline, CtrlP, unite, Denite, lightline, vim-startify and many more
    " https://github.com/ryanoasis/vim-devicons
    Plug 'ryanoasis/vim-devicons'

    " Fzf is a general-purpose command-line fuzzy finder
    " https://github.com/junegunn/fzf
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

    " Things you can do with fzf and Vim.
    " https://github.com/junegunn/fzf.vim
    Plug 'junegunn/fzf.vim'

    " Provides support for expanding abbreviations similar to emmet
    " https://github.com/mattn/emmet-vim
    Plug 'mattn/emmet-vim'

    " A Vim wrapper for running tests on different granularities.
    "   https://github.com/vim-test/vim-test
    Plug 'vim-test/vim-test'

    " Black is the uncompromising Python code formatter.
    " https://github.com/psf/black
    Plug 'psf/black', { 'tag': '*' }

    " Vim syntax for TOML.
    " https://github.com/cespare/vim-toml
    Plug 'cespare/vim-toml'

    " A vim plugin wrapper for prettier, pre-configured with custom default prettier settings.
    " https://github.com/prettier/vim-prettier
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

    " Class/module browser
    Plug 'majutsushi/tagbar'

  "Vim syntax for helm templates (yaml + gotmpl + sprig + custom)
  " https://github.com/towolf/vim-helm
    Plug 'towolf/vim-helm'

  "  " Insert or delete brackets, parens, quotes in pair.
    " https://github.com/jiangmiao/auto-pairs
    Plug 'jiangmiao/auto-pairs'

    " Material color scheme for Vim based on w0ng/vim-hybrid color scheme
    " https://github.com/kristijanhusak/vim-hybrid-material
"   Plug 'kristijanhusak/vim-hybrid-material'

    " A dark colorscheme for space-vim
    " https://github.com/liuchengxu/space-vim-dark/
"   Plug 'liuchengxu/space-vim-dark'

    " Adds file type icons to Vim plugins such as: NERDTree, 
    " vim-airline, CtrlP, unite, Denite, lightline, vim-startify and many more
    " https://github.com/ryanoasis/vim-devicons
    Plug 'ryanoasis/vim-devicons'

    " Fzf is a general-purpose command-line fuzzy finder
    " https://github.com/junegunn/fzf
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

    " Things you can do with fzf and Vim.
    " https://github.com/junegunn/fzf.vim
    Plug 'junegunn/fzf.vim'

    " Provides support for expanding abbreviations similar to emmet
    " https://github.com/mattn/emmet-vim
    Plug 'mattn/emmet-vim'

    " A Vim wrapper for running tests on different granularities.
    "   https://github.com/vim-test/vim-test
    Plug 'vim-test/vim-test'

    " Black is the uncompromising Python code formatter.
    " https://github.com/psf/black
    Plug 'psf/black', { 'tag': '*' }

    " Vim syntax for TOML.
    " https://github.com/cespare/vim-toml
    Plug 'cespare/vim-toml'

    " A vim plugin wrapper for prettier, pre-configured with custom default prettier settings.
    " https://github.com/prettier/vim-prettier
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

    " Class/module browser
    Plug 'majutsushi/tagbar'

    " Vim motions on speed! 
    " https://github.com/easymotion/vim-easymotion
    Plug 'easymotion/vim-easymotion'

    " Automatic table creator & formatter allowing 
    " one to create neat tables as you type
    " https://github.com/dhruvasagar/vim-table-mode
    Plug 'dhruvasagar/vim-table-mode'

    "Multi-syntax context-sensitive color name highlighter
    "https://vimawesome.com/plugin/vim-css-color-the-story-of-us
    Plug 'ap/vim-css-color'

    " Fugitive is the premier Vim plugin for Git. 
    " Or maybe it's the premier Git plugin for Vim? Either way, 
    " it's 'so awesome, it should be illegal'. That's why it's 
    " called Fugitive.
    " https://github.com/tpope/vim-fugitive
    Plug 'tpope/vim-fugitive'
call plug#end()


" ---- }}}

" ---------- Secondary Settings ---------- {{{

" Dark
set background=dark
set encoding=UTF-8
" colorscheme hybrid_material
let g:space_vim_dark_background = 234

" colorscheme space-vim-dark
hi PMenu                 ctermfg=189    ctermbg=234
hi Comment               ctermfg=59    cterm=italic
hi Normal ctermbg=none
hi NonText ctermbg=none ctermfg=none

hi LineNr                ctermfg=94                   cterm=none
hi VertSplit             ctermfg=236   ctermbg=none   cterm=none
hi pythonClass           ctermfg=214                  cterm=none
hi ColorColumn           ctermfg=240   ctermbg=236    cterm=none

hi Folded                ctermbg=233   ctermfg=100

hi String                ctermfg=71                   cterm=none
hi Statement             ctermfg=108                   cterm=none
hi semshiLocal           ctermfg=209
hi semshiGlobal          ctermfg=214
hi semshiImported        ctermfg=229
hi semshiParameter       ctermfg=75
hi semshiParameterUnused ctermfg=117
hi semshiFree            ctermfg=218
hi semshiBuiltin         ctermfg=207
hi semshiAttribute       ctermfg=49
hi semshiSelf            ctermfg=206                  cterm=none
hi semshiUnresolved      ctermfg=226
hi semshiSelected        ctermfg=201   ctermfg=none   cterm=underline

hi semshiErrorSign       ctermfg=231
hi semshiErrorChar       ctermfg=231
sign define semshiError text=E> texthl=semshiErrorSign


" Pymode settings
let g:pymode = 1
" Turn on the rope script
let g:pymode_rope = 1

" Table Mode
let g:table_mode_corner='|'

" status line settings ------- {{{
function! s:gitbranch()
  return system("git rev-parse --abbrev-ref head 2>/dev/null | tr -d '\n'")
endfunction

let g:airline_theme='hybrid'

function! Statuslinegit()
  let l:branchname = s:gitbranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set laststatus=2
set statusline=
set statusline+=%<\                       " cut at start
set statusline+=%2*[%n%h%m%r%w]%*\        " flags and buf no
set statusline+=%2*%{Statuslinegit()}%*\        " git branch
set statusline+=\ %-40f\                    " path
set statusline+=%=%1*%y%*%*\              " file type
set statusline+=%10((%l,%c)%)\            " line and column
set statusline+=%p                        " percentage of file
" }}}

"  }}}

" ------------ AUTO COMMANDS ------------- {{{

autocmd BufWinEnter * silent! :%foldopen!

" html,css,jinja,mak file settings ---------------------- {{{
" Autogroup for HTML files and css
" Including .jinja fileds
augroup html_files
  au!
    au filetype html,xhtml,xml,css setlocal expandtab shiftwidth=2 tabstop=2
    au bufread,bufnewfile *.css,*.scss,*.less setlocal foldmethod=marker foldmarker={,}
    au bufnewfile,bufread *.mako,*.mak,*.jinja2 setlocal ft=html
augroup end
" }}}

" zshrc file settings ---------------------- {{{
" Autogroup for zshrc
augroup zshrc_files
  au!
  au filetype zsh setlocal foldmethod=marker foldmarker={{{,}}}
  au filetype zsh setlocal tabstop=2 shiftwidth=2 expandtab
  au BufWinEnter .vimrc silent! :%foldclose!
augroup end
" }}}

augroup javascript_files
  au!
  au filetype javascript,javascript.jsx setlocal foldmethod=syntax shiftwidth=2
augroup end

augroup md_files
  au!
  au filetype markdown setlocal foldmethod=syntax shiftwidth=2 spell spelllang=en_us,ru_ru
  au filetype markdown setlocal wrap linebreak textwidth=0 wrapmargin=0
augroup end

" yaml file settings ---------------------- {{{
augroup filetype_yaml
  au!
  " add yaml stuffs
  au bufnewfile,bufreadpost *.{yaml,yml} set filetype=yaml foldmethod=indent
  au filetype yaml setlocal ts=2 sts=2 sw=2 expandtab
augroup end
" }}}

" vimscript file settings ---------------------- {{{
augroup filetype_vim
  au!
  au bufnewfile,bufread .vimrc setlocal ft=vim
  au filetype vim setlocal foldmethod=marker
  au filetype vim set sw=2 ts=2
augroup end
" }}}


" python file settings ---------------------- {{{
augroup filetype_python
  au!
  au filetype python set omnifunc=pythoncomplete#complete
  au filetype python setlocal expandtab shiftwidth=4 tabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with
  au filetype python set foldmethod=indent foldlevel=99
  au bufread *.py set efm=%c\ %.%#,%a\ \ file\ \"%f\"\\,\ line\ %l%.%#,%z%[%^\ ]%\\@=%m
  au filetype python nnoremap fd :Black<cr>
  au filetype python hi pythonself  ctermfg=68  guifg=#5f87d7 cterm=bold gui=bold
augroup end
" }}}


" add relative numbers and switch them in insert mode
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd bufenter,focusgained,insertleave * set relativenumber
  autocmd bufleave,focuslost,insertenter   * set norelativenumber
augroup end

" }}}

" --------- NORMAL MODE MAPPINGS --------- {{{

" Quickly edit vimrc
nnoremap <leader>ev :vsplit ~/.vimrc<cr>
nnoremap <leader>sv :w<cr>:source $MYVIMRC<cr>

" Move line down
noremap - ddp
" Move line up
noremap _ ddkkp

" Fast up / right / left / down
noremap <c-j> 5j
noremap <c-k> 5k
noremap <c-h> ^
noremap <c-l> g_

" Test Runner
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

" Switch fold
" nnoremap <space> za
" make space more useful
nnoremap <silent> <space> @=(foldlevel('.')?'zo':'zc')<cr>

" New Empty Vertical Split
nnoremap <leader>vs :vnew<cr>

" execute file being edited 
nnoremap <leader>ee :w !zsh<cr>


let g:coc_config_home = expand('<sfile>:h')
let g:coc_explorer_global_presets = {
\   '.vim': {
\      'root-uri': '~/.vim',
\   },
\   'floating': {
\      'position': 'floating',
\   },
\   'floatingLeftside': {
\      'position': 'floating',
\      'floating-position': 'left-center',
\      'floating-width': 50,
\   },
\   'floatingRightside': {
\      'position': 'floating',
\      'floating-position': 'right-center',
\      'floating-width': 50,
\   },
\   'simplify': {
\     'file.child.template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }
nnoremap <leader>ce :CocCommand explorer --preset floatingRightside<CR>
hi CocExplorerNormalFloat guibg=#272B34

nmap <leader>do <Plug>(coc-codeaction)

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" --------- Fuzzy Finder Mapping --------- {{{
 
" Search Lines in loaded buffers
nnoremap <leader>fl :Lines<CR>
" Search Commands
nnoremap <leader>fc :Commands<CR>
" Search Git commits
nnoremap <leader>fg :Commits<CR>
" Search Files
nnoremap <leader>ff :Files<CR>
" Search and Set File Types
nnoremap <leader>ft :Filetypes<CR>

" }}}

" }}}

" --------- INSERT MODE MAPPINGS ---------- {{{

" Exit Insert Mode
inoremap jk <esc>
" Make Uppercase
inoremap <c-u> <esc>viwUi

" }}}

" --------- VISUAL MODE MAPPINGS ---------- {{{
vnoremap y "*y

" Execute selection in Neoterm 
vnoremap <c-r> :TREPLSendSelection<CR>

" Make header out of selection
vnoremap <leader>h !/Users/jaklimoff/bin/commands/header<CR>

" [C]onvert [S]nake to [C]amel
vnoremap <leader>csc !/Users/jaklimoff/bin/convertvar -sc<CR>

" [C]onvert [C]amel to [S]nake 
vnoremap <leader>ccs !/Users/jaklimoff/bin/convertvar -cs<CR>

" }}}

" ------ OPERATOR-PENDING MAPPINGS ------- {{{
" An operator is a command that waits for you to enter 
" a movement command, and then does something on the 
" text between where you currently are and where the 
" movement would take you. 

" Delete inside parentheses
onoremap p i(
" Delete inside next parentheses
onoremap in( :<c-u>normal! f(vi(<cr>
" Delete inside last parentheses
onoremap il( :<c-u>normal! F)vi(<cr>
" Find / Delete the heading of whatever section you're in 
" and put you in insert mode. (Markdown Heading with ==== )
onoremap ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>

" }}}

" ------ MORE SETTING AND FUNCTIONS ------- {{{
" On Neovim the "basic" and "neovim" strategies will run test 
" commands using Neovim's terminal, and leave you in insert mode, 
" so that you can just press "Enter" to close the terminal session 
" and go back to editing. If you want to scroll through the test 
" command output, you'll have to first switch to normal mode. The 
" built-in mapping for exiting terminal insert mode is CTRL-\ CTRL-n, 
" which is difficult to press, so I recommend mapping it to CTRL-o:
if has('nvim')
  tmap <C-o> <C-\><C-n>
endif

" Vim has a feature called ''abbreviations' that feel similar 
" to mappings but are meant for use in insert, replace, 
" and command modes. They're extremely flexible and powerful.
iabbrev @@ jaklimoff@gmail.com

" }}}
