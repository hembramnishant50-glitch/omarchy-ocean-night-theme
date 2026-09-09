" Ocean Night - Vim color scheme
" Deep navy + ocean blue palette

hi clear
syntax reset
let g:colors_name = "ocean_night"

set background=dark

let s:ocn_bg        = "#050A2D"
let s:ocn_bg_deep   = "#02040C"
let s:ocn_bg_soft   = "#0E285B"
let s:ocn_fg        = "#AAC5DD"
let s:ocn_fg_bright = "#E4F2FC"
let s:ocn_accent    = "#4995DD"
let s:ocn_cyan      = "#3FD4E8"
let s:ocn_sky       = "#86CEE8"
let s:ocn_muted     = "#245D9A"
let s:ocn_green     = "#63D1A7"
let s:ocn_yellow    = "#E8C47F"
let s:ocn_red       = "#F1758A"
let s:ocn_orange    = "#EF9766"
let s:ocn_magenta   = "#C678DD"

function! s:hi(group, fg, bg, style)
  let l:cmd = printf("hi %s guifg=%s guibg=%s gui=%s ctermfg=NONE ctermbg=NONE cterm=%s", a:group, a:fg, a:bg, a:style, a:style)
  execute l:cmd
endfunction

let s:none = "NONE"

call s:hi("Normal",       s:ocn_fg,        s:ocn_bg,        s:none)
call s:hi("NormalNC",     s:ocn_fg,        s:ocn_bg,        s:none)
call s:hi("EndOfBuffer",  s:ocn_bg_soft,   s:none,          s:none)
call s:hi("ColorColumn",  s:none,          s:ocn_bg_soft,   s:none)
call s:hi("Cursor",       s:ocn_bg,        s:ocn_fg_bright, s:none)
call s:hi("CursorLine",   s:none,          s:ocn_bg_soft,   s:none)
call s:hi("CursorColumn", s:none,          s:ocn_bg_soft,   s:none)
call s:hi("LineNr",       s:ocn_muted,     s:none,          s:none)
call s:hi("CursorLineNr", s:ocn_sky,       s:ocn_bg_soft,   s:none)
call s:hi("SignColumn",   s:ocn_muted,     s:ocn_bg,        s:none)
call s:hi("Folded",       s:ocn_muted,     s:ocn_bg_deep,   s:none)
call s:hi("FoldColumn",   s:ocn_muted,     s:ocn_bg,        s:none)
call s:hi("VertSplit",    s:ocn_bg_soft,   s:ocn_bg_deep,   s:none)
call s:hi("StatusLine",   s:ocn_fg,        s:ocn_bg_soft,   s:none)
call s:hi("StatusLineNC", s:ocn_muted,     s:ocn_bg_deep,   s:none)
call s:hi("TabLine",      s:ocn_muted,     s:ocn_bg_deep,   s:none)
call s:hi("TabLineFill",  s:ocn_muted,     s:ocn_bg_deep,   s:none)
call s:hi("TabLineSel",   s:ocn_fg_bright, s:ocn_bg_soft,   s:none)
call s:hi("Visual",       s:none,          s:ocn_bg_soft,   s:none)
call s:hi("VisualNOS",    s:none,          s:ocn_bg_soft,   s:none)
call s:hi("Search",       s:ocn_bg,        s:ocn_yellow,    s:none)
call s:hi("IncSearch",    s:ocn_bg_deep,   s:ocn_sky,       s:none)
call s:hi("MatchParen",   s:ocn_fg_bright, s:ocn_accent,    s:none)
call s:hi("Pmenu",        s:ocn_fg,        s:ocn_bg_deep,   s:none)
call s:hi("PmenuSel",     s:ocn_fg_bright, s:ocn_accent,    s:none)
call s:hi("PmenuSbar",    s:none,          s:ocn_bg_soft,   s:none)
call s:hi("PmenuThumb",   s:none,          s:ocn_muted,     s:none)
call s:hi("WildMenu",     s:ocn_fg_bright, s:ocn_accent,    s:none)
call s:hi("Question",     s:ocn_green,     s:none,          s:none)
call s:hi("ModeMsg",      s:ocn_sky,       s:none,          s:none)
call s:hi("ErrorMsg",     s:ocn_red,       s:ocn_bg_deep,   s:none)
call s:hi("WarningMsg",   s:ocn_yellow,    s:none,          s:none)
call s:hi("MoreMsg",      s:ocn_green,     s:none,          s:none)
call s:hi("Directory",    s:ocn_sky,       s:none,          s:none)
call s:hi("Title",        s:ocn_fg_bright, s:none,          "bold")
call s:hi("Conceal",      s:ocn_muted,     s:none,          s:none)
call s:hi("SpellBad",     s:ocn_red,       s:none,          "undercurl")
call s:hi("SpellCap",     s:ocn_yellow,    s:none,          "undercurl")
call s:hi("SpellRare",    s:ocn_magenta,   s:none,          "undercurl")
call s:hi("SpellLocal",   s:ocn_cyan,      s:none,          "undercurl")

call s:hi("Comment",        s:ocn_muted,   s:none, s:none)
call s:hi("Todo",           s:ocn_yellow,  s:none, "bold")
call s:hi("Constant",       s:ocn_orange,  s:none, s:none)
call s:hi("String",         s:ocn_green,   s:none, s:none)
call s:hi("Character",      s:ocn_green,   s:none, s:none)
call s:hi("Number",         s:ocn_orange,  s:none, s:none)
call s:hi("Float",          s:ocn_orange,  s:none, s:none)
call s:hi("Boolean",        s:ocn_orange,  s:none, s:none)
call s:hi("Identifier",     s:ocn_cyan,    s:none, s:none)
call s:hi("Function",       s:ocn_sky,     s:none, s:none)
call s:hi("Statement",      s:ocn_magenta, s:none, s:none)
call s:hi("Conditional",    s:ocn_magenta, s:none, s:none)
call s:hi("Repeat",         s:ocn_magenta, s:none, s:none)
call s:hi("Label",          s:ocn_magenta, s:none, s:none)
call s:hi("Operator",       s:ocn_sky,     s:none, s:none)
call s:hi("Keyword",        s:ocn_magenta, s:none, s:none)
call s:hi("Exception",      s:ocn_magenta, s:none, s:none)
call s:hi("PreProc",        s:ocn_yellow,  s:none, s:none)
call s:hi("Include",        s:ocn_yellow,  s:none, s:none)
call s:hi("Define",         s:ocn_yellow,  s:none, s:none)
call s:hi("Macro",          s:ocn_yellow,  s:none, s:none)
call s:hi("PreCondit",      s:ocn_yellow,  s:none, s:none)
call s:hi("Type",           s:ocn_yellow,  s:none, s:none)
call s:hi("StorageClass",   s:ocn_magenta, s:none, s:none)
call s:hi("Structure",      s:ocn_yellow,  s:none, s:none)
call s:hi("Typedef",        s:ocn_yellow,  s:none, s:none)
call s:hi("Special",        s:ocn_fg_bright,s:none, s:none)
call s:hi("SpecialChar",    s:ocn_fg_bright,s:none, s:none)
call s:hi("Tag",            s:ocn_sky,     s:none, s:none)
call s:hi("Delimiter",      s:ocn_muted,   s:none, s:none)
call s:hi("SpecialComment", s:ocn_muted,   s:none, s:none)
call s:hi("Debug",          s:ocn_fg_bright,s:none, s:none)
call s:hi("Underlined",     s:ocn_cyan,    s:none, "underline")
call s:hi("Ignore",         s:ocn_muted,   s:none, s:none)
call s:hi("Error",          s:ocn_red,     s:none, "bold")
call s:hi("diffAdded",      s:ocn_green,   s:none, s:none)
call s:hi("diffRemoved",    s:ocn_red,     s:none, s:none)
call s:hi("diffChanged",    s:ocn_orange,  s:none, s:none)
call s:hi("DiffAdd",        s:none,        s:ocn_bg_soft,  s:none)
call s:hi("DiffDelete",     s:ocn_red,     s:ocn_bg_deep,  s:none)
call s:hi("DiffChange",     s:none,        s:ocn_bg_soft,  s:none)
call s:hi("DiffText",       s:none,        s:ocn_accent,   s:none)

let s:term_bg = g:ocn_terminal_transparent ? "NONE" : s:ocn_bg
execute "hi Normal guibg=" . s:term_bg

" LSP / diagnostic highlights
call s:hi("DiagnosticError",    s:ocn_red,   s:none, "bold")
call s:hi("DiagnosticWarn",     s:ocn_yellow,s:none, "bold")
call s:hi("DiagnosticInfo",     s:ocn_sky,   s:none, s:none)
call s:hi("DiagnosticHint",     s:ocn_cyan,  s:none, s:none)

" Native LSP highlight groups
call s:hi("LspReferenceText",   s:none, s:ocn_bg_soft, s:none)
call s:hi("LspReferenceWrite",  s:none, s:ocn_bg_soft, s:none)
call s:hi("LspReferenceRead",   s:none, s:ocn_bg_soft, s:none)

" Terminal colors
let g:terminal_color_0  = s:ocn_bg
let g:terminal_color_1  = s:ocn_red
let g:terminal_color_2  = s:ocn_green
let g:terminal_color_3  = s:ocn_yellow
let g:terminal_color_4  = s:ocn_accent
let g:terminal_color_5  = s:ocn_magenta
let g:terminal_color_6  = s:ocn_cyan
let g:terminal_color_7  = s:ocn_fg
let g:terminal_color_8  = s:ocn_muted
let g:terminal_color_9  = s:ocn_red
let g:terminal_color_10 = s:ocn_green
let g:terminal_color_11 = s:ocn_yellow
let g:terminal_color_12 = s:ocn_accent
let g:terminal_color_13 = s:ocn_magenta
let g:terminal_color_14 = s:ocn_cyan
let g:terminal_color_15 = s:ocn_fg_bright

" Optional transparency: set g:ocn_terminal_transparent = 1 to make the
" background transparent and keep only the foreground colors.
if exists('g:ocn_terminal_transparent')
  call s:hi("Normal", s:ocn_fg, "NONE", s:none)
  call s:hi("SignColumn", s:ocn_muted, "NONE", s:none)
  call s:hi("StatusLine", s:ocn_fg, "NONE", s:none)
  call s:hi("CursorLine", s:none, "NONE", s:none)
  call s:hi("CursorLineNr", s:ocn_sky, "NONE", s:none)
endif

unlet s:ocn_bg s:ocn_bg_deep s:ocn_bg_soft s:ocn_fg s:ocn_fg_bright
unlet s:ocn_accent s:ocn_cyan s:ocn_sky s:ocn_muted s:ocn_green
unlet s:ocn_yellow s:ocn_red s:ocn_orange s:ocn_magenta s:none
delfunction s:hi