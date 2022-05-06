""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Non-Standard Plugins and stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox' "theme
Plug 'ycm-core/YouCompleteMe'
Plug 'mbbill/undotree' 
Plug 'vim-latex/vim-latex'
Plug 'vim-syntastic/syntastic' " syntax checking 
Plug 'nvie/vim-flake8'      " pep 8 support
Plug 'tpope/vim-fugitive'  "git support
Plug 'bling/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes'

" Plug 'itspriddle/vim-marked' "markdown plug
Plug 'takac/vim-hardtime' " stop using arrows!
call plug#end()

" From/for plugins
" gruvbox
colorscheme gruvbox
set background=dark

" Fix highlight for misspelled words
highlight SpellBad term=NONE cterm=underline ctermfg=DarkMagenta
" Use the below highlight group when displaying bad whitespace is desired.
"highlight BadWhitespace ctermbg=red guibg=red

let python_highlight_all=1

" See Undo Tree
nnoremap <leader>u :UndotreeShow<CR>
" vim-airline options
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16_gruvbox_dark_hard'



" YouCompleteMe mapping for go to definitions.
nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>

" Syntastics Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_enable_highlighting = 1 

nnoremap <leader>] :lnext<CR>  " move to next syntastic warn/error
nnoremap <leader>[ :lprev<CR>

set hlsearch " highlight search pattern

" vim-marked plugin settings  ONLY AVAILABLE FOR MACOS
" let g:marked_app = "Marked 2"
" let g:marked_filetypes = ["markdown", "mkd", "ghmarkdown", "vimwiki", "md"]

" LATEX 
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
"filetype plugin on
" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash
" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
let g:tex_indent_items = 1
let g:tex_indent_brace = 1

au Filetype latex,tex,plaintex  set
    \ wrap 
    \ breakindent  
    \ formatoptions=l 
    \ lbr
    \ tabstop=2
    \ softtabstop=2
    \ shiftwidth=2
    \ textwidth=79
    \ expandtab
    \ autoindent
    \ fileformat=unix
    \ spell
" Indents word-wrapped lines as much as the 'parent' line
" Ensures word-wrap does not split words 
" section jumping
noremap <buffer> <silent> ]] :<c-u>call TexJump2Section( v:count1, '' )<CR>
noremap <buffer> <silent> [[ :<c-u>call TexJump2Section( v:count1, 'b' )<CR>

" section jumping mapping
function! TexJump2Section( cnt, dir )
  let i = 0
  let pat = '^\s*\\\(part\|chapter\|\(sub\)*section\|paragraph\)\>\|\%$\|\%^'
   let flags = 'W' . a:dir
   while i < a:cnt && search( pat, flags ) > 0
     let i = i+1
   endwhile
   let @/ = pat
endfunction

" Hardtime plugin options
let g:hardtime_default_on = 1 " hardtime on in all buffers
let g:hardtime_showmsg = 1 " show notification of hardtime enabled
let g:hardtime_allow_different_key = 1 " allow different keys repetions
let g:hardtime_maxcount = 2 " start ignoring presses after n
" Do not allow movement with arrows
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>




