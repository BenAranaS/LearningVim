# Learning VIM
### Openning Vim
Command | Description
------------ | -------------
`vi -o file1.txt file2.txt` | open two files in two windows
`vi -u NONE` | open without settings or plugins
`vi file.xt +8  `| open file file.txt and go straight to line 8

### Build-in diff mode on vim
Command | Description
--------- | -------------
`vim +d file1.txt file2.txt` |
`do`| diff obtain
`dp`| diff put
`:diffsplit` |
`:vert diffsplit` |
`:set dip+=vertical `| diffopt=filler, vertical

##### Direct modifications on files
Command | Description
--------- | -------------
`vim hello.txt +8` |  open hello.txt and go to line 8
`vim hello.txt +Kramm` | open hello.txt and go to first Kramm
`vim +1,2d +wq conway.txt`|remove first two lines from conway.txt
`vim +4d +wq file.txt`| remove line 4 from file.xt

### Zip files
Command | Description
--------- | -------------
`vim weather.zip` | select and enter, edit as usual

### Motions & Navigation
Command | Description
------------ | -------------
`h j k l` | instead of move arrows
`w` | move to the beginning of next word
`W` | move to the beginning of next big word
`e` | move to the end of next word
`E` | move to the end of next big word
`b` | move to the beginning of previous word
`B` | move to the beginning of previous big word
`ge` | move to the end of the previous word
`iw `| inner word
`it `| inner tag
`i" `| inner quotes
`ip `| inner paragraph
`H` | move cursor to the top of the window
`M  `| = to the middle of the window
`L  `| = to the bottom of the window
`ctrl+f `| move a screen forward a full page
`ctrl+b`| move a screen backwards a full page
`ctrl+u `| move a screen forward a half page
`ctrl+d`| move a screen backwards a half page
`ctrl+e `| move a screen upward one line
`ctrl+y`| move a screen downwards one line
`zt` | moves display cursor on the window's top
`zz` | center the cursor on the window
`zb` | moves display to set cursor on the window's bottom
`a`| all
`i`| in
`t`| 'til
`T`| 'til backward
`f`| find forward
`F`| find backward
`/word `| search for word
`/*ord` | RegEx search
`n, #`  | move to next or previous word
`?`| search backwards
`)`| move to next sentence
`(`| move to previous sentence
`}`| move to next paragraph
`{`| move to previous paragraph
`gg `| move to beginning of file
`G `| move to end of file
`:linenumber   `| go to line linenumber
`$`| go to end of line
`0`| go to beginning of line
`^` | go to non-space first character of the line
`g_` | last non-space character of the line
`@:` | repeat last command from normal mode
`*` | search for the current word and takes you to the next occurrence
`%` | go to the pair of ( or )
`gU` | all to uppercase
`gu` | all to lowercase
`gj gk` | Move cursor up and down to wrapped part of a line
`g0 g$` | Move cursor to the first and last letter of a wrapped line
`~ g~` | Switch capitalisation of a letter
`:changes` | shows the list of changes
`g;` | Move to the last change
`g,` | Move to the next (more recent) change
`gv` | Reselect previous selected text
`gJ` | Joining lines without leaving spaces.
`g&`  | Rerun substitute command for all lines
`vi(` | Select everything within "("
`va(` | Select everything within "(" including (
`yi(` | yank/copy all within the (
`ya(` | yank/copy all, including (, within (
`ZZ` | Write changes and exit
`ZQ` | Quit current file and exit (eq. to :q!)

### Edition Commands
Command | Description
------------ | -------------
`d`| delete
`c`| change ( delete and place in insert mode)
`y  `| yank, copy
`s` | substitute current char
`S` | substitute current line
`v`| visually select
`w, b, e`| write(save) buffer edit
`3j6w  `| move 3 lines down, 6 words right *
`dw `| delete word
`u `| undo
`ctrl + r`| redo
`d) `| delete sentence
`dd `| delete line
`D` | delete characters under the cursor until the end of the line
`d/Genius `| delete until word Genius
`r` | replace character under the cursor
`R` | enter Insert Mode replacing characters
`yw `| copy word
`ctrl + r + register`| paste text from register
`ctrl + a` |  paste text from register '.'
`ctrl + p` | open completion menu
`ctrl + x` | especial completion mode in insert submode
`ctrl+x + ctrl+]` | tag insert mode
`ctrl+x + ctrl+p` | autocomplete from previous context
`ctrl+x + ctrl+n` | autocomplete from next context
`ctrl+x + ctrl+f` | autocomplete file name
`ctrl+x + ctrl+l` | autocomplete line
`ctrl+x + ctrl+o` | all autocompletion
`set complete=.,w,b,u,t,i,kspell` |  (this file, window, buffer, ... spell when enabled
`p  `| paste on place
`P `| paste before cursor
`yy`| copy line
`x`| delete character under cursor
`X`| delete character before cursor
`xp`| exchange letters
`c `| change
`cw`| change word
`c/word`| change until word
`J` | join line to one above
`gg=G` | fix file indentation

### yank to registers
Command | Description
------------ | -------------
`"Ayy `| yank into register A
`"Ap  `| paste from register A
`"AgP `| paste from register A before cursor and put cursor at the end of paste text

## The read Command
Command | Description
------------ | -------------
`:r` | read a file and dump it content in current buffer
`:-1r file.txt `| adds content of file.txt at the beginning of file

### Substitute by searching
Command | Description
------------ | -------------
`:s/word/newword/g` | substitute word by new word, as many times it appears in line
`:s/word/newword/gc`| ask for confirmation

### in visual mode
Command | Description
------------ | -------------
`V`| select current line
`ctrl + v `| visual block
`ctrl+v l4j `| select one column and 4 rows
`ctrl+v l4j c - esc `| and chance space by -
`7G `| go to line 7
`O `| add a line above and go to insert mode
`o `| add a line below and insert there
`A `| start writing at the end of line
`a `| insert after the current location of cursor
`i `| insert where cursor is
`I `| Insert in the beginning of line
`s` | remove character and go to insert mode
`S` | delete line and go to insert mode
`gi` | Go to last edited position in insert mode

### Opening files referenced in text
Command | Description
--------- | -------------
`gf `|go to file or url
`g shift f`| open on line reported by warning or error
`gx `| open URL under cursor

### MARKS
Command | Description
------------ | -------------
`ma `| create mark a
`mA`| create mark A
`'a`| go to mark a

### TAGS
Command | Description
------------ | -------------
`ctrl+o `| go to previous jump
`ctrl+i `| move to more recent jumps
`:jumps` | show list of jumps
`:clearjumps` | clear jump list
`'.`| move to last edited line
`:MakeTags` | user-defined, create tags (requires ctags)
`ctrl + ]` | jump to tag under cursor
`g ctrl + ]` | ambiguous tags
`ctrl + t` | jump back up the tag stack

### Macros
Command | Description
------------ | -------------
`qq` | Start recording on register q
`Esc + q` | Stop recording
`@q` | apply macro on register q to current position
`:5,10norm! @q` | apply macro in q on lines 5 to 10

## Multiple windows
### buffer & window
Command | Description
------------ | -------------
`:split` | horizontally split window
`ctrl+w` | split window command prefix?
`ctrl+ww` | move to other window
`ctrl+wc`| close window
`:close` | close window
`:wa` | Write all unsaved buffers, but keep Vim open.
`:xa or :wqa` | Write all unsaved buffers, and close Vim.
`:qa` | Quit Vim but stop if there are unsaved buffers.
`:qa!` | Quit Vim and discard unsaved buffers.
`:new file.txt` | create file.txt
`:e file.txt` | open/edit file.txt
`:bd `| buffer delete
`:e tab` | autocomplete when using <T>
`:e d tab` |
`:e .` | open file explorer in current location
`:e!` | refresh content of buffer from disk
`:checktime`| manually refresh file
`:ls`| list buffers open
`:bn`| buffer next buffer
`:bp`| move to previous buffer
`:b file.txt`| select buffer
`:b 2 `| go to buffer 2
`ctrl+g`| show file details line
`:b file.tx` | move to buffer with file.txt
`:b tab` | autocomplete with opened buffers
`:b prefix tab` | autocomplete buffer starting with prefix
`ctrl+w + #`| Increase horizontal window size
`ctrl+ w > `| increase vertical window size
`ctrl+ w <` | decrease vertical window size
`:30vs  `| vertical split from column 30
`:vs `| vertical split
`ctrl + ^` | caret: go to previous opened file

## Personalised Commands
Shortcut | Description
--------- | -------------
`leader dd`| open netrw on same dir as current file
`leader da`| open netrw on home dir
`leader p`| Switch to previous buffer
`leader n`| Switch to next buffer
`leader bd`| delete current buffer
`leader b`| list buffers
`,[`| go to previous section on latex
`,[`| go to previous section on latex

## netrw
Command | Description
------------ | -------------
`:Explore` | launch netrw explorer
`Enter` | opens a dir or file
`I` | toggle banner
`%` | create a new file
`-` | go to parent dir
`u` | go to previous dir in history
`p` | opens a preview window
`D` | delete file of empty dir
`d` | creates a directory
`R` | rename file
`v` | open file on new vertical window
`t` | open file on new tab
`gh` | hide/unhide hidden files, dot-files
`cd` | make browsing dir current dir
`gn` | Make current dir the tree root
`mb` | bookmark current dir
`gb` | go to previous bookmarked dir
`qb` | List bookmarked dir and history

### Configuration files
User defined configuration file: `~/.vimrc`
`:source ~/.vimrc` |

### Settings - ~/.vimrc
Setting | Description
--------- | -------------
`set number` |
`:set relativenumber` |
`:set notrelativenumber` |
`set ruler` |
`set nocompatible` |
`syntax on` |
`filetype plugin on` |
`set autoread `| automatically refresh
`set cursorline `| Highligh the current line
`set cursorcolumn  `| highligh current column
`noremap <TAB> ) `| use tab to move to next sentence
`noremap <S-TAB> ( `| use shift tab to move to the previous sentence
`set tabstop=2 shiftwidth=2 expandtab` |
`:retab` |
`noremap <SPACE> <C-F> `| use space to scroll down
`set diffopt+=vertical` |show diff side by side
`:help option-summary` |
`:set` |
`:set ic`| ignore case when searching
`:set hls`| highlight the matches
`:noh `|no highlight
`:incsearch `| search as typing
`:set clipboard=unnamedplus `|use same clipboard as the system
`:syntax on` |
`:colorscheme morning` |

#### Abbreviations
Command | Description
--------- | -------------
`:abb _ys *Youngstart*:` | This is a test
`ctrl + v`| to avoid expansion of abb
`:set paste `| to avoid wrong formatting when pasting
`:set nopaste` |

## Running commands
Command | Description
--------- | -------------
`:! ls` |
`:com! Py ! python %`| % is expanded to the name eof the file
`:Py`| run the command
`:comm! Wc !wc %`| run wc on the current file

### Using OS Commands
Command | Description
--------- | -------------
`:!date` |
`:e file.txt` |
`:r !ls` |
`:e file.json` |
`:%! jq . `| run current file (%) over jq,  formatting jsons
`vimtutor` |
`command! Dts :%s/\s\+$//e ` | Delete trailing spaces command

---

##### Spelling
Setting | Description
--------- | -------------
`:set spell spelllang=en_us` |
`:setlocal spell spelllang=en_us,en_gb,es_mx` |

Command | Description
--------- | -------------
`zG `| store new words in internal wordlist
`zg `| add word under cursor to dictionary
`zw `| remove the word from dictionary
`zW `| stores the words in internal wordlist which is global
`z= `| load spell suggestions
`Ctrl + x + s `| in insert mode to load spell suggestions.
`:spellrepall  `| command to apply the same change to all words that match.
`]s  `| find the misspelled word after the cursor
`[s `| find the misspelled word before the cursor
`]S  `| same as ]s but only stop at bad words.
`[S  `| same
`:set nospell `| stop checking spell

##### Latex Suite
vi /usr/share/doc/vim-latexsuite/README.Debian
Command | Description
--------- | -------------
 `filetype plugin on` |
 `set grepprg=grep\ -nH\ $*` |
 `filetype indent on` |
 `let g:tex_flavor='latex'` |
http://vim-latex.sourceforge.net/documentation/latex-suite/greek-letter-mappings.html

### LatexSuite Commands
Command | Description
--------- | -------------
`^^ `| gets changed by ^{}
`F5 `| insert environment
` "`p" "`8 "" "`/" `| abbreviation for pi, inf, fracc
`F9`| insert references \label \cite
`ctrl + j `| jump to the next input needed
`:TTemplate`| Select from a list of latex templates
`FEM`| emph
`FTS`| bold
`FBF` | bfseries
``sf`| emph selected text
``st`| bold selected text
`SSE`| section
`SSS`| subsection
`SS2`| subsubsection
`EEN` | enumerate
``D `|  \Delta
`[[` | go to previous section
`]]` | go to previous section
`\ll `| Compile
`\lv `| Visualise compiled file
`za`| fold and unfold
`set nofoldenable` |
`\rf `| fold up the entire file

## VIMTEX
### From :h vimtex-default-mappings
   LHS          |    RHS           |                               MODE~
  ---|---|---
   `<localleader>li`  | `<plug>(vimtex-info)` |                           `n`
   `<localleader>lI`  | `<plug>(vimtex-info-full)` |                      `n`
   `<localleader>lt`  | `<plug>(vimtex-toc-open)` |                       `n`
   `<localleader>lT`  | `<plug>(vimtex-toc-toggle)` |                     `n`
   `<localleader>lq`  | `<plug>(vimtex-log)` |                            `n`
   `<localleader>lv`  | `<plug>(vimtex-view)` |                           `n`
   `<localleader>lr`  | `<plug>(vimtex-reverse-search)` |                 `n`
   `<localleader>ll`  | `<plug>(vimtex-compile)` |                        `n`
   `<localleader>lL`  | `<plug>(vimtex-compile-selected)` |               `nx`
   `<localleader>lk`  | `<plug>(vimtex-stop)` |                           `n`
   `<localleader>lK`  | `<plug>(vimtex-stop-all)` |                       `n`
   `<localleader>le`  | `<plug>(vimtex-errors)` |                         `n`
   `<localleader>lo`  | `<plug>(vimtex-compile-output)` |                 `n`
   `<localleader>lg`  | `<plug>(vimtex-status)` |                         `n`
   `<localleader>lG`  | `<plug>(vimtex-status-all)` |                     `n`
   `<localleader>lc`  | `<plug>(vimtex-clean)` |                          `n`
   `<localleader>lC`  | `<plug>(vimtex-clean-full)` |                     `n`
   `<localleader>lm`  | `<plug>(vimtex-imaps-list)` |                     `n`
   `<localleader>lx`  | `<plug>(vimtex-reload)` |                         `n`
   `<localleader>lX`  | `<plug>(vimtex-reload-state)` |                   `n`
   `<localleader>ls`  | `<plug>(vimtex-toggle-main)` |                    `n`
   `<localleader>la`  | `<plug>(vimtex-context-menu)` |                   `n`
   `dse`              | `<plug>(vimtex-env-delete)` |                     `n`
   `dsc`              | `<plug>(vimtex-cmd-delete)` |                     `n`
   `ds$`              | `<plug>(vimtex-env-delete-math)` |                `n`
   `dsd`              | `<plug>(vimtex-delim-delete)` |                   `n`
   `cse`              | `<plug>(vimtex-env-change)` |                     `n`
   `csc`              | `<plug>(vimtex-cmd-change)` |                     `n`
   `cs$`              | `<plug>(vimtex-env-change-math)` |                `n`
   `csd`              | `<plug>(vimtex-delim-change-math)` |              `n`
   `tsf`              | `<plug>(vimtex-cmd-toggle-frac)` |                `nx`
   `tsc`              | `<plug>(vimtex-cmd-toggle-star)` |                `n`
   `tse`              | `<plug>(vimtex-env-toggle-star)` |                `n`
   `ts$`              | `<plug>(vimtex-env-toggle-math)` |                `n`
   `tsd`              | `<plug>(vimtex-delim-toggle-modifier)` |          `nx`
   `tsD`              | `<plug>(vimtex-delim-toggle-modifier-reverse)` |  `nx`
   `<F7>`             | `<plug>(vimtex-cmd-create)` |                     `nxi`
   `]]`               | `<plug>(vimtex-delim-close)` |                    `i`
   `<F8>`             | `<plug>(vimtex-delim-add-modifiers)` |            `n`
   `ac`               | `<plug>(vimtex-ac)` |                             `xo`
   `ic`               | `<plug>(vimtex-ic)` |                             `xo`
   `ad`               | `<plug>(vimtex-ad)` |                             `xo`
   `id`               | `<plug>(vimtex-id)` |                             `xo`
   `ae`               | `<plug>(vimtex-ae)` |                             `xo`
   `ie`               | `<plug>(vimtex-ie)` |                             `xo`
   `a$`               | `<plug>(vimtex-a$)` |                             `xo`
   `i$`               | `<plug>(vimtex-i$)` |                             `xo`
   `aP`               | `<plug>(vimtex-aP)` |                             `xo`
   `iP`               | `<plug>(vimtex-iP)` |                             `xo`
   `am`               | `<plug>(vimtex-am)` |                             `xo`
   `im`               | `<plug>(vimtex-im)` |                             `xo`
   `%`                | `<plug>(vimtex-%)` |                              `nxo`
   `]]`               | `<plug>(vimtex-]])` |                             `nxo`
   `][`               | `<plug>(vimtex-][)` |                             `nxo`
   `[]`               | `<plug>(vimtex-[])` |                             `nxo`
   `[[`               | `<plug>(vimtex-[[)` |                             `nxo`
   `]m`               | `<plug>(vimtex-]m)` |                             `nxo`
   `]M`               | `<plug>(vimtex-]M)` |                             `nxo`
   `[m`               | `<plug>(vimtex-[m)` |                             `nxo`
   `[M`               | `<plug>(vimtex-[M)` |                             `nxo`
   `]n`               | `<plug>(vimtex-]n)` |                             `nxo`
   `]N`               | `<plug>(vimtex-]N)` |                             `nxo`
   `[n`               | `<plug>(vimtex-[n)` |                             `nxo`
   `[N`               | `<plug>(vimtex-[N)` |                             `nxo`
   `]r`               | `<plug>(vimtex-]r)` |                             `nxo`
   `]R`               | `<plug>(vimtex-]R)` |                             `nxo`
   `[r`               | `<plug>(vimtex-[r)` |                             `nxo`
   `[R`               | `<plug>(vimtex-[R)` |                             `nxo`
   `]/`               | `<plug>(vimtex-]/` |                              `nxo`
   `]*`               | `<plug>(vimtex-]star` |                           `nxo`
   `[/`               | `<plug>(vimtex-[/` |                              `nxo`
   `[*`               | `<plug>(vimtex-[star` |                           `nxo`
   `K`                | `<plug>(vimtex-doc-package)` |                    `n`

Imap   | Action  | Context
---|---|---
`0   |   '\emptyset'                    | vimtex#imaps#wrap_math
   `6   |   '\partial'                     | vimtex#imaps#wrap_math
   `8   |   '\infty'                       | vimtex#imaps#wrap_math
   `=   |   '\equiv'                       | vimtex#imaps#wrap_math
   `\   |   '\setminus'                    | vimtex#imaps#wrap_math
   `.   |   '\cdot'                        | vimtex#imaps#wrap_math
   `*   |   '\times'                       | vimtex#imaps#wrap_math
   `<   |   '\langle'                      | vimtex#imaps#wrap_math
   `>   |   '\rangle'                      | vimtex#imaps#wrap_math
   `H   |   '\hbar'                        | vimtex#imaps#wrap_math
   `+   |   '\dagger'                      | vimtex#imaps#wrap_math
   `[   |   '\subseteq'                    | vimtex#imaps#wrap_math
   `]   |   '\supseteq'                    | vimtex#imaps#wrap_math
   `(   |   '\subset'                      | vimtex#imaps#wrap_math
   `)   |   '\supset'                      | vimtex#imaps#wrap_math
   `A   |   '\forall'                      | vimtex#imaps#wrap_math
   `E   |   '\exists'                      | vimtex#imaps#wrap_math
  `jj   |   '\downarrow'                   | vimtex#imaps#wrap_math
  `jJ   |   '\Downarrow'                   | vimtex#imaps#wrap_math
  `jk   |   '\uparrow'                     | vimtex#imaps#wrap_math
  `jK   |   '\Uparrow'                     | vimtex#imaps#wrap_math
  `jh   |   '\leftarrow'                   | vimtex#imaps#wrap_math
  `jH   |   '\Leftarrow'                   | vimtex#imaps#wrap_math
  `jl   |   '\rightarrow'                  | vimtex#imaps#wrap_math
  `jL   |   '\Rightarrow'                  | vimtex#imaps#wrap_math
   `a   |   '\alpha'                       | vimtex#imaps#wrap_math
   `b   |   '\beta'                        | vimtex#imaps#wrap_math
   `c   |   '\chi'                         | vimtex#imaps#wrap_math
   `d   |   '\delta'                       | vimtex#imaps#wrap_math
   `e   |   '\epsilon'                     | vimtex#imaps#wrap_math
   `f   |   '\phi'                         | vimtex#imaps#wrap_math
   `g   |   '\gamma'                       | vimtex#imaps#wrap_math
   `h   |   '\eta'                         | vimtex#imaps#wrap_math
   `i   |   '\iota'                        | vimtex#imaps#wrap_math
   `k   |   '\kappa'                       | vimtex#imaps#wrap_math
   `l   |   '\lambda'                      | vimtex#imaps#wrap_math
   `m   |   '\mu'                          | vimtex#imaps#wrap_math
   `n   |   '\nu'                          | vimtex#imaps#wrap_math
   `p   |   '\pi'                          | vimtex#imaps#wrap_math
   `q   |   '\theta'                       | vimtex#imaps#wrap_math
   `r   |   '\rho'                         | vimtex#imaps#wrap_math
   `s   |   '\sigma'                       | vimtex#imaps#wrap_math
   `t   |   '\tau'                         | vimtex#imaps#wrap_math
   `y   |   '\psi'                         | vimtex#imaps#wrap_math
   `u   |   '\upsilon'                     | vimtex#imaps#wrap_math
   `w   |   '\omega'                       | vimtex#imaps#wrap_math
   `z   |   '\zeta'                        | vimtex#imaps#wrap_math
   `x   |   '\xi'                          | vimtex#imaps#wrap_math
   `D   |   '\Delta'                       | vimtex#imaps#wrap_math
   `F   |   '\Phi'                         | vimtex#imaps#wrap_math
   `G   |   '\Gamma'                       | vimtex#imaps#wrap_math
   `L   |   '\Lambda'                      | vimtex#imaps#wrap_math
   `P   |   '\Pi'                          | vimtex#imaps#wrap_math
   `Q   |   '\Theta'                       | vimtex#imaps#wrap_math
   `S   |   '\Sigma'                       | vimtex#imaps#wrap_math
   `U   |   '\Upsilon'                     | vimtex#imaps#wrap_math
   `W   |   '\Omega'                       | vimtex#imaps#wrap_math
   `X   |   '\Xi'                          | vimtex#imaps#wrap_math
   `Y   |   '\Psi'                         | vimtex#imaps#wrap_math
  `ve   |   '\varepsilon'                  | vimtex#imaps#wrap_math
  `vf   |   '\varphi'                      | vimtex#imaps#wrap_math
  `vk   |   '\varkappa'                    | vimtex#imaps#wrap_math
  `vq   |   '\vartheta'                    | vimtex#imaps#wrap_math
  `vr   |   '\varrho'                      | vimtex#imaps#wrap_math
   `#/`   |   vimtex#imaps#style_math("slashed") | vimtex#imaps#wrap_math
   `#b`   |   vimtex#imaps#style_math("mathbf") | vimtex#imaps#wrap_math
   `#f`   |   vimtex#imaps#style_math("mathfrak") | vimtex#imaps#wrap_math
   `#c`   |   vimtex#imaps#style_math("mathcal") | vimtex#imaps#wrap_math
   `#-`   |   vimtex#imaps#style_math("overline") | vimtex#imaps#wrap_math
   `#B`   |   vimtex#imaps#style_math("mathbb") | vimtex#imaps#wrap_math
   ``   |   '``'                           | vimtex#imaps#wrap_trivial


## Syntastic
Command | Description
--------- | -------------
`:Errors` | Load errors into vim
`:lnext` | go to next error in the Location list
`:lprev` | go to previous error
`]l` | go to next error remap needed
`[l` | go to previous error
`<leader> [` | go to next error remap needed
`<leader> ]` | go to previous error

## Surround
Command | Description
--------- | -------------
`ds"` | delete surrounding \"
`cs"` | change surrounding \"
`ysiw]` | add surrounding [] to iw
`[` | adds spaces
`]` | do not add spaces

# Documentation and more info
## No Plugin
https://www.youtube.com/watch?v=XA2WjJbmmoM&t=1029s
https://github.com/changemewtf/no_plugins/blob/master/no_plugins.vim

## Mastering the Vim Language
Source: https://www.youtube.com/watch?v=wlR5gYd6um0&t=1507s

### Marked
Command | Description
--------- | -------------
`:MarkedOpen[!]  `|        Open the current Markdown buffer in Marked. Call with a bang to prevent Marked from stealing focus from Vim. Documents opened in Marked are tracked and closed automatically when you quit Vim.
`:MarkedQuit     `|        Close the current Markdown buffer in Marked. Quits Marked if there are no other documents open.
`:MarkedToggle[!] `|       If the current Markdown buffer is already open in Marked, calls :MarkedQuit. If not, calls :MarkedOpen[!].

## Startify
Command | Description
--------- | -------------
`:SLoad` | load a session
`:SSave` |  save a session
`:SDelete` |delete a session
`:SClose` | close current session

## Using Plug-Vim

## Signify
Command | Description
--------- | -------------
`:SignifyToggle`|
`:SignifyToggleHighlight`|


# GIT [Source](https://www.chrisatmachine.com/blog/category/neovim/12-git-integration)
## Git
Command | Description
--------- | -------------
`:Git add`|
`:Git commit`|
`:Git blame`|
`Gdiffsplit`|
`GRemove`|
`GBrowse`|

## GV - A git commit browser
Command | Description
--------- | -------------
`:GV`|
`:GV!`|         # will only list commits that affected the current file
`:GV?`|         # fills the location list with the revisions of the current file
`:GV`|          # or :GV? can be used in visual mode to track the changes in the selected lines.

## git-fugitive conflict resolution
[Git Merge Medium](https://medium.com/prodopsio/solving-git-merge-conflicts-with-vim-c8a8617e3633)
Command | Description
--------- | -------------
`<leader>gd3` | 3-way diff split
`dgh` | Get diff from left
`dgl` | Get diff from right
`[c` | jump to previous git hunk
`]c` | jump to next git hunk


## Which Key [Source](https://www.chrisatmachine.com/blog/category/neovim/15-which-key)
Command | Description
--------- | -------------
`<leader> {char}`|

## Replace/Refactor variable name
Place cursor at name to rename and type
Command | Description
--------- | -------------
`gd `| Goto local Declaration.  When the cursor is on a local variable, this command will jump to its declaration.  First Vim searches for the start of the current function, just like "[[".  If it is not found the search stops in line 1.  If it is found, Vim goes back until a blank line is found.  From this position Vim searches for the keyword under the cursor, like with "*", but lines that look like a comment are ignored (see 'comments' option).  Note that this is not guaranteed to work, Vim does not really check the syntax, it only searches for a match with the keyword.  If included files also need to be searched use the commands listed in |include-search|.  After this command |n| searches forward for the next match (not backward).  {not in Vi}
`gD` | Goto global Declaration.  When the cursor is on a global variable that is defined in the file, this command will jump to its declaration.  This works just like "gd", except that the search for the keyword always starts in line 1.  {not in Vi} Then c (change) + gn new_name esc
`gn` | Search forward for the last used search pattern, like with `n`, and start Visual mode to select the match.  If the cursor is on the match, visually selects it.  If an operator is pending, operates on the match.  E.g., "dgn" deletes the text of the next match.  If Visual mode is active, extends the selection until the end of the next match.
`.`| (repeat) one or more times to rename next occurrence(s)
`:%norm` | to rename all occurrences in the buffer at once.
source:https://vi.stackexchange.com/questions/18004/renaming-variables


## Vim-taskwarrior (from docs)
Command | Description
--------- | -------------
`A`       | add annotation
`x`       | delete annotation.
`o`       | open the annotation as a file.
`a`       | create new task.
`d`       | set the task in current line done.
`D`       | delete task
`<Del>`   | delete field/annotation/task
`<Space>` | select/remove current task to selected list
`m`       | modify current field.
`M`       | modify current task.
`f`       | change filter
`r`       | change report type
`c`       | execute a command for selected tasks/current task
`R`       | refresh the report/clear selected list
`q`       | quit buffer.
`X`       | clear all completed task.
`p`       | duplicate selected tasks
`u`       | undo last change.
`+`       | start task
`-`       | stop task
`S`       | sync with taskd server.
`s`       | sort by this column primarily.(if already of the highest priority then switch the polarity)
`<`       | sort by this column increasingly.(if already increasingly then increase its priority)
`>`       | sort by this column decreasingly.(if already decreasingly then decrease its priority)
`H`       | cycle column format left
`L`       | cycle column format right
`J`       | next historical entry
`K`       | previous historical entry
`B`       | create a bookmark for current combination
`<F1>`    | view the documents
`<CR>`    | show task info.
`<TAB>`   | jump to the next column
`<S-TAB>` | jump to the previous column
`<right>` | jump to the next non-empty column
`<left>`  | jump to the previous non-empty column
`d`       | set done to all visual selected tasks
`D`       | delete all visual selected tasks
`<CR>`    | show information about visual selected tasks
`<Space>` | add visual selected tasks to selected list"

## Zotcite -  Zotero/Vim Integration
Command | Description
--------- | -------------
'leader+zo' | to open the reference's attachment as registered in Zotero's database.
'leader+zi' | to see in the status bar the last name of all authors, the year, and the title of the reference.
'leader+za' | to see all fields of a reference as stored by Zotcite.
'leader+zy' | to see how the reference will be converted into YAML.
'leader+zv' | to view the (pdf or html) document generated from the current (Markdown, Rmd, or Quarto) document.
':Zannotations key -10' | extract annotations made with zotero's build-in pdf viewer on doc with autor or title key, correct by -10pages
':Znote key' | extract notes from Zotero
':Zpdfnote' | extract annotations (notes and highlighted texts) that were inserted into a PDF document by an external PDF viewer
':Zseek key' | see what references have either a last author's name or title matching the pattern being seeked

