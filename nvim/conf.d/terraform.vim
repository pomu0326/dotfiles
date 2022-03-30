if executable("terraform")
    autocmd BufWritePost *.terraform,*.tf execute "!terraform fmt %" | e %
endif
