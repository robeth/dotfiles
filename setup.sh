#!/bin/bash
# Setup tmux symbolic links

# Get script directory: http://stackoverflow.com/a/246128
DOTFILES_DIR="$( cd "$(dirname "${BASH_SOURCE[0]}")" && pwd )"

TMUX_CONF_FILE="$HOME/.tmux.conf"
TMUX_DIR="$HOME/.tmux"
VIM_CONF_FILE="$HOME/.vimrc"
VIM_DIR="$HOME/.vim"
ATOM_KEYMAP_FILE="$HOME/.atom/keymap.cson"

function backup {
  if [ -e $1 ]
  then
    mv -T $1 "$1.backup"
  fi
}

backup $TMUX_CONF_FILE
backup $TMUX_DIR

ln -s "$DOTFILES_DIR/tmux/tmux.conf" $TMUX_CONF_FILE
ln -s "$DOTFILES_DIR/tmux/tmux" $TMUX_DIR

# Setup Vim symbolic links
backup $VIM_CONF_FILE
backup $VIM_DIR

ln -s "$DOTFILES_DIR/vim/vimrc" $VIM_CONF_FILE
ln -s "$DOTFILES_DIR/vim/vim" $VIM_DIR

# Setup atom symbolic links
backup $ATOM_KEYMAP_FILE
ln -s "$DOTFILES_DIR/atom/keymap.cson" $ATOM_KEYMAP_FILE
