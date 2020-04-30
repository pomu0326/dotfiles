"" Install vim-plug
if has('vim_starting')
    call system('curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
endif

call plug#begin('~/.local/share/nvim/plugged')

Plug 'simeji/winresizer'
let g:winresizer_horiz_resize = 2
let g:winresizer_vert_resize = 5

Plug 'AlessandroYorba/Alduin'

Plug 'previm/previm'
let g:previm_open_cmd = 'open -a Safari'

Plug 'mattn/emmet-vim'
let g:user_emmet_install_global = 0
autocmd FileType html,css,php EmmetInstall

call plug#end()
