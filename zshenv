# osx-specific variables
if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
  export JAVA_HOME="$(/usr/libexec/java_home -v 1.6)"
fi

# editor
export EDITOR='vim'
export VISUAL='subl'
export PAGER='less'

# lang
export LANGUAGE='en_US.UTF-8'
export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

# path
typeset -gU cdpath fpath path

# less
export LESS='-X -F -g -i -M -R -S -w -z-4'

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
  $HOME/bin
  /usr/local/{bin,sbin}
  $path
)

fpath=(
  ${DOTDIR:-$HOME}/.dotfiles/functions
  $fpath
)

# misc variables
export MAVEN_OPTS='-Xmx1024m -XX:MaxPermSize=128m'
export SBT_OPTS='-XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=512M -Dsbt.boot.credentials=/Users/phearnot/.credentials'
export SBT_CREDENTIALS='/Users/phearnot/.credentials'
