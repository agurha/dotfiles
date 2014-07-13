" Automatically reload vimrc when it's saved
autocmd! BufWritePost vimrc.symlink so ~/.vimrc

" Strip whitespace on save
"autocmd BufWritePre * :%s/\s\+$//e


" Resize splits on window resize
au VimResized * exe "normal! \<c-w>="

" Markdown
augroup markdown
    au!
    autocmd Syntax markdown setlocal textwidth=79
    if exists("&colorcolumn")
        autocmd Syntax markdown setlocal colorcolumn=80
    endif
augroup END

