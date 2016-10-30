#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#   Sergey Nazarov <phearnot@renee.ru>
#

fpath=(
  ${DOTDIR:-$HOME}/.dotfiles/functions
  $fpath
)

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

alias grep='grep --color'
