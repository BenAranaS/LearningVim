# Learning VIM
## Openning Vim

Command | Description
------------ | -------------
`vi -o file1.txt file2.txt` | open two files in two windows
`vi -u NONE` | open without settings or plugins
`vi file.xt +8  `| open file file.txt and go straight to line 8

## Motions & Navigation
Command | Description
------------ | -------------
`h j k l` | instead of move arrows
`w` | move to the beginning of next word 
`W` | move to the beginning of next big word 
`e` | move to the end of next word 
`E` | move to the end of next big word 
`b` | move to the beginning of previous word 
`B` | move to the beginning of previous big word 
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

## netrw
Command | Description
------------ | -------------
`:Explore` | launch netrw explorer
`Enter` | opens a dir or file
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
`md` | bookmark current dir
`gb` | go to previous bookmarked dir 
`qb` | List bookmarked dir and history
`%` | open new file in current dir





## Edition Commands
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
`d/Genius `| delete until word Genius
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
`x `| delete word
`xp`| exchange letters
`c `| change
`cw`| change word
`c/word`| change until word
`J` | join line to one above

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

### yank to registers
Command | Description
------------ | -------------
`"Ayy `| yank into register A
`"Ap  `| paste from register A
`"AgP `| paste from register A before cursor and put cursor at the end of paste text

### Substitute by searching
Command | Description
------------ | -------------
`:s/word/newword/g` | substitute word by new word, as many times it appears in line
`:s/word/newword/gc`| ask for confirmation

## MARKS
Command | Description
------------ | -------------
`ma `| create mark a
`mA`| create mark A 
`'a`| go to mark a

## TAGS
Command | Description
------------ | -------------
`ctrl+o `| go to move backward 
`ctrl+i `| move backwards
`:jumps` | show list of jumps
`:clearjumps` | clear jump list
`'.`| move to last edited line
`:MakeTags` | user-defined, create tags (requires ctags)
`ctrl + ]` | jump to tag under cursor
`g ctrl + ]` | ambiguous tags
`ctrl + t` | jump back up the tag stack

## Macros

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

## The read Command
`:r` | read a file and dump it content in current buffer
`:-1r file.txt `| adds content of file.txt at the beginning of file

## Configuration files
User defined configuration file: `~/.vimrc`
`:source ~/.vimrc` | 

### Settings
Setting | Description
--------- | -------------
`set number` | 
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

#### Abbreviations
Command | Description
--------- | -------------
`:abb _ys *Youngstart*:` | 
This is a test 
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

##### Direct modifications on files
Command | Description
--------- | -------------
`vim hello.txt +8` |  open hello.txt and go to line 8
`vim hello.txt +Kramm` | open hello.txt and go to first Kramm
`vim +1,2d +wq conway.txt`|remove first two lines from conway.txt
`vim +4d +wq file.txt`| remove line 4 from file.xt

### Buildon diff mode on vim
Command | Description
--------- | -------------
`vim +d file1.txt file2.txt` | 
`do`| diff obtain
`dp`| diff put
`:diffsplit` | 
`:vert diffsplit` | 
`:set dip+=vertical `| diffopt=filler, vertical

##.vimrc
Command | Description
--------- | -------------
`set diffopt+=vertical` |show diff side by side

### Settings
Command | Description
--------- | -------------
`:help option-summary` |
`:close` |
`:set` |
`:set ic`| ignore case when searching
`:set hls`| highligh the matches
`:noh `|no highlight
`:incsearch `| search as typing
`:set clipboard=unnamedplus `|use same clipboard as the system
`:syntax on` |
`:colorscheme morning` |

### Zip files
Command | Description
--------- | -------------
`vim weather.zip` | 
select and enter
edit as usual

###Opening files referenced in text 
Command | Description
--------- | -------------
`gf `|go to file or url
`g shift f`| open on linee
`gx `| open URL under cursor

### Using OS Commands
Command | Description
--------- | -------------
`:!date` | 
`:e file.txt` | 
`:r !ls` | 

`:e file.json` | 
`:%! jq . `| run current file (%) over jq,  formatting jsons
`vimtutor` | 
#######################################################################

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
 `filetype plugin on` | 
 `set grepprg=grep\ -nH\ $*` | 
 `filetype indent on` | 
 `let g:tex_flavor='latex'` | 

http://vim-latex.sourceforge.net/documentation/latex-suite/greek-letter-mappings.html

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
## With default leader settings
Command | Description
--------- | -------------
`\ll `| Compile
`\lv `| Visualise compiled file
## After mapping leader key to space:
Command | Description
--------- | -------------
`<space>ll `| Compile
`<space>lv `| Visualise compiled file
`za`| fold and unfold
`set nofoldenable` | 
`\rf `| fold up the entire file

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

## No Plugin
https://www.youtube.com/watch?v=XA2WjJbmmoM&t=1029s
https://github.com/changemewtf/no_plugins/blob/master/no_plugins.vim


## Mastering the Vim Language
Source: https://www.youtube.com/watch?v=wlR5gYd6um0&t=1507s

Command | Description
--------- | -------------
`iw `| inner word 
`it `| inner tag
`i" `| inner quotes
`ip `| inner paragraph
`:set relativenumber` | 
`:set notrelativenumber` | 
## Surround
"sorrounding"


### Marked
`:MarkedOpen[!]  `|        Open the current Markdown buffer in Marked. Call with
                        a bang to prevent Marked from stealing focus from Vim.
                        Documents opened in Marked are tracked and closed
                        automatically when you quit Vim.

`:MarkedQuit     `|        Close the current Markdown buffer in Marked. Quits
                        Marked if there are no other documents open.

`:MarkedToggle[!] `|       If the current Markdown buffer is already open in
                        Marked, calls :MarkedQuit. If not, calls
                        :MarkedOpen[!].

## Using Plug-Vim
