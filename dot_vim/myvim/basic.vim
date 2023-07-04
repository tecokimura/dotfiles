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


" vimが好きになる本で勉強中のためコメントアウト
" 補完とぶつかるのでコメントアウト
" nnoremap <C-a> <Home>
" nnoremap <C-e> <End>
" inoremap <C-p> <Up>
" inoremap <C-n> <Down>
" inoremap <C-e> <End>

" inoremap <C-b> <Left>
" inoremap <C-f> <Right>
" inoremap <C-n> <Down>
" inoremap <C-h> <BS>
" inoremap <C-d> <Del>
" inoremap <C-Up> <PageUp>
" inoremap <C-Down> <Page>


" 重複しないそうなので追加
inoremap <C-b> <Left>
inoremap <C-f> <Right>

" バッファ切り替えを入れる
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab

"======
" Leader key
"---------
let mapleader = ","

" https://qiita.com/powdersugar828828/items/279ca9a791b0b901f0de
nnoremap <Leader>n :set invnumber<CR>

nnoremap <Leader>u :w<CR> " easymotionと誤爆するので変更
inoremap <Leader>e <Esc>
nnoremap <Leader>l g_
nnoremap <Leader>h ^
nnoremap <Leader>p %


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


" for Fern
" https://qiita.com/youichiro/items/b4748b3e96106d25c5bc
nnoremap <Leader>f :Fern . -reveal=% -drawer -toggle -width=30<CR>

" for FZF
" https://momozo.tech/2021/03/08/fzf-vim%E3%81%A8ripgrep%E3%81%A7%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%81%A8%E5%85%A8%E6%96%87%E3%82%92%E6%9B%96%E6%98%A7%E6%A4%9C%E7%B4%A2%E3%81%99%E3%82%8B/
:nnoremap <Leader>e :FZF<CR>
:nnoremap <Leader>r :Rg
:nnoremap <Leader>b :Buffers<CR>
:nnoremap <Leader>W :Windows<CR>
:nnoremap <Leader>H :History<CR>


nnoremap Y y$
nnoremap x "_x
nnoremap <C-k> "_dg_
inoremap <C-k> <ESC>"_dg_i


" Mastering VIM
" inoremap ' ''<esc>i
" inoremap " ""<esc>i
" inoremap ( ()<esc>i
" inoremap [ []<esc>i
" inoremap { {}<esc>i

" 補完機能の設定
" https://note.com/yasukotelin/n/na87dc604e042
set completeopt=menuone,noinsert
inoremap <expr><CR> pumvisible() ? "<C-y>" : "<CR>"
inoremap <expr><C-n> pumvisible() ? "<Down>" : "<C-n>"
inoremap <expr><C-p> pumvisible() ? "<Up>" : "<C-p>"

" サーチした検索語を画面中央に持ってくる
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz

noremap gl g_

" " ---ノーマルモード---
" " [Esc] + [Esc]で検索のハイライトを消す
" nnoremap <Esc><Esc> :noh<CR>
" " 「+」でsplitリサイズ幅を増やす
" nnoremap + <C-W>k<C-W>+<C-W>p
" " 「-」でsplitリサイズ幅を減らす
" nnoremap - <C-W>k<C-W>-<C-W>p
" " 「)」でVsplitリサイズ幅を増やす
" nnoremap ) <C-W>h<C-W>><C-W>p
" " 「(」でVsplitリサイズ幅を減らす
" nnoremap ( <C-W>h<C-W><LT><C-W>p
" " 「tt」でタブを新しく作る
" nnoremap tt :<C-u>tabnew<CR>
" " 「tc」でタブを閉じる
" nnoremap tc :<C-u>tabclose<CR>
" " 「tf」で最初のタブへ
" nnoremap tf :<C-u>tabfirst<CR>
" " 「tl」で最後のタブへ
" nnoremap tl :<C-u>tablast<CR>

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

set ambiwidth=double " 日本語を２文字で表示

set iminsert=0
set imsearch=-1

set cursorline     " カーソル行の背景色を変える
set cursorcolumn   " カーソル位置のカラムの背景色を変える
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


" ctrl-e end insert

set backupdir=~/.vim/tmp/
set directory=~/.vim/tmp/
set undodir=~/.vim/tmp/

set viminfo+=n~/.vim/tmp/viminfo


