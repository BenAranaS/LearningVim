function PdfAnnots() abort
  try
    let infile = vimtex#context#get().handler.get_actions().entry.file
    let infile_key = vimtex#context#get().handler.selected
    echo infile_key
  catch /E121/
    echo "No file found"
    return
  endtry

  let cwd = getcwd()
  try
    call chdir(b:vimtex.root)

    if !isdirectory('Annotations')
      call mkdir('Annotations')
    endif

    let outfile = "Annotations/" . fnamemodify(infile_key, ':t:r') . '.md'
    call system(printf('pdfannots -o "%s" "%s"', outfile, infile))

    execute 'split' fnameescape(outfile)
  finally
    call chdir(cwd)
  endtry
endfunction
