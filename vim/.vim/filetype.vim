"
" Filetype detection
"
augroup filetypedetect
    " Detect .txt as 'text'
    autocmd! BufNewFile,BufRead *.txt setfiletype text
    au BufRead,BufNewFile *.launch	set filetype=xml
augroup END
