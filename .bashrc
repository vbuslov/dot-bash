# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000
HISTFILESIZE=200000

export CLICOLOR=1
export PS1="\[\033[38;5;4m\]\W\[$(tput sgr0)\]\[\033[38;5;15m\]\\$\[$(tput sgr0)\] "
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR='emacsclient -nw'
export ALTERNATE_EDITOR='emacs -nw'
export TZ='/usr/share/zoneinfo/Europe/Kiev'
#export NCURSES_NO_UTF8_ACS=1
export GTAGSLIBPATH=$HOME/.gtags/
export TERM="screen-256color"

alias grep='grep --color=auto'
alias mft_install='./.autodirect/mswg/release/mft/latest/install.sh'

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

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
