"#####è¡¨ç¤ºè¨­å®#####
set number "è¡çªå·ãè¡¨ç¤ºãã
set title "ç·¨éä¸­ã®ãã¡ã¤ã«åãè¡¨ç¤º
set showmatch "æ¬å¼§å¥åæã®å¯¾å¿ããæ¬å¼§ãè¡¨ç¤º
set hidden "ãããã¡ã®ä¿å­ç¢ºèªãç¡å¹å
" colorscheme solarized
set tabstop=4 "ã¤ã³ãã³ããã¹ãã¼ã¹4ã¤åã«è¨­å®
set shiftwidth=4
set smartindent "ãªã¼ãã¤ã³ãã³ã
vnoremap <silent> > >gv "é£ç¶ãã¦è¤æ°è¡ã¤ã³ãã³ã
vnoremap <silent> < <gv
" ããã¯ã¹ãã¼ã¹ãå¹ããã
set backspace=indent,eol,start
set nowrap
" 後ろの空白を自動で削除
autocmd BufWritePre * :%s/\s\+$//ge
" sudoで強制保存
cnoremap w!! w !sudo tee > /dev/null %<CR> :e!<CR>
" NeoCompleteのコンフィグ
source ~/.vim/neocompleteconfig

set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac

runtime! userautoload/*.vim

"#####æ¤ç´¢è¨­å®#####
set ignorecase "å¤§æå­/å°æå­ã®åºå¥ãªãæ¤ç´¢ãã
set smartcase "æ¤ç´¢æå­åã«å¤§æå­ãå«ã¾ãã¦ããå ´åã¯åºå¥ãã¦æ¤ç´¢ãã
set wrapscan "æ¤ç´¢æã«æå¾ã¾ã§è¡ã£ããæåã«æ»ã

"set termguicolors

" dein settings {{{
if &compatible
  set nocompatible
endif
" dein.vimã®ãã£ã¬ã¯ããª
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" ãªããã°git clone
if !isdirectory(s:dein_repo_dir)
  execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
endif
execute 'set runtimepath^=' . s:dein_repo_dir

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " ç®¡çãããã©ã°ã¤ã³ãè¨è¿°ãããã¡ã¤ã«
  let s:toml = '~/.dein.toml'
  let s:lazy_toml = '~/.dein_lazy.toml'
  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#add('tomtom/tcomment_vim')
  call dein#add('altercation/solarized')
  call dein#add('Shougo/neocomplete')
  call dein#add('Shougo/neosnippet')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('tpope/vim-surround')
  call dein#add('cohama/lexima.vim')
  call dein#add('terryma/vim-multiple-cursors')
  call dein#add('cocopon/iceberg.vim')

  call dein#end()
  call dein#save_state()
endif

colorscheme iceberg
syntax on

" ãã©ã°ã¤ã³ã®è¿½å ã»åé¤ãtomlãã¡ã¤ã«ã®è¨­å®ãå¤æ´ããå¾ã¯
" é©å® call dein#update ã call dein#clear_state ãå¼ãã§ãã ããã
" ããããã­ã£ãã·ã¥ããªãã¦è¯ããªãload_state/save_stateãå¼ã°ãªãããã«ãã¦ãã ããã

" 2016.04.16 è¿½è¨
" load_cache -> load_state
" save_cache -> save_state
" ã¨ãªãæ¸ãæ¹ãå°ãå¤ããã¾ããã
" è¿½è¨çµãã

" vimprocã ãã¯æåã«ã¤ã³ã¹ãã¼ã«ãã¦ã»ãã
if dein#check_install(['vimproc'])
  call dein#install(['vimproc'])
endif
" ãã®ä»ã¤ã³ã¹ãã¼ã«ãã¦ããªããã®ã¯ãã¡ãã«å¥ãã
if dein#check_install()
  call dein#install()
endif
" }}}
