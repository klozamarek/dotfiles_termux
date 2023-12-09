#!/usr/bin/bash

############
# includes #
# ##########

source ./colors.sh
source ./install_functions.sh
source ./zsh/.zshenv

################
# presentation #
################

echo -e "
${yellow}
          _ ._  _ , _ ._
        (_ ' ( \`  )_  .__)
      ( (  (    )   \`)  ) _)
     (__ (_   (_ . _) _) ,__)
           ~~\ ' . /~~
         ,::: ;   ; :::,
        ':::::::::::::::'
 ____________/_ __ \___________________
|                                      |
| Welcome to ssserpent dotfiles_termux |
|______________________________________|
"

echo -e "${yellow}!!! ${red}WARNING${yellow} !!!"
echo -e "${light_red}This script will delete all your configuration files!"
echo -e "${light_red}Use it at your own risks."

if [ $# -ne 1 ] || [ "$1" != "-y" ];
    then
        echo -e "${yellow}Press a key to continue...\n"
        read key;
fi

###########
# INSTALL #
###########

# install
. "$DOTFILES/install/install_nvim.sh"
echo "nvim is installed"
. "$DOTFILES/install/install_atuin.sh"
echo "atuin is installed"
. "$DOTFILES/install/install_bat.sh"
echo "bat is installed"
. "$DOTFILES/install/install_calcurse.sh"
echo "calcurse is installed"
. "$DOTFILES/install/install_git.sh"
echo ".gitconfig is installed"
. "$DOTFILES/install/install_newsboat.sh"
echo "newsboat is installed"
. "$DOTFILES/install/install_nnn.sh"
echo "nnn is installed"
. "$DOTFILES/install/install_ranger.sh"
echo "ranger is installed"
. "$DOTFILES/install/install_starship.sh"
echo "starship is installed"
. "$DOTFILES/install/install_zsh.sh"
echo "zsh is installed"
