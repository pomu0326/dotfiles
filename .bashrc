eval "$(pyenv init -)"

case "${OSTYPE}" in
    darwin*)
        alias ls='ls -G'
        ;;
    linux*)
	alias ls='ls --color=auto'
	;;
esac
alias ll='ls -al'
