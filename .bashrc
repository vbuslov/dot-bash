# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000
HISTFILESIZE=-1

export CLICOLOR=1
export PS1="\[\033[38;5;4m\]\W\[$(tput sgr0)\]\[\033[38;5;15m\]\\$\[$(tput sgr0)\] "
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR='emacs -nw'
export TZ='/usr/share/zoneinfo/Europe/Kiev'
export GTAGSLIBPATH=$HOME/.gtags/
export TERM="screen-256color"
export HISTCONTROL=ignoreboth:erasedups

alias grep='grep --color=auto'
alias mft_install='./.autodirect/mswg/release/mft/latest/install.sh'
alias emacs-tc='TERM=xterm-24bits emacs -nw'

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

shopt -s histappend
shopt -s cdspell

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
