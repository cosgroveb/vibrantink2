" VibrantInk2.vim -- Vim color scheme.
" Author:      Allen Fair (allen.fair@gmail.com)
" Webpage:     https://github.com/afair/vibrantink2
" Description: A modern reimplemantation of the venerable Vibrant Ink color scheme
" Last Change: 2019-10-04

hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "vibrantink2"

if ($TERM =~ '256' || &t_Co >= 256) || has("gui_running")
    hi Normal ctermbg=16 ctermfg=255 cterm=NONE guibg=#000000 guifg=#eeeeee gui=NONE

    set background=dark

    hi Statement ctermbg=NONE ctermfg=202 cterm=NONE guibg=NONE guifg=#ff5f00 gui=NONE
    hi Comment ctermbg=NONE ctermfg=98 cterm=NONE guibg=NONE guifg=#875fd7 gui=NONE
    hi LineNr ctermbg=NONE ctermfg=245 cterm=NONE guibg=NONE guifg=#8a8a8a gui=NONE
    hi rubySymbol ctermbg=NONE ctermfg=66 cterm=NONE guibg=NONE guifg=#5f5f00 gui=NONE
    hi rubyStringDelimiter ctermbg=NONE ctermfg=46 cterm=NONE guibg=NONE guifg=#00ff00 gui=NONE
    hi rubyInterpolation ctermbg=NONE ctermfg=231 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
    hi rubyPseudoVariable ctermbg=NONE ctermfg=68 cterm=NONE guibg=NONE guifg=#5f87d7 gui=NONE
    hi String ctermbg=NONE ctermfg=46 cterm=NONE guibg=NONE guifg=#00ff00 gui=NONE
    hi Constant ctermbg=NONE ctermfg=226 cterm=NONE guibg=NONE guifg=#ffff00 gui=NONE
    hi Function ctermbg=NONE ctermfg=226 cterm=NONE guibg=NONE guifg=#ffff00 gui=NONE
    hi SpellBad ctermbg=NONE ctermfg=203 cterm=undercurl guibg=NONE guifg=#ff5f5f gui=undercurl guisp=#ff5f5f
    hi SpellCap ctermbg=NONE ctermfg=NONE cterm=undercurl guibg=NONE guifg=NONE gui=undercurl guisp=#00d7ff
    hi SpellLocal ctermbg=NONE ctermfg=46 cterm=undercurl guibg=NONE guifg=#00ff00 gui=undercurl guisp=#00ff00
    hi SpellRare ctermbg=NONE ctermfg=216 cterm=undercurl guibg=NONE guifg=#ffaf87 gui=undercurl guisp=#ffaf87

elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
    set t_Co=16

    hi Normal ctermbg=black ctermfg=white cterm=NONE

    set background=dark

    hi Statement ctermbg=NONE ctermfg=orange cterm=NONE
    hi Comment ctermbg=NONE ctermfg=darkmagenta cterm=NONE
    hi LineNr ctermbg=NONE ctermfg=gray cterm=NONE
    hi rubySymbol ctermbg=NONE ctermfg=green cterm=NONE
    hi rubyStringDelimiter ctermbg=NONE ctermfg=green cterm=NONE
    hi rubyInterpolation ctermbg=NONE ctermfg=white cterm=NONE
    hi rubyPseudoVariable ctermbg=NONE ctermfg=slate cterm=NONE
    hi String ctermbg=NONE ctermfg=green cterm=NONE
    hi Constant ctermbg=NONE ctermfg=yellow cterm=NONE
    hi Function ctermbg=NONE ctermfg=yellow cterm=NONE
    hi SpellBad ctermbg=NONE ctermfg=red cterm=undercurl
    hi SpellCap ctermbg=NONE ctermfg=NONE cterm=undercurl
    hi SpellLocal ctermbg=NONE ctermfg=green cterm=undercurl
    hi SpellRare ctermbg=NONE ctermfg=orange cterm=undercurl
endif

hi link Keyword Statement
hi link Define Statement

let g:terminal_ansi_colors = [
        \ '#1c1c1c',
        \ '#af5f5f',
        \ '#5f875f',
        \ '#87875f',
        \ '#5f87af',
        \ '#875fd7',
        \ '#5f8787',
        \ '#6c6c6c',
        \ '#444444',
        \ '#ff5f00',
        \ '#5fff00',
        \ '#ffff87',
        \ '#8fafd7',
        \ '#8787af',
        \ '#5fafaf',
        \ '#ffffff',
        \ ]

" Generated with RNB (https://github.com/romainl/vim-rnb)
