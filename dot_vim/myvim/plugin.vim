"
" ここに記述をしても .vimrc を再読み込みしないと
" :source ~/.vimrc
" :PlugInstall などに反映されません！



call plug#begin()
Plug 'vim-jp/vimdoc-ja'

Plug 'tpope/vim-unimpaired'
Plug 'easymotion/vim-easymotion'
Plug 'simeji/winresizer'
Plug 'lambdalisue/fern.vim', {'branch': 'main'}
Plug 'yuki-yano/fern-preview.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

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

call plug#end()


set helplang=ja,en

"======
" for Fern
" https://github.com/yuki-yano/fern-preview.vim
" short command is basic.vim
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


"======
" for Airline
"---------
" 'wombat','bubblegum'
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
    \ 'B' : 'V-Block',
    \ }

let g:airline#extensions#default#layout = [
    \ [ 'a', 'b', 'c'],
    \ [ 'x', 'y', 'warning', 'error']
    \ ]



"======
" for CoC
"---------
function! s:check_back_space() abort
    let col = col('.') - 1
    return ! col || getline('.')[col - 1] =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<Tab>" :
    \ coc#refresh()
" Tab is next, S-Tab is prev
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-tab>"


"======
" for Fzf
"---------
if executable('rg')
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



"======
" for GitHub Copilot
"---------
let g:copilot_filetypes = {
    \ '*': v:true,
    \ 'TypeScript': v:true,
    \ 'python': v:true,
    \ 'php': v:true,
    \ }

