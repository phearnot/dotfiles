#!/bin/env bash

if [[ $SHELL =~ .+zsh$ ]] ; then
    ZSH_PATH=`which zsh`
    if [[ -z $ZSH_PATH ]] ; then
        sudo apt update && sudo apt -y install zsh
        ZSH_PATH=`which zsh`
    fi
    chsh -s $ZSH_PATH
fi

ln -s $PWD/prezto $HOME/.zprezto

for F in zlogin zshenv ; do
    ln -s $PWD/prezto/runcoms/$F $HOME/.$F
done

for F in zpreztorc zprofile zshrc ; do
    ln -s $PWD/$F $HOME/.$F
done
