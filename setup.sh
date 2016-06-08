#!/bin/bash
# Setup tmux symbolic links

DOTFILES_DIR="$( cd "$(dirname "${BASH_SOURCE[0]}")" && pwd )"

TMUX_CONF_FILE="$HOME/.tmux.conf"
TMUX_DIR="$HOME/.tmux"
VIM_CONF_FILE="$HOME/.vimrc"
VIM_DIR="$HOME/.vim"

if [ -e $TMUX_CONF_FILE ]
then
  rm $TMUX_CONF_FILE
fi
if [ -d $TMUX_DIR ]
then
  rm -rf $TMUX_DIR
fi
ln -s "$DOTFILES_DIR/tmux/tmux.conf" $TMUX_CONF_FILE
ln -s "$DOTFILES_DIR/tmux/tmux" $TMUX_DIR

# Setup Vim symbolic links
if [ -e $VIM_CONF_FILE ]
then
  rm $VIM_CONF_FILE
fi
if [ -d $VIM_DIR ]
then
  rm -rf $VIM_DIR
fi
ln -s "$DOTFILES_DIR/vim/vimrc" $VIM_CONF_FILE
ln -s "$DOTFILES_DIR/vim/vim" $VIM_DIR

