if executable("scssfmt")
    autocmd BufWritePost *.css execute "!scssfmt %" | e %
endif
