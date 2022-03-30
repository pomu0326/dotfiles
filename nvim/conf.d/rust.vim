if executable("rustfmt")
    autocmd BufWritePost *.rs execute "!rustfmt %"
endif
