#!/usr/bin/env bash
# Original script at https://github.com/woefe/dotfiles/ for this script.
#
# MIT License
#
# Copyright (c) 2023 Wolfgang Popp
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

#################### Boilerplate and Perparation ###################
function check_prog() {
  if ! hash "$1" >/dev/null 2>&1; then
    echo "Command not found: $1. Aborting..."
    exit 1
  fi
}

check_prog stow
check_prog curl

mkdir -p "$HOME/.config"
####################################################################

####################### How to use it ##############################
#                                                                  #
# Uncomment the lines below that you want to install.              #
# Then run this script from inside the .dotfiles-stow directory.   #
#                                                                  #
# To uninstall the config later, run stow -D in the dotfiles-stow  #
# directory.                                                       #
#                                                                  #
# For example:                                                     #
# `cd dotfiles-stow; stow -D gh`                                   #
#                                                                  #
####################################################################

# stow --target "$HOME" bash
# stow --target "$HOME" gh
# stow --target "$HOME" hypr
# stow --target "$HOME" kitty
# stow --target "$HOME" nvim
# stow --target "$HOME" oh-my-posh
# stow --target "$HOME" swaync
# stow --target "$HOME" topgrade
# stow --target "$HOME" waybar
# stow --target "$HOME" zsh
