"
" コマンドやエイリアスなど
"

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


" Font size の変更
:command! Font10 set guifont=FirgeNerd:h10
:command! Font12 set guifont=FirgeNerd:h12
:command! Font14 set guifont=FirgeNerd:h14
:command! Font16 set guifont=FirgeNerd:h16
:command! Font18 set guifont=FirgeNerd:h18


