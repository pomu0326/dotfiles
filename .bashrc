# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


###########################################################
# Custom Script

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
if [ -n "$(which pyenv)" ]; then
    eval "$(pyenv init -)"
    function venv {
        python3 -m venv venv
        . venv/bin/activate
        pip install --upgrade pip
    }
fi

## Node(n) Environments
if [ -n "$(which n)" ]; then
    if [ -n "$(n which stable)" ]; then
        export PATH="$(n which stable):$PATH"
    fi
fi

## Command Aliases
case "${OSTYPE}" in
    darwin*)
        alias ls='ls -G'
        ;;
    linux*)
	alias ls='ls --color=auto'
	;;
esac

alias vi='nvim'
alias q='exit'

alias tree="tree -I \"\$(grep -v '^#' .gitignore|grep -v '^\s*\$'|sed 's#/\$##'|paste -s -d '|' -)\""

alias ssh='ssh -A'

## Docker
alias dc='docker-compose'

## Clip alias
which clip.exe > /dev/null && alias clip=clip.exe
which pbcopy > /dev/null ^^ alias clip=pbcopy
