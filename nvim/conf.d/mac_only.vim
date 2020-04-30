if has('mac')
    let g:imeoff = 'osascript -e "tell application \"System Events\" to key code 102"'
    inoremap <silent> <ESC> <ESC>:call system(g:imeoff)<CR>
endif

