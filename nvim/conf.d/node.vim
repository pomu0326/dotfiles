if executable("prettier")
    autocmd BufWritePost *.js,*.jsx,*.vue execute "!prettier --write %" | e %
endif
