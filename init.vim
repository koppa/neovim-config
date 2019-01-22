"disable powerline, because installed in system
let g:powerline_loaded = 1	


"PlugInstall
	"PlugUpdate -> update plugins
	"PlugUpgrae -> Update plug

call plug#begin('~/.vim/plugged')
	Plug 'vim-airline/vim-airline'
	Plug 'scrooloose/nerdtree'
	Plug 'neomake/neomake'
    Plug 'chriskempson/base16-vim'
    Plug 'tpope/vim-fugitive'
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'zchee/deoplete-jedi'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
call plug#end()

set expandtab           " Insert spaces when TAB is pressed.
set tabstop=4           " Render TABs using this many spaces.
set shiftwidth=4        " Indentation amount for < and > commands.

colorscheme default
" default theme for terminal
"
if exists('g:GuiLoaded')
    colorscheme desert
    GuiFont PragmataPro:h11
endif

set colorcolumn=80
hi ColorColumn ctermbg=lightgrey guibg=lightgrey

" save on :make command
set autowrite
set mouse=a

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <silent> <F9> :NERDTreeToggle<CR>

" completition
let g:deoplete#enable_at_startup = 1
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" asynchronous mage on Strg+B
nnoremap <silent> <C-b> :wa<CR> :Neomake<CR>

" real colors
set termguicolors

let $FZF_DEFAULT_COMMAND='ag -g ""'
nnoremap <silent> <C-p> :<C-u>Files <CR>
nnoremap <silent> <C-o> :<C-u>Buffers <CR>
nnoremap <silent> <C-i> :<C-u>Ag <CR>
nnoremap <silent> <char-252> :<C-u>Tags <CR>

if hostname() == "markus-desktop"
    colorscheme base16-ocean
endif
