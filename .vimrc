" プラグインが実際にインストールされるディレクトリ
let s:dein_dir = expand('~/.cache/dein')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

execute 'set runtimepath^=' . s:dein_repo_dir

" 設定開始
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " プラグインリストを収めた TOML ファイル
  " 予め TOML ファイルを用意しておく
  let g:rc_dir    = expand('~/.vim/rc')
  let s:toml      = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " 設定終了
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on

" もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif

" **************************************
" basic settings
" **************************************


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

