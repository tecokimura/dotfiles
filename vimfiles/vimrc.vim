"======
"                   ___           ___           ___           ___                       ___           ___           ___           ___     
"       ___        /  /\         /  /\         /  /\         /__/|        ___          /__/\         /__/\         /  /\         /  /\    
"      /  /\      /  /:/_       /  /:/        /  /::\       |  |:|       /  /\        |  |::\        \  \:\       /  /::\       /  /::\   
"     /  /:/     /  /:/ /\     /  /:/        /  /:/\:\      |  |:|      /  /:/        |  |:|:\        \  \:\     /  /:/\:\     /  /:/\:\  
"    /  /:/     /  /:/ /:/_   /  /:/  ___   /  /:/  \:\   __|  |:|     /__/::\      __|__|:|\:\   ___  \  \:\   /  /:/~/:/    /  /:/~/::\ 
"   /  /::\    /__/:/ /:/ /\ /__/:/  /  /\ /__/:/ \__\:\ /__/\_|:|____ \__\/\:\__  /__/::::| \:\ /__/\  \__\:\ /__/:/ /:/___ /__/:/ /:/\:\
"  /__/:/\:\   \  \:\/:/ /:/ \  \:\ /  /:/ \  \:\ /  /:/ \  \:\/:::::/    \  \:\/\ \  \:\~~\__\/ \  \:\ /  /:/ \  \:\/:::::/ \  \:\/:/__\/
"  \__\/  \:\   \  \::/ /:/   \  \:\  /:/   \  \:\  /:/   \  \::/~~~~      \__\::/  \  \:\        \  \:\  /:/   \  \::/~~~~   \  \::/     
"       \  \:\   \  \:\/:/     \  \:\/:/     \  \:\/:/     \  \:\          /__/:/    \  \:\        \  \:\/:/     \  \:\        \  \:\     
"        \__\/    \  \::/       \  \::/       \  \::/       \  \:\         \__\/      \  \:\        \  \::/       \  \:\        \  \:\    
"                  \__\/         \__\/         \__\/         \__\/                     \__\/         \__\/         \__\/         \__\/    
"=========
set runtimepath+=~/.vim
set runtimepath+=~/vimfiles

"======::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
" 
" Basic
" 
"=========:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

" 重複しなそうなので追加
inoremap <C-b> <Left>
inoremap <C-f> <Right>

" バッファ切り替えを入れる
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab

" Leader key
let mapleader = ","

" https://qiita.com/powdersugar828828/items/279ca9a791b0b901f0de
nnoremap <Leader>n :set invnumber<CR>

nnoremap <Leader>u :w<CR> " easymotionと誤爆するので変更
nnoremap <Leader>l g_
nnoremap <Leader>q :q!<CR>


" for easymotion
" https://tombomemo.com/vim-easymotion-install-settings/
"s{char}{char} to move to {char}{char}
map <Leader>s <Plug>(easymotion-bd-f2)
nmap <Leader>s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" SoftwareDesign2022/7 page.36
map f <Plug>(easymotion-fl)
map t <Plug>(easymotion-tl)
map F <Plug>(easymotion-Fl)
map T <Plug>(easymotion-Tl)


" Fern -> https://qiita.com/youichiro/items/b4748b3e96106d25c5bc
nnoremap <Leader>f :Fern . -reveal=% -drawer -toggle -width=30<CR>

" FZF -> https://momozo.tech/2021/03/08/fzf-vim%E3%81%A8ripgrep%E3%81%A7%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%81%A8%E5%85%A8%E6%96%87%E3%82%92%E6%9B%96%E6%98%A7%E6%A4%9C%E7%B4%A2%E3%81%99%E3%82%8B/
:nnoremap <Leader>e :FZF<CR>
:nnoremap <Leader>p :GFiles<CR>
:nnoremap <Leader>r :Rg<CR>
:nnoremap <Leader>b :Buffers<CR>
:nnoremap <Leader>w :Windows<CR>
:nnoremap <Leader>h :History<CR>


nnoremap Y y$
nnoremap x "_x
nnoremap <C-k> "_dg_
inoremap <C-k> <ESC>"_dg_i

" 補完機能の設定 -> https://note.com/yasukotelin/n/na87dc604e042
inoremap <silent><expr> <Enter> coc#pum#visible() ? coc#pum#confirm() : "\<Enter>"


" サーチした検索語を画面中央に持ってくる
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz

noremap gl g_

" vim使ってくれてありがとうを非表示
set notitle
set belloff=all

" 履歴
set history=1024

" ディレクトリを自動で移動する
set autochdir

" インデント
set tabstop=4
set shiftwidth=4
set expandtab " tabではなくspaceを入れる
set autoindent
set nowrap

" Encoding
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,cp932,sjis,euc-jp

syntax on " シンタックスON

set nonumber " 行数非表示

set incsearch  " インクリメンタルサーチ
set smartcase " 小文字なら区別しないが大文字なら区別する
set ignorecase " 大文字小文字を区別しない
set backspace=indent,eol,start " BSの動作設定

set ambiwidth=double " 日本語を2文字で表示

set iminsert=0
set imsearch=-1

set cursorline     " カーソル行の背景色を変える
" set cursorcolumn   " カーソル位置のカラムの背景色を変える
set cmdheight=2    " メッセージ表示欄を2行確保
set showcmd        " 対応する括弧を強調表示
set showmatch      " 対応する括弧を強調表示
set helplang=ja,en " ヘルプを画面いっぱいに開く
set helpheight=999 " ヘルプを画面いっぱいに開く
set list           " 不可視文字を表示
" 不可視文字の表示記号指定
set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮


"======
" status line"
"=========
" ファイル名表示
set statusline=%F
" 変更チェック表示
set statusline+=%m
" 読み込み専用かどうか表示
set statusline+=%r
" ヘルプページなら[HELP]と表示
set statusline+=%h
" プレビューウインドウなら[Prevew]と表示
set statusline+=%w
" これ以降は右寄せ表示
set statusline+=%=
" file encoding
set statusline+=[enc=%{&fileencoding}]
" 現在行数/全行数
set statusline+=[LOW=%l/%L]
" ステータスラインを常に表示(0:表示しない、1:2つ以上ウィンドウがある時だけ表示)
set laststatus=2


" vimでマウスは使わないのでOFF
set mouse=

" 補完表示
set wildmenu wildmode=list:full

" autoselect=VisualMode選択時にクリップボードに入れる
:set clipboard+=unnamed


set backupext=.back
set backupdir=~/vimfiles/tmp/
set directory=~/vimfiles/tmp/
set undodir=~/vimfiles/tmp/

set viminfo+=n~/vimfiles/viminfo.txt

"======::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
" 
" Command
" コマンドやエイリアスなど
" 
"=========:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

" ファイルのエンコード変更
:command! EncUTF8 set fenc=utf-8
:command! EncSJIS set fenc=sjis

" ファイルの読み込み直し
:command! ReloadUTF8 e ++enc=utf-8
:command! ReloadSJIS e ++enc=sjis

" カラースキームの変更
:command! CsOwl colorscheme night-owl
:command! CsIce colorscheme iceberg
:command! CsAce colorscheme draculace

" Font size の変更(for GUI)
:command! Font10 set guifont=FirgeNerd:h10
:command! Font12 set guifont=FirgeNerd:h12
:command! Font14 set guifont=FirgeNerd:h14
:command! Font16 set guifont=FirgeNerd:h16
:command! Font18 set guifont=FirgeNerd:h18

"======::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
" 
" Config
"   設定値
" 
"=========:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

" for netrw
" https://qiita.com/gorilla0513/items/bf2f78dfec67242f5bcf
let g:netrw_liststyle = 1
let g:netrw_banner = 0
let g:netrw_altv = 1
let g:netrw_sizestyle="H"
let g:netrw_timefmt="%Y/%m/%d(%a) %H:%M:%S"
let g:netrw_preview=1

" colorscheme draculace



"======::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
" 
" Plugin
"   プラグイン関連
" 
"=========:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

call plug#begin()
Plug 'vim-jp/vimdoc-ja'

Plug 'tpope/vim-unimpaired'
Plug 'easymotion/vim-easymotion'
Plug 'simeji/winresizer'
Plug 'lambdalisue/fern.vim', {'branch': 'main'}
Plug 'yuki-yano/fern-preview.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" I am trying now
Plug 'mechatroner/rainbow_csv'
Plug 'junegunn/vim-easy-align'

" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Color scheme
Plug 'cocopon/iceberg.vim'
Plug 'haishanh/night-owl.vim'

" Syntax
Plug 'leafgarland/typescript-vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" GitHub Copilot
Plug 'github/copilot.vim'

" DB
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'

call plug#end()


set helplang=ja,en

"======
" for Fern
" https://github.com/yuki-yano/fern-preview.vim
"---------
let g:fern#default_hidden=1

function! s:fern_settings() abort
  nmap <silent> <buffer> p     <Plug>(fern-action-preview:toggle)
  nmap <silent> <buffer> <C-p> <Plug>(fern-action-preview:auto:toggle)
  nmap <silent> <buffer> <C-d> <Plug>(fern-action-preview:scroll:down:half)
  nmap <silent> <buffer> <C-u> <Plug>(fern-action-preview:scroll:up:half)
endfunction

augroup fern-settings
  autocmd!
  autocmd FileType fern call s:fern_settings()
augroup END


" Airline
let g:airline_theme = 'papercolor'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_mode_map = {
    \ 'n' : 'N',
    \ 'i' : 'Insert',
    \ 'R' : 'Replace',
    \ 'c' : 'Cmd',
    \ 'v' : 'Visual',
    \ 'V' : 'V-Line',
    \ 'V' : 'V-Block',
    \ }

let g:airline#extensions#default#layout = [
    \ [ 'a', 'b', 'c'],
    \ [ 'x', 'y', 'warning', 'error']
    \ ]

" 
" for Fzf
if executable('rg')

  let g:fzf_colors =
    \ { 'fg':      ['fg', 'FzfNormal', 'Normal'],
      \ 'bg':      ['bg', 'FzfNormal', 'Normal'],
      \ 'hl':      ['fg', 'Comment'],
      \ 'fg+':     ['fg', 'FzfNormalPlus', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'FzfNormalPlus','CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Statement'],
      \ 'info':    ['fg', 'PreProc'],
      \ 'border':  ['fg', 'Ignore'],
      \ 'prompt':  ['fg', 'Conditional'],
      \ 'pointer': ['fg', 'Exception'],
      \ 'marker':  ['fg', 'Keyword'],
      \ 'spinner': ['fg', 'Label'],
      \ 'header':  ['fg', 'Comment'] }

  function! FZGrep(query, fullscreen)
    " --hidden 隠しファイルも隠しディレクトリも含める
    " --follow シンボリックリンクも含める
    " --glob   対象ファイルのファイルパターンを指定
    " let command_fmt = 'rg --column --line-number --no-heading --hidden --follow --glob "!.git/*" --color=always --smart-case -- %s || true'
    let command_fmt = 'rg --column --line-number --no-heading --hidden --follow --color=always --smart-case -- %s || true'
    let initial_command = printf(command_fmt, shellescape(a:query))
    let reload_command = printf(command_fmt, '{q}')
    let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
    call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
  endfunction

  " RGマンドを定義。同名コマンドが定義されていた場合上書きする
  " RGコマンドはFZGrep関数を呼び出す
  command! -nargs=* -bang RG call FZGrep(<q-args>, <bang>0)


endif



" GitHub Copilot
let g:copilot_filetypes = {
    \ '*': v:true,
    \ 'TypeScript': v:true,
    \ 'python': v:true,
    \ 'php': v:true,
    \ }


" for vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)


" for dadbob-ui 
" https://qiita.com/AkioYokoyama/items/ee1a9c1e31f61a224105
let g:db_ui_save_location = '~/.vim/dadbod-ui'
let g:db_ui_table_helpers = {
   \'mysql': {
   \      'Desc': 'DESC {table}',
   \     'Show Create Table': 'SHOW CREATE TABLE {table}',
   \     'Comment': 'SHOW FULL COLUMNS FROM {table}',
   \     'Count': 'SELECT COUNT(*) FROM {table}',
   \     'Insert': '-- INSERT INTO {table} c1, c1 VALUES (1, 2)',
   \     'Update': '-- UPDATE {table} SET c1=100, c2=200 where id = 1'
   \   }
   \ }
