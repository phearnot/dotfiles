# osx-specific variables
if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
  export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
fi

# editor
export EDITOR='vim'
export VISUAL='vim'
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
  /usr/local/{bin,sbin}
  $path
)

# misc variables
export MAVEN_OPTS="-Xmx1024m"
export SBT_OPTS="-XX:+CMSClassUnloadingEnabled -Dsbt.boot.credentials=$HOME/.credentials"
export SBT_CREDENTIALS="$HOME/.credentials"
export PLAY_OPTS="-Dsbt.ivy.home=$HOME/.ivy2"

export GREP_COLORS='32;1'

alias hl='highlight -O xterm256'
