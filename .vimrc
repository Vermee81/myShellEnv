set nocompatible
filetype plugin indent off

if has('vim_starting')
  " neobundle をインストールしていない場合は自動インストール
  if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
    echo "install neobundle..."
    " vim からコマンド呼び出しているだけ neobundle.vim のクローン
    :call system("git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
  endif
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'fatih/vim-go'
NeoBundle 'AndrewRadev/splitjoin.vim'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle "ctrlpvim/ctrlp.vim"

call neobundle#end()

filetype plugin indent on

" **************************************
" basic settings
" **************************************

let mapleader = ","

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,euc-jp,shift_jis

" for search
set hlsearch
set incsearch
set ignorecase
set smartcase
set wrapscan

" 改行で自動的にコメントが挿入されるのを防ぐ
autocmd FileType * setlocal formatoptions-=ro

" enable hilight
syntax enable

set number
set ruler
set showmatch

set autoindent
set smartindent
set expandtab

set shiftwidth=4
set tabstop=4
set softtabstop=4



" *******************************************************
" vim-go 
" *******************************************************
let g:go_bin_path = expand("~/.go/bin")
let g:go_fmt_command = "goimports"

exe "set runtimepath+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
set completeopt=menu,preview
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
au FileType go map <C-n> :cnext<CR>
au FileType go map <C-m> :cprevious<CR>
au FileType go nnoremap <Leader>a :cclose<CR>

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1


" *******************************************************
" python
" *******************************************************
let g:syntastic_python_checkers = ['pyflakes']

" *******************************************************
" memolist
" *******************************************************
map <Leader>mn  :MemoNew<CR>
map <Leader>ml  :MemoList<CR>
map <Leader>mg  :MemoGrep<CR>
let g:memolist_path = "/Users/hrksb/Documents/memopad"
let g:memolist_memo_suffix = "md"
let g:memolist_memo_date = "%Y-%m-%d %H:%M"
let g:memolist_memo_date = "epoch"
let g:memolist_memo_date = "%D %T"
let g:memolist_prompt_tags = 1
let g:memolist_prompt_categories = 1
let g:memolist_vimfiler = 1

" *******************************************************
" supertab
" *******************************************************
"let g:SuperTabContextDefaultCompletionType = context"
"let g:SuperTabDefaultCompletionType = <c-n>"

