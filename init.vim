"disable powerline, because installed in system
let g:powerline_loaded = 1	

"PlugInstall
	"PlugUpdate -> update plugins
	"PlugUpgrae -> Update plug

call plug#begin('~/.vim/plugged')
	Plug 'neomake/neomake'
	Plug 'scrooloose/nerdtree'
    Plug 'itchyny/lightline.vim'
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'chriskempson/base16-vim'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'tpope/vim-eunuch'
    Plug 'tpope/vim-fugitive'
    Plug 'zchee/deoplete-jedi'
    Plug 'w0rp/ale'

    Plug 'Shougo/neosnippet.vim'
    Plug 'Shougo/neosnippet-snippets'
call plug#end()

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set hidden " allow to switch unsaved buffers

colorscheme default
" default theme for terminal
if exists('g:GuiLoaded')
    colorscheme desert
    GuiFont PragmataPro:h11
endif

set nu
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

" https://github.com/junegunn/fzf#respecting-gitignore
let $FZF_DEFAULT_COMMAND='ag -g ""'
nnoremap <silent> <C-p> :<C-u>Files <CR>
nnoremap <silent> <C-o> :<C-u>Buffers <CR>
nnoremap <silent> <C-i> :<C-u>Ag <CR>
nnoremap <silent> <char-252> :<C-u>Tags <CR>

" double escape, clear highlights
nnoremap <silent> <Esc><Esc> :nohl<CR>

" Snippet expansion on C-k
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
