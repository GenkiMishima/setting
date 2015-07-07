"Neobundle environment{{{
"------------------------------------------------------------
" Neobundle environment
"------------------------------------------------------------
if has('win32') || has('win64')
  set shellslash
  let $VIMDIR = expand('~/vimfiles')
else
  let $VIMDIR = expand('~/.vim')
endif
"}}}
" NeoBundle settings{{{
"------------------------------------------------------------
" NeoBundle settings
"------------------------------------------------------------
if has('vim_starting')
  set runtimepath+=$VIMDIR/bundle/neobundle.vim/
endif
 
call neobundle#rc(expand('$VIMDIR/bundle/'))
 
" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'
 
" original repos on github
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
 
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'vim-scripts/BlockDiff'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'tpope/vim-surround'
NeoBundle 'davidoc/taskpaper.vim'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'grep.vim'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'scrooloose/nerdtree'
 
NeoBundleCheck
"}}}
" quickfix: 編集許可と折り返し表示無効{{{
function! OpenModifiableQF()
        cw
        set modifiable
        set nowrap
endfunction

autocmd QuickfixCmdPost vimgrep call OpenModifiableQF()"}}}
"lightline{{{
let g:lightline = {
      \ 'colorscheme': 'solarized'
      \ }
"}}}
"Nerdtree{{{
nnoremap <silent><C-e> :NERDTreeToggle<CR>
"}}}
"QuickFix{{{
autocmd QuickFixCmdPost *grep* cwindow
"}}}

syntax enable
set fdm=marker
set ttyfast
set hidden
set autoread
set ruler
set cursorline
set noexpandtab
set tabstop=3
set laststatus=2
set t_Co=256
set background=dark
"colorscheme jellybeans
