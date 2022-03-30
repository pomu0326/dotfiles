if executable("python3")
    autocmd BufWritePost *.json execute "!cat % | python3 -mjson.tool | tee %" | e %
endif
