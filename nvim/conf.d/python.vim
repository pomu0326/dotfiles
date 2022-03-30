if executable("autopep8")
    autocmd BufWritePost *.py execute "!autopep8 --in-place %" | e %
endif
