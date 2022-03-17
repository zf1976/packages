#!/bin/sh
# oh-my-zsh
wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh && sh install.sh && rm install.sh
sed -i '73d' ~/.zshrc
source ~/.zshrc
# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

wget https://raw.githubusercontent.com/zf1976/openwrt-packages/main/neofetch.sh && sh neofetch.sh -i && rm neofetch.sh
wget https://raw.githubusercontent.com/zf1976/packages/main/sysinfo.sh -P /etc

echo "source ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
echo "source ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
echo "neofetch" >> ~/.zshrc
echo "bash /etc/sysinfo.sh" >> ~/.zshrc
source ~/.zshrc


