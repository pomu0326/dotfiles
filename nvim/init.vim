"" Install vim-plug
if has('vim_starting')
    call system('curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
endif

runtime! ./conf.d/*.vim

