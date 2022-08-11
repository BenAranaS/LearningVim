""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Non-Standard Plugins and stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox' "theme
Plug 'ycm-core/YouCompleteMe'
Plug 'mbbill/undotree'
"Plug 'vim-latex/vim-latex'
Plug 'vim-syntastic/syntastic' " syntax checking
Plug 'nvie/vim-flake8'      " pep 8 support
Plug 'tpope/vim-fugitive'  "git support
Plug 'tpope/vim-surround'
Plug 'bling/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes'
" Plug 'itspriddle/vim-marked' "markdown plug
Plug 'takac/vim-hardtime' " stop using arrows!
Plug 'mhinz/vim-startify'
" Plug 'justinmk/vim-sneak'
"Plug 'vimwiki/vimwiki'
"Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
"Plug 'dpelle/vim-LanguageTool'
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
let g:airline#extensions#tabline#enabled = 1 "enable list of buffers
let g:airline_theme='dark'
" Note: You must define the dictionary first before setting values.
" Also, it's a good idea to check whether it exists as to avoid
" accidentally overwriting its contents.

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_powerline_fonts = 1
set encoding=utf-8
set laststatus=2
set t_Co=256
" Unicode symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
"let g:airline_symbols.branch = '⎇'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = ' ␊:'
let g:airline_symbols.linenr = ' ␤:'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ' '
"let g:airline_symbols.colnr = ' ㏇:'
let g:airline_symbols.dirty='⚡'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
" If you only see boxes here it may be because your system doesn't have
" the correct fonts. Try it in vim first and if that fails see the help
" pages for vim-airline :help airline-troubleshooting


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
" filetype plugin on
" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
" set shellslash
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

"augroup filetypedetect
"  au BufNew,BufNewFile,BufRead *.tex,*.latex,*.sty set
"      \ filetype=tex
"augroup END

" section jumping
function! TexJump2Section( cnt, dir )
    let i = 0
    let pat = '^\s*\\\(part\|chapter\|\(sub\)*section\|paragraph\)\>\|\%$\|\%^'
    let flags = 'W' . a:dir
    while i < a:cnt && search( pat, flags ) > 0
        let i = i+1
    endwhile
    let @/ = pat
endfunction

au Filetype latex,tex,plaintex  set
    \ wrap
    \ breakindent
    \ formatoptions=l
    \ lbr
    \ tabstop=2
    \ softtabstop=2
    \ shiftwidth=2
    \ expandtab
    \ autoindent
    \ fileformat=unix
    \ spell spelllang=en_gb
    \ conceallevel=2 "allows translation of characters to utf
  nnoremap <silent> ]] :<c-u>call TexJump2Section( v:count1, '' )  <bar> <ESC> zO 
  nnoremap <silent> [[ :<c-u>call TexJump2Section( v:count1, 'b' ) <CR>
  let b:tex_stylish = 1
  

" Indents word-wrapped lines as much as the 'parent' line
" Ensures word-wrap does not split words

" Hardtime plugin options
let g:hardtime_default_on = 1 " hardtime on in all buffers
let g:hardtime_showmsg = 1 " show notification of hardtime enabled
let g:hardtime_allow_different_key = 1 " allow different keys repetions
let g:hardtime_maxcount = 2 " start ignoring presses after n

" Startify Configuration
nnoremap <silent> <leader>ss <Cmd>Startify<CR>

" vimwiki Configuration
" let g:vimwiki_list = [{'path': '~/Documents/VimWiki',
                       \ 'syntax': 'markdown', 'ext': '.md'}]

" vimwiki custom md2HTML
let g:vimwiki_list = [{'path': '~/Documents/VimWiki',
  \ 'path_html': '~/Documents/VimWiki/VimWiki_html',
  \ 'syntax': 'markdown',
  \ 'ext': '.md',
  \ 'custom_wiki2html': '~/.vim/vimwiki_custom/wiki2html.sh'}]


" instant-markdown "Uncomment to override defaults:
map <Leader>md :InstantMarkdownPreview<CR>
map <Leader>ms :InstantMarkdownStop<CR>

"let g:instant_markdown_slow = 1
"let g:instant_markdown_autostart = 0
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
let g:instant_markdown_mathjax = 1
"let g:instant_markdown_mermaid = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0
"let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1

" LanguageTool Configuration
let g:languagetool_cmd='/Users/ba16078/Code/brew/bin/languagetool'
