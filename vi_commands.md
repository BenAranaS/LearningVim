#### Learning VIM


#### Basics
vi -o file1.txt file2.txt
vi -u NONE  # open without settings or plugins 
## Motions
hjkl # instead of move arrows
H   # move cursor to the top of the window
M   # = to the middle of the window
L   # = to the bottom of the window
^E  # scroll the window down without moving cursor
^Y  # = up
ctrl+f  # move a screen forward
ctrl+b # move a screen backwards
a # all
i # in
t # 'til
f # find forward
F # find backward
/word  # search for word
/*ord
n, #  # move to next or previous word
? # search backwards
) # move to next sentence
( # move to previous sentence
} # move to next paragraph
{ # move to previous paragraph
gg  # move to beginning of file
G  # move to end of file
:linenumber    # go to line linenumber
$ # go to end of line
0 # go to beginning of line


### Commands
d # delete
c # change ( delete and place in insert mode)
y   # yank, copy
v # visually select

w, b, e # write(save) buffer edit
vi file.xt +8   # open file file.txt and go straight to line 8
3j6w   # move 3 lines down, 6 words right *
dw  # delete word
u  # undo
ctrl + r # redo
d)  # delete sentence
dd  # delete line
d/Genius  # delete until word Genius
yw  # copy word
ctrl + r + "   # paste yanked test into vim command line
p   # paste on place
P  # paste beforer cursor
yy # copy line
x  # delete word
xp # exchange letters
c  # change
cw # change word
c/word # change until word

#### visual mode
V # select current line
ctrl + v  # visual block
ctrl+v l4j  # select one column and 4 rows
ctrl+v l4j c - esc  # and chance space by - 
7G  # go to line 7
O  # add a line above and go to insert mode
o  # add a line below and insert there
A  # start writing at the end of line
a  # insert after the current location of cursor
i  # insert where cursor is
I  # Insert in the beginning of line

###### yank
"Ayy  # yank into register A
"Ap   # paste from register A
"AgP  # paste from register A before cursor and put cursor at the end of paste text
 ##### Substitute 
:s/word/newword/g
:s/word/newword/gc  # ask for confirmation

##### MARKS
ma  # create mark a
mA # create mark A 
'a # go to mark a
ctrl+o  # go to move backward 
ctrl+i  # move backwards
:jumps
:clearjumps
'. # move to last edited line

##### TAGS

##### Multiple files
## buffer window
:split
ctrl+w
ctrl+ww
ctrl+wc  # close window
:new file.txt
:e file.txt
:bd  # buffer delete
:e tab
:e d tab
:e .
:e!
:checktime # manually refresh file
:ls # buffers open
:bn # buffer next buffer
:bp # move to previous buffer
:b file.txt # select buffer
:b 2  # go to buffer 2
ctrl+g # show file details line
:b file.tx
:b tab
:b prefix tab
ctrl+w +  # Increase horizontal window size
ctrl+>  # increase vertical window size
ctrl*<
:30vs   # vertical split from column 30
:vs 	# vertical split

## The read Command
:r
:-1r file.txt  # adds content of file.txt at the beginning of file

#### Configuration files
~/.vimrc
set number
set ruler
set nocompatible
syntax on
filetype plugin on
set autoread  # automatically refresh

noremap <TAB> ) " use tab to move to next sentence
noremap <S-TAB> ( " use shift tab to move to the previous sentence
set tabstop=2 shiftwidth=2 expandtab
:retab
noremap <SPACE> <C-F> " use space to scroll down
#### Abbreviations
:abb _ys *Youngstart*:
This is a test 
ctrl + v # to avoid expansion of abb
:source ~/.vimrc
:set paste  # to avoid wrong formatting when pasting
:set nopaste

## Running commands
:! ls
:com! Py ! python % # % is expanded to the name eof the file
:Py # run the command
:comm! Wc !wc % # run wc on the current file

### Settings
:help option-summary
:close
:set
:set ic # ignore case when searching
:set hls # highligh the matches
:noh  #no highlight
:incsearch  # search as typing
:set clipboard=unnamedplus  #use same clipboard as the system
:syntax on
:colorscheme morning

##### Direct modifications on files
vim hello.txt +8
vim hello.txt +Kramm
vim +1,2d +wq conway.txt #remove first two lines from conway.txt
vim +4d +wd file.txt # remove line 4 from file.xt

### Buildon diff mode on vim
vim +d file1.txt file2.txt
do # diff obtain
dp # diff put
:diffsplit
:vert diffsplit
:set dip+=vertical  # diffopt=filler, vertical

##.vimrc
set diffopt+=vertical "show diff side by side

### Zip files
vim weather.zip
select and enter
edit as usual

###Opening files referenced in text 
gf  #go to file or url
g shift f # open on linee
gx open URL under cursor

### 
:!date
:e file.txt
:r !ls

:e file.json
:%! jq .  # run current file (%) over jq,  formatting jsons
vimtutor
#######################################################################

##### Spelling
:set spell spelllang=en_us
:setlocal spell spelllang=en_us,en_gb,es_mx

zG store new words in internal wordlist
zg add word under curosr to dictionary
zw remove the word from dictionary
zW stores the words in internal wordlist which is lgobal
z= load spell suggestions
Ctrl + x + s  # in insert mode to load spell suggestions.
:spellrepall   # command to apply the same change to all words that match. 
]s   # find the misspelled word after the cursor
[s  # find the misspelled word before the cursor
]S   # same as ]s but only stop at bad words.
[S   # same 
:set nospell  # stop checking spell


##### Latex Suite
vi /usr/share/doc/vim-latexsuite/README.Debian
 filetype plugin on
 set grepprg=grep\ -nH\ $*
 filetype indent on
 let g:tex_flavor='latex'

http://vim-latex.sourceforge.net/documentation/latex-suite/greek-letter-mappings.html
^^ gets changed by ^{}
F5  # insert environment
`p `8 `/ # abbreviation for pi, inf, fracc
F9   # insert references \label \cite

:TTemplate # Select from a list of latex templates
FEM # emph
FTS # bold
`sf # emph selected text
`st # bold selected text
SSE section
SSS subsection
SS2 subsubsection
`D =  \Delta

## With default leader settings
\ll  # Compile
\lv  # Visualise compiled file
## After mapping leader key to space:
<space>ll  # Compile
<space>lv  # Visualise compiled file


####### No Plugin
https://www.youtube.com/watch?v=XA2WjJbmmoM&t=1029s
https://github.com/changemewtf/no_plugins/blob/master/no_plugins.vim


####### Mastering the Vim Language
https://www.youtube.com/watch?v=wlR5gYd6um0&t=1507s
iw => inner word 
it  # inner tag
i"  # inner quotes
ip  # inner paragraph
:set relativenumber
:set notrelativenumber
## Surround
"sorrounding"



