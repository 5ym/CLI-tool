#!/bin/sh

# firstly install font
# https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#manual-font-installation

# setup zsh
sudo apt install -y zsh curl git
chsh -s $(which zsh)

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i 's/^ZSH_THEME=.*$/ZSH_THEME=\"powerlevel10k\/powerlevel10k\"/' ~/.zshrc

# autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# setting
sed -i 's/^plugins=.*$/plugins=\(git docker zsh-autosuggestions zsh-syntax-highlighting\)/' ~/.zshrc

source ~/.zshrc
