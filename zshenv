# osx-specific variables
if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
  export JAVA_HOME="$(/usr/libexec/java_home)"
fi

# editor
export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

# lang
export LANGUAGE='en_US.UTF-8'
export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

# list of directories that cd searches.
cdpath=(
   $HOME/Projects
   $cdpath
)

# Set the list of directories that Zsh searches for programs.
path=(
  /usr/local/{bin,sbin}
  $path
)


# misc variables
export MAVEN_OPTS='-Xmx1024m -XX:MaxPermSize=128m'
