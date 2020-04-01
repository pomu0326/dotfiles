## XDG Base Directory Environments
XDG_CONFIG_HOME=~/.config
XDG_CACHE_HOME=~/.cache
XDG_DATA_HOME=~/.local/share
mkdir -p $XDG_CONFIG_HOME
mkdir -p $XDG_CACHE_HOME
mkdir -p $XDG_DATA_HOME

## Python Environments
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

## Command Aliases
alias vi='nvim'
