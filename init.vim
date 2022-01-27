set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax on
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set autoindent
set smartindent
set relativenumber
set hlsearch
set incsearch
set ignorecase
set smartcase
set laststatus=2
set noshowmode
set foldmethod=manual


" Colemak map keys
nnoremap h h|xnoremap h h|onoremap h h|
nnoremap n j|xnoremap n j|onoremap n j|
nnoremap e k|xnoremap e k|onoremap e k|
nnoremap i l|xnoremap i l|onoremap i l|
nnoremap k n|xnoremap k n|onoremap k n|
nnoremap l i|xnoremap l i|onoremap l i|
nnoremap f e|xnoremap f e|onoremap f e|

so ~/.config/nvim/maps.vim
so ~/.config/nvim/plugins.vim
so ~/.config/nvim/plugin-config.vim

"colorscheme onehalfdark
set background=dark
colorscheme PaperColor
let g:rehash256 = 1
"let g:molokai_original = 1

"let g:gruvbox_italic=1
"let g:gruvbox_contrast_dark = "hard"

" Custom sintax
" all
highlight Normal ctermbg=NONE

"SCSS
hi sassClass ctermfg=Green
hi sassClassChar ctermfg=Cyan

"Js
hi jsBraces ctermfg=DarkMagenta 
hi jsBrackets ctermfg=Magenta
hi jsFuncBraces ctermfg=Blue
hi jsClassBraces ctermfg=Blue
hi jsIfElseBraces ctermfg=Blue 
hi jsTryCatchBraces ctermfg=Blue
hi jsModuleBraces ctermfg=Blue
hi jsObjectBraces ctermfg=Blue 
hi jsObjectSeparator ctermfg=Blue
hi jsFinallyBraces ctermfg=Blue
hi jsRepeatBraces ctermfg=Blue 
hi jsSwitchBraces ctermfg=Blue 
hi jsTemplateBraces ctermfg=Blue 
hi jsDestructuringBraces ctermfg=Blue 
hi jsObjectKey ctermfg=Blue
hi jsOperatorKeyword ctermfg=Red
hi jsFuncArgs ctermfg=Yellow


"Ts
hi typescriptDecorator  ctermfg=Magenta cterm=bold
hi typescriptBraces     ctermfg=Blue
hi typescriptClassName  ctermfg=Blue
"hi typescriptImport     ctermfg=blue
"hi typescriptMember     ctermfg=DarkGreen cterm=bold
"hi typescriptBlock      ctermfg=Magenta
"hi typescriptMethodAccessor       ctermfg=red


"------------------------------------------------COC EXPLORER CONFIG
" Disable netrw.
let g:loaded_netrw  = 1
let g:loaded_netrwPlugin = 1
let g:loaded_netrwSettings = 1
let g:loaded_netrwFileHandlers = 1
let g:loaded_matchit = 1

let g:coc_explorer_global_presets = {
\   '.vim': {
\     'root-uri': '%APPDATA%\Local\nvim',
\   },
\   'cocConfig': {
\      'root-uri': '%APPDATA%\Local\nvim\coc-settings.json',
\   },
\   'tab': {
\     'position': 'tab',
\     'quit-on-open': v:true,
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'simplify': {
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   },
\   'buffer': {
\     'sources': [{'name': 'buffer', 'expand': v:true}]
\   },
\   'git': {
\     'sources': [{'name': 'git', 'expand': v:true}]
\   },
\ }
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
augroup coc-explorer
  if @% == '' || @% == '.'
    autocmd User CocNvimInit bd
    autocmd User CocNvimInit CocCommand explorer
  endif
augroup END
if exists('#User#CocGitStatusChange')
  doautocmd <nomodeline> User CocGitStatusChange
endif
nnoremap <leader>n :CocCommand explorer<CR>
nnoremap <leader>p :CocCommand explorer --preset floating<CR> 
