" a quick search function. Request pattern and open quickfix.
function! MyVWS()
    call inputsave()
    let pattern = input('pattern: ')
    call inputrestore()
    exe 'VimwikiSearch' pattern 
    exe 'lopen'
endfunction
"find something on vimwiki
nmap <LocalLeader>f :call MyVWS()<CR> 
nmap <LocalLeader>rt :silent 3r ~/.vim/vimwiki_custom/daily_tasks.txt <CR>
" make a task our of an list item
nmap <localleader>t<space> <Plug>VimwikiToggleListItem 
nmap <localleader>u :TaskWikiBufferLoad <CR>
