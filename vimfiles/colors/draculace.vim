" draculace theme v1.3.0
" colorpallet : https://www.google.co.jp/search?q=%238be9fd&oq=%238be9fd&aqs=chrome..69i57.344j0j9&sourceid=chrome&ie=utf-8
" https://h2plus.biz/hiromitsu/entry/674
"
" https://github.com/zenorocha/dracula-theme
"
" copyright 2016, all rights reserved
"
" code licensed under the mit license
" http://zenorocha.mit-license.org
"
" @author trevor heins <@heinst>
" @author erton ribeiro <nuxlli@gmail.com>
" @AUTHOR ZENO ROCHA <HI@ZENOROCHA.COM>
" @author kaz kimura <tecokimura@gmail.com>

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "draculace"

" White=231
" Dark black=16
" BG black=235
" Cursor black=232
" Pink=219
" Gray=250
"

hi Normal ctermfg=231 ctermbg=235  guifg=#f8f8f2 guibg=#282a36 gui=NONE
hi Visual ctermfg=160 ctermbg=16 cterm=NONE guifg=#d60000 guibg=#500000 gui=NONE
hi Cursor ctermfg=NONE ctermbg=234 cterm=NONE guifg=#282a36 guibg=#f8f8f0 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=232 cterm=NONE guifg=NONE guibg=#44475a gui=NONE
hi LineNr ctermfg=250 ctermbg=16 cterm=NONE guifg=#dd99ff guibg=#383a46 gui=NONE
hi CursorLineNr ctermfg=205 ctermbg=16 cterm=italic,bold guifg=#f1fa8c guibg=#44475a gui=NONE
hi VertSplit ctermfg=250 ctermbg=16 cterm=NONE guifg=#64666d guibg=#64666d gui=bold "vsp
hi Comment ctermfg=105 ctermbg=NONE cterm=NONE guifg=#ffddff guibg=NONE gui=NONE
hi Number ctermfg=219 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi Character ctermfg=173 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi String ctermfg=216 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
hi Function ctermfg=42 ctermbg=NONE cterm=NONE guifg=#8cfd8a guibg=NONE gui=NONE
hi PreProc ctermfg=41 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE "user,require

hi Identifier ctermfg=80 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE "変数水色
hi Keyword ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE

hi Statement ctermfg=2 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE "foreach,return

hi Type ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE "int等の型

hi Special ctermfg=250 ctermbg=NONE cterm=NONE guifg=#f8f8f2 guibg=NONE gui=NONE "記号？
hi SpecialKey ctermfg=250 ctermbg=NONE cterm=NONE guifg=#525563 guibg=NONE gui=NONE

hi Underlined ctermfg=219 ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Ignore ctermfg=244 ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=underline

hi Todo ctermfg=105 ctermbg=15 cterm=bold guifg=#ffddff guibg=NONE gui=inverse,bold "TODO:

hi Directory ctermfg=87 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE "フォルダ

hi IncSearch ctermfg=235 ctermbg=229 cterm=none guifg=#500000 guibg=#d60000 gui=none
hi Search ctermfg=235 ctermbg=229 cterm=none guifg=#f01717 guibg=NONE gui=none

hi MatchParen ctermfg=226 ctermbg=NONE cterm=bold,underline guifg=#ff79c6 guibg=NONE gui=underline " 対になるカッコの色

hi CursorColumn ctermbg=234 cterm=NONE guifg=NONE guibg=#44475a gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#3d3f49 gui=NONE
hi StatusLine ctermfg=231 ctermbg=236 cterm=bold guifg=#f8f8f2 guibg=#64666d gui=bold
hi StatusLineNC ctermfg=231 ctermbg=236 cterm=NONE guifg=#f8f8f2 guibg=#64666d gui=NONE

hi Pmenu ctermfg=7 ctermbg=238 cterm=NONE guifg=#f0f0f0 guibg=#44475a gui=NONE " Fzf window
hi PmenuSel ctermfg=1 ctermbg=2 cterm=NONE guifg=#f60000 guibg=#500000 gui=NONE " Fzf selected

hi CocMenuSel  ctermfg=212 ctermbg=232 cterm=bold guifg=#f0f0f0 guibg=#44475a gui=NONE "Coc補完選択
hi CocFloating ctermfg=231 ctermbg=238 guibg=#3f3f3f "Coc補完Window

" for Fzf colors
hi! link FzfNormal Pmenu
hi! link FzfNormalPlus CocMenuSel


hi DiffAdd ctermfg=NONE ctermbg=22 cterm=NONE guifg=#f8f8f2 guibg=#468410 gui=bold
hi DiffDelete ctermfg=NONE ctermbg=252 cterm=NONE guifg=#8b080b guibg=NONE gui=NONE
" hi DiffChange ctermfg=NONE ctermbg=17 cterm=NONE guifg=#f8f8f2 guibg=#243a5f gui=NONE
hi DiffChange ctermfg=NONE ctermbg=89 cterm=NONE guifg=#f8f8f2 guibg=#243a5f gui=NONE
hi DiffText ctermfg=226 ctermbg=16 cterm=bold guifg=#f8f8f2 guibg=#204a87 gui=bold

hi Folded ctermfg=61 ctermbg=235 cterm=NONE guifg=#ffddff guibg=#282a36 gui=NONE
hi SignColumn ctermfg=246 ctermbg=235 cterm=NONE guifg=#909194 guibg=#44475a gui=NONE
hi FoldColmun ctermfg=246 ctermbg=235 cterm=NONE guifg=#909194 guibg=#44475a gui=NONE
hi Boolean ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi Conditional ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi Error ctermfg=231 ctermbg=212 cterm=NONE guifg=#f8f8f0 guibg=#ff79c6 gui=NONE
hi ErrorMsg ctermfg=231 ctermbg=212 cterm=NONE guifg=#f8f8f0 guibg=#ff79c6 gui=NONE
hi WarningMsg ctermfg=231 ctermbg=212 cterm=NONE guifg=#f8f8f0 guibg=#ff79c6 gui=NONE
hi Float ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi Label ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
hi NonText ctermfg=231 ctermbg=NONE cterm=NONE guifg=#525563 guibg=NONE gui=NONE
hi Operator ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi StorageClass ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE "before italic
hi Tag ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi Title ctermfg=231 ctermbg=NONE cterm=bold guifg=#f8f8f2 guibg=NONE gui=bold
hi rubyClass ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi rubyFunction ctermfg=84 ctermbg=NONE cterm=NONE guifg=#8cfd8a guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi rubyConstant ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE "before italic
hi rubyStringDelimiter ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb86c guibg=NONE gui=NONE "before italic
hi rubyInstanceVariable ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ffb86c guibg=NONE gui=NONE
hi rubyInclude ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRegexp ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
hi rubyEscape ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi rubyControl ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyOperator ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi rubyException ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE "before italic
hi rubyRailsARAssociationMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=61 ctermbg=NONE cterm=NONE guifg=#ffddff guibg=NONE gui=NONE
hi erubyRailsMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
hi htmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#8cfd8a guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE "before italic
hi javaScriptRailsFunction ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi yamlAnchor ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlAlias ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
hi cssURL ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb86c guibg=NONE gui=NONE "before italic
hi cssFunctionName ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
hi cssColor ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=84 ctermbg=NONE cterm=NONE guifg=#8cfd8a guibg=NONE gui=NONE
hi cssClassName ctermfg=84 ctermbg=NONE cterm=NONE guifg=#8cfd8a guibg=NONE gui=NONE
hi cssValueLength ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=81 ctermbg=NONE cterm=NONE guifg=#6be5fd guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi TabLineFill  guifg=#333333 guibg=#282a36 gui=none
hi TabLine      guifg=#666666 guibg=#282a36 gui=none
hi TabLineSel   guifg=WHITE guibg=#282a36 gui=none


" Elixir {{{
hi elixirAtom ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE "before italic"
hi elixirModuleDeclaration ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE "before italic"
hi elixirAlias ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE "before italic"
hi elixirInterpolationDelimiter ctermfg=84 ctermbg=NONE cterm=NONE guifg=#8cfd8a guibg=NONE gui=NONE
hi elixirStringDelimiter ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
"}}}
"
" Vim Script {{{
hi vimGroupName ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE
hi vimGroup ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE
hi vimOption ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE
hi vimHiCtermFgBg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE
hi vimHiGuiFgBg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE
" }}}
" Markdown: {{{
hi markdownH1 ctermfg=141 ctermbg=NONE cterm=bold guifg=#bd93f9 guibg=NONE gui=bold"
hi markdownH2 ctermfg=141 ctermbg=NONE cterm=bold guifg=#bd93f9 guibg=NONE gui=bold"
hi markdownH3 ctermfg=212 ctermbg=NONE cterm=bold guifg=#ff79c6 guibg=NONE gui=bold"
hi markdownH4 ctermfg=212 ctermbg=NONE cterm=bold guifg=#ff79c6 guibg=NONE gui=bold"
hi markdownH5 ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi markdownH6 ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE

hi markdownCode ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
hi markdownCodeBlock ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
hi markdownCodeDelimiter ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE

hi markdownBlockquote ctermfg=84 ctermbg=NONE cterm=NONE guifg=#8cfd8a guibg=NONE gui=NONE
hi markdownListMarker ctermfg=84 ctermbg=NONE cterm=NONE guifg=#8cfd8a guibg=NONE gui=NONE
hi markdownOrderedListMarker ctermfg=84 ctermbg=NONE cterm=NONE guifg=#8cfd8a guibg=NONE gui=NONE
hi markdownRule ctermfg=84 ctermbg=NONE cterm=NONE guifg=#8cfd8a guibg=NONE gui=NONE
hi markdownHeadingRule ctermfg=84 ctermbg=NONE cterm=NONE guifg=#8cfd8a guibg=NONE gui=NONE

hi markdownUrlDelimiter ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb86c guibg=NONE gui=NONE "before italic"
hi markdownLinkDelimiter ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb86c guibg=NONE gui=NONE "before italic"
hi markdownLinkTextDelimiter ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb86c guibg=NONE gui=NONE "before italic"

hi markdownHeadingDelimiter ctermfg=117 ctermbg=NONE cterm=bold guifg=#8be9fd guibg=NONE gui=bold"
hi markdownUrl ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi markdownUrlTitleDelimiter ctermfg=84 ctermbg=NONE cterm=NONE guifg=#8cfd8a guibg=NONE gui=NONE
" }}}


"
"cygwin has an annoying behavior where it resets background to light
"regardless of what is set above, so we force it yet again
"
"add these to get cygwin shell working when used to ssh into a centos6 vm
"this requires your TERM=xterm-256color in the guest vm
"- one way to do this is to append to /home/vagrant/.bash_profile ala:
"      TERM=xterm-256color
"      export $TERM

execute "set background=dark"
"-------------------
