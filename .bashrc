## Check Dotfiles Changes
cd ~/dotfiles
if [ -z "$(git status | grep 'nothing to commit, working tree clean')" ]; then
    echo $'\e[33m~/dotfiles: Commitされていない変更があります\e[0m'
    echo ""
    git status
fi
cd $OLDPWD

## XDG Base Directory Environments
XDG_CONFIG_HOME=~/.config
XDG_CACHE_HOME=~/.cache
XDG_DATA_HOME=~/.local/share
mkdir -p $XDG_CONFIG_HOME
mkdir -p $XDG_CACHE_HOME
mkdir -p $XDG_DATA_HOME

## Python Environments
eval "$(pyenv init -)"
function venv {
    python3 -m venv venv
    . venv/bin/activate
    pip install --upgrade pip
}

## Command Aliases
case "${OSTYPE}" in
    darwin*)
        alias ls='ls -G'
        ;;
    linux*)
	alias ls='ls --color=auto'
	;;
esac
alias ll='ls -al'

alias vi='nvim'
alias q='exit'
