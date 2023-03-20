" a quick search function. Request pattern and open quickfix.
function! MyVWS()
    call inputsave()
    let pattern = input('pattern: ')
    call inputrestore()
    exe 'VimwikiSearch' pattern 
    exe 'lopen'
endfunction
map <LocalLeader>f :call MyVWS()<CR>
