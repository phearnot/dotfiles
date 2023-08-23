# osx-specific variables
if [[ "$OSTYPE" == darwin* ]]; then
  export GPG_TTY=$(tty)
  export BROWSER='open'
  export YK_FLAGS="-agentpath:$(find /Applications -maxdepth 1 -type d -name 'YourKit*')/Contents/Resources/bin/mac/libyjpagent.dylib=onexit=snapshot,async_sampling_cpu"
fi

# editor
export EDITOR='vim'
export VISUAL='subl -w'
export PAGER='less'

# lang
export LANGUAGE='en_US.UTF-8'
export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

# path
typeset -gU cdpath fpath path

# less
export LESS='-XFgiMRwz-4'

# Set the Less input preprocessor.
if (( $+commands[lesspipe.sh] )); then
  export LESSOPEN='| /usr/bin/env lesspipe.sh %s 2>&-'
fi

# list of directories that cd searches
cdpath=(
  $HOME/Projects
  $cdpath
)

path=(
  $HOME/.dotfiles/bin
  $HOME/bin
  /usr/local/{bin,sbin}
  $path
)

export GREP_COLORS='32;1'

alias hl='highlight -O xterm256'
alias ops='eval $(op signin --account my.1password.com)'

[ -f $HOME/.zprofile.local ] && . $HOME/.zprofile.local
