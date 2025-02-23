""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Non-Standard Plugins and stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'bennydeb/gruvbox'          " Nice theme, specially with dark background
Plug 'ycm-core/YouCompleteMe'   " Autocomplete tool for diff languages
Plug 'mbbill/undotree'          " Allows to navigate all changes made to a file
Plug 'lervag/vimtex'            " Latex compatibility package
Plug 'honza/vim-snippets'       " Snippets files for various languages
Plug 'SirVer/ultisnips'         " Snippets engine for vim
Plug 'vim-syntastic/syntastic'  " syntax checking
Plug 'nvie/vim-flake8'          " pep 8 support
Plug 'junegunn/gv.vim'          " Browse git commits
Plug 'tpope/vim-fugitive'       " git support
Plug 'tpope/vim-rhubarb'        " Browse and open GitHub urls
Plug 'tpope/vim-commentary'     " Allows to comment stuff out
Plug 'tpope/vim-surround'       " Handle surroundings like {,(,', etc.
Plug 'mhinz/vim-signify'        " Shows what lines from a file have changed
Plug 'mhinz/vim-startify'       " Open vim with a list of recently opened files
Plug 'bling/vim-airline'        " Nice looking status bar at the bottom
Plug 'vim-airline/vim-airline-themes'  " Themes for airline
"" Plug 'itspriddle/vim-marked' " markdown Compatibility
Plug 'takac/vim-hardtime'       " stop using arrows! Block key's repetition
" Plug 'justinmk/vim-sneak'     " navigation: jump to location using two chars
Plug 'vimwiki/vimwiki'          " For notes, diary in vim
Plug 'bennydeb/taskwiki'      " tasks/project man in vim
Plug 'blindFS/vim-taskwarrior'  " vim interface for taskwarrior
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}  " Instant rendering of markdown files
Plug 'dpelle/vim-LanguageTool'  " Grammar and spell checker
Plug 'liuchengxu/vim-which-key' " Shows key maps inline
Plug 'preservim/tagbar'         " Tagbar, shows code structure in another window
Plug 'tmhedberg/SimpylFold'     " folding of latex files
Plug 'Konfekt/FastFold'         " Script for faster folding
Plug 'vim-scripts/indentpython.vim'   " Supposed to keep indentation consistent
Plug 'vim-autoformat/vim-autoformat'  " Format code with one button press (or automatically on save).
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' } "A vim plugin wrapper for prettier
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
" Plug 'neoclide/coc.nvim', {'branch': 'release'} " another autocomplete with snippets support.Use release branch (recommend)
Plug 'rhysd/vim-healthcheck'    " check vim configuration issues
Plug 'jiangmiao/auto-pairs'    " Automatic pair completion
Plug 'qpkorr/vim-bufkill'       " Close buffer without closing window or split
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy search binary
Plug 'junegunn/fzf.vim'         " Fuzzy vim integration
Plug 'christoomey/vim-tmux-navigator' " tmux and vim navigation integration
Plug 'bennydeb/pomodoro.vim' " pomodoro timer integration
Plug 'bennydeb/zotcite' " zotero vim integration
Plug 'jmcantrell/vim-virtualenv' " virtual environment management 
call plug#end()

" From/for plugins
" gruvbox
" let g:gruvbox_hls_cursor="blue"
colorscheme gruvbox
set background=dark
" highlight CurSearch cterm=underline ctermbg=Blue ctermfg=White guibg=green

" See Undo Tree
nnoremap <leader>u :UndotreeShow<CR>

" vim-airline options
let g:airline#extensions#tabline#enabled = 1 "enable list of buffers on top
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
let g:airline_symbols.branch = '⎇'
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
" WORDCOUNT
let g:airline#extensions#wordcount#filetypes =
            \ ['asciidoc', 'help', 'mail', 'markdown', 'nroff', 'org', 'plaintex', 'rst', 'tex', 'text', 'vimwiki']
" Use ['all'] to enable for all filetypes.
" * enable/disable vimtex integration >
let g:airline#extensions#vimtex#enabled = 1
" Use vimtex specific wordcount function for TexBuffers
" let g:airline#extensions#vimtex#wordcount = 1  " Activating vimtex count, might be more precise but makes vimtex super sluggish.
" Pomodoro on status config
call airline#parts#define_function('Pomodoro', 'pomo#status_bar')
let g:airline_section_y = airline#section#create_right(['ffenc','Pomodoro'])
" LanguageTool Vimtex Integration
let g:vimtex_grammar_vlty = {
      \ 'lt_command': 'languagetool',
      \ 'lt_disable': 'OXFORD_SPELLING_Z_NOT_S',
      \}
" let g:vimtex_grammar_vlty = {
"       \ 'lt_directory': '~/lib/LanguageTool',
"       \ 'lt_command': '',
"       \ 'lt_disable': 'WHITESPACE_RULE',
"       \ 'lt_enable': '',
"       \ 'lt_disablecategories': '',
"       \ 'lt_enablecategories': '',
"       \ 'server': 'no',
"       \ 'shell_options': '',
"       \ 'show_suggestions': 0,
"       \ 'encoding': 'auto',
"       \}
map <F9> :w<CR>:VimtexReload<CR>:compiler vlty<CR>:make<CR>:cwindow<CR><CR>

" YouCompleteMe mapping for go to definitions.
" nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
" let g:ycm_filetype_blacklist = {
"         \ 'tagbar': 1,
"         \ 'notes': 1,
"           \ 'markdown': 1,
"           \ 'netrw': 1,
"           \ 'unite': 1,
"           \ 'text': 1,
"           \ 'vimwiki': 1,
"           \ 'pandoc': 1,
"           \ 'infolog': 1,
"           \ 'leaderf': 1,
"           \ 'tex': 1,
"           \ 'latex': 1,
"           \ 'mail': 1
"           \}

" Syntastics Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_enable_highlighting = 1
let g:syntastic_tex_lacheck_quiet_messages = { 'regex': [ 'in LaTeX macro names', 'unmatched "}"', 'unmatched "beginning of file', '\\dimen', '\\advance', '\\divide']}
nnoremap <leader>] :lnext<CR>  " move to next syntastic warn/error
nnoremap <leader>[ :lprev<CR> " move to previous syntastic warn/error

" vim-marked plugin settings  ONLY AVAILABLE FOR MACOS
" let g:marked_app = "Marked 2"
" let g:marked_filetypes = ["markdown", "mkd", "ghmarkdown", "vimwiki", "md"]

"" LATEX
" This is necessary for VimTeX to load properly. The "indent" is optional.
" Note that most plugin managers will do this automatically.
filetype plugin indent on
" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info).
" syntax enable
" Viewer options: One may configure the viewer either by specifying a built-in
" viewer method:
" let g:vimtex_view_method = 'zathura'
" Or with a generic interface:
" let g:vimtex_view_general_viewer = 'okular'
" let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
" Skim vimtex setup
" let g:tex_flavor='latex' " Default tex file format
let g:vimtex_view_general_viewer = 'skim'
let g:vimtex_context_pdf_viewer = 'open -a Preview'
" let g:vimtex_context_pdf_viewer = '/Applications/Skim.app/Contents/MacOS/Skim'
let g:vimtex_view_method = 'skim' " Choose which program to use to view PDF file
let g:vimtex_viewer_skim = 1
let g:vimtex_view_skim_sync = 1 " Value 1 allows forward search after every successful compilation
let g:vimtex_view_skim_activate = 1 " Value 1 allows change focus to skim after command `:VimtexView` is given" VimTeX uses latexmk as the default compiler backend. If you use it, which is
" strongly recommended, you probably don't need to configure anything. If you
" want another compiler backend, you can change it as follows. The list of
" supported backends and further explanation is provided in the documentation,
" see ":help vimtex-compiler".
" let g:vimtex_compiler_method = 'latexrun'
" Most VimTeX mappings rely on localleader and this can be changed with the
" following line. The default is usually fine and is the symbol "\".
" let maplocalleader = ","
" Note: If the compiler or the viewer doesn't start properly, one may type <localleader>li to view the system commands that were executed to start them. To inspect the compiler output, use <localleader>lo.
" set nofoldenable
unlet! g:tex_fold_enabled
let g:vimtex_fold_enabled=1
" let g:vimtex_fold_manual=1
let g:vimtex_format_enabled=1
let b:tex_stylish=1
" let b:tex_conceal = "admgs"
set conceallevel=2
if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif
au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme
" Table of content configuration
autocmd FileType vimtex-toc  setlocal number relativenumber
let g:vimtex_toc_config = {'fold_enable' : 1,
            \    'fold_level_start' : 1 ,
            \    'indent_levels' : 1,
            \    'hide_line_numbers' : 0}
nnoremap <localleader>lf :call vimtex#fzf#run()<cr>

" Ultisnips
" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/plugged/vim-snippets/UltiSnips', "UltiSnips", ]          " using Vim
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Hardtime plugin options
let g:hardtime_default_on = 1 " hardtime on in all buffers
let g:hardtime_showmsg = 1 " show notification of hardtime enabled
let g:hardtime_allow_different_key = 4 " allow different keys repetions
let g:hardtime_maxcount = 10 " start ignoring presses after n

" Startify Configuration
nnoremap <silent> <leader>ss <Cmd>Startify<CR>

" vimwiki custom md2HTML
" Specific options on ftplugin/vimwiki.vim
let g:vimwiki_list = [{'path': '~/Documents/VimWiki',
            \ 'path_html': '~/Documents/VimWiki/VimWiki_html',
            \ 'syntax': 'markdown',
            \ 'ext': '.md',
            \ 'custom_wiki2html': '~/.vim/vimwiki_custom/wiki2html.sh'},
            \ {'path': '~/Documents/VimWiki_2',
            \ 'path_html': '~/Documents/VimWiki_2/VimWiki_2_html',
            \ 'syntax': 'markdown',
            \ 'ext': '.md',
            \ }]
let g:vimwiki_conceal_pre=1
" setup for daily notes
let $PATH_ = g:vimwiki_list[0]['path']
let $DT = strftime(" %c")
au BufNewFile */diary/*.md :silent 0r !~/.vim/vimwiki_custom/gen-diary-template.py $DT $PATH_
let g:taskwiki_sort_orders={"D": "status+,urgency-,end+,due+,project+,priority-"}

" vim-commentary settings:
autocmd FileType vimwiki setlocal commentstring=<!--%s-->

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
" let g:instant_markdown_theme = 'night'
" let g:instant_markdown_theme = 'dark'

" LanguageTool Configuration
" let g:languagetool_cmd='/usr/local/bin/languagetool'
let g:languagetool_jar='/usr/local/Cellar/languagetool/5.9/libexec/languagetool-commandline.jar'
" Enable all categories
let g:languagetool_enable_categories = 'PUNCTUATION,TYPOGRAPHY,CASING,COLLOCATIONS,CONFUSED_WORDS,CREATIVE_WRITING,GRAMMAR,MISC,MISUSED_TERMS_EU_PUBLICATIONS,NONSTANDARD_PHRASES,PLAIN_ENGLISH,TYPOS,REDUNDANCY,SEMANTICS,TEXT_ANALYSIS,STYLE,GENDER_NEUTRALITY'
" Enable all special rules that cannot be enabled via category
let g:languagetool_enable_rules = 'AND_ALSO,ARE_ABLE_TO,ARTICLE_MISSING,AS_FAR_AS_X_IS_CONCERNED,BEST_EVER,BLEND_TOGETHER,BRIEF_MOMENT,CAN_NOT,CANT_HELP_BUT,COMMA_WHICH,EG_NO_COMMA,ELLIPSIS,EXACT_SAME,HONEST_TRUTH,HOPEFULLY,IE_NO_COMMA,IN_ORDER_TO,I_VE_A,NEGATE_MEANING,PASSIVE_VOICE,PLAN_ENGLISH,REASON_WHY,SENT_START_NUM,SERIAL_COMMA_OFF,SERIAL_COMMA_ON,SMARTPHONE,THREE_NN,TIRED_INTENSIFIERS,ULESLESS_THAT,WIKIPEDIA,WORLD_AROUND_IT'
let g:languagetool_lang='en-GB'

" Git / Rubarb / Signify
" Change these if you want
" default updatetime 4000ms is not good for async update
set updatetime=100
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'
" I find the numbers distracting
"let g:signify_sign_show_count = 0
"let g:signify_sign_show_text = 1
" Jump though hunks
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)
nmap <leader>gJ 9999<leader>gJ
nmap <leader>gK 9999<leader>gk
nnoremap <silent> <Leader>st :SignifyToggle<CR>
" If you like colors instead
highlight SignifySignAdd                  ctermbg=darkgreen                guibg=#00ff00
highlight SignifySignDelete ctermfg=black ctermbg=red    guifg=#ffffff guibg=#ff0000
highlight SignifySignChange ctermfg=black ctermbg=yellow guifg=#000000 guibg=#ffff00
" fugitive Conflict Resolution
set diffopt+=followwrap
nnoremap <leader>gd3 :Gvdiffsplit!<CR> " three-way diff split
nnoremap dgh :diffget //2<CR>
nnoremap dgl :diffget //3<CR>

" Which Key
" By default timeoutlen is 1000 ms
set timeoutlen=500
"let g:mapleader = "\<Space>"
"let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

"TagBar
nmap <F8> :TagbarToggle<CR>
let g:tagbar_show_linenumbers=2
let g:tagbar_autoclose = 0
let g:tagbar_autoshowtag = 1 " Highlight the active tag
let g:tagbar_map_showproto = '\'
" autocmd BufEnter * nested :call tagbar#autoopen(0) "autoopen tagbar

" Vim-autoformat
noremap <F4> :Autoformat<CR>

" Overwriting highlights
highlight SpellBad term=NONE cterm=underline ctermbg=NONE ctermfg=DarkMagenta
" resetting highlight options
set hlsearch

" taskwiki Configuration
let g:taskwiki_disable_concealcursor="yes"
" let g:taskwiki_maplocalleader=" t"
let g:taskwiki_maplocalleader=","
let g:taskwiki_split_max_height=18

" PdfAnnots mapping
nnoremap <leader>pa <cmd>call PdfAnnots()<cr>

" vim-bufkill
noremap <Leader>n :bn<CR>
noremap <Leader>p :bp<CR>
noremap <Leader>b :ls<CR>
noremap <Leader>bd :BD<CR>

" fzf
noremap <Leader>ff :Files<CR>
noremap <Leader>fb :Buffers<CR>
noremap <Leader>fl :Lines<CR>
noremap <Leader>fh :History<CR>
noremap <Leader>fj :Jumps<CR>

" vim-pomodoro
" Duration of a pomodoro in minutes (default: 25)
" let g:pomodoro_time_work = 25
let g:pomodoro_time_work = 25
" Duration of a break in minutes (default: 5)
let g:pomodoro_time_slack = 5
" Log completed pomodoros, 0 = False, 1 = True (default: 0)
let g:pomodoro_do_log = 1
" Path to the pomodoro log file (default: /tmp/pomodoro.log)
let g:pomodoro_log_file = "~/.vim/logs/pomodoro.log"
"Notifications outside vim can be enabled through the option
"g:pomodoro_notification_cmd. For instance, to play a sound file after each
"completed pomodoro or break, add something like
" let g:pomodoro_notification_cmd = "mpg123 -q ~/.vim/pomodoro-notification.mp3"
" let g:pomodoro_notification_cmd = 'zenity --notification --text="Pomodoro finished"'
" let g:pomodoro_notification_cmd = "osascript -e 'display notification \"Pomodoro Finished\" with title \"Vim Notification\" sound name \"Hero\"'; play /System/Library/Sounds/Hero.aiff"
let g:pomodoros_before_reward = 4
" show icons and remaining time on bar
let g:pomodoro_use_devicons = 1
let g:pomodoro_show_time_remaining = 1
nnoremap <leader>p+ :PomodoroStart<CR>
nnoremap <leader>ps :PomodoroStatus<CR>
nnoremap <leader>p- :PomodoroStop<CR>

" vim-taskwarrior pluging config
" let g:task_log_directory=expand('~') . 'Dropbox/Working-On/Notes/VimWiki/tasks/.task'
let g:task_report_name='all'
" default task report type
" let g:task_report_name     = 'next'
" " custom reports have to be listed explicitly to make them available
" let g:task_report_command  = []
" " whether the field under the cursor is highlighted
" let g:task_highlight_field = 1
" " can not make change to task data when set to 1
" let g:task_readonly        = 0
" " vim built-in term for task undo in gvim
" let g:task_gui_term        = 1
" " allows user to override task configurations. Seperated by space. Defaults
" to ''
" let g:task_rc_override     = 'rc.defaultwidth=999'
let g:task_rc_override='rc.defaultwidth=999'
" " default fields to ask when adding a new task
" let g:task_default_prompt  = ['due', 'description']
" " whether the info window is splited vertically
" let g:task_info_vsplit     = 0
" " info window size
" let g:task_info_size       = 15
" " info window position
" let g:task_info_position   = 'belowright'
" " directory to store log files defaults to taskwarrior data.location
" let g:task_log_directory   = '~/.task'
" " max number of historical entries
" let g:task_log_max         = '20'
" " forward arrow shown on statusline
" let g:task_left_arrow      = ' <<'
" " backward arrow ...
" let g:task_left_arrow      = '>> '"

" Zotcite Config
let g:zotcite_filetypes = ['markdown', 'pandoc', 'rmd', 'quarto', 'vimwiki', 'tex', 'vimtex']
let zotcite_open_in_zotero = 1
let zotcite_conceallevel = 2

