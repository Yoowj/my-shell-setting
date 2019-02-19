#!/bin/bash

# 패키지 설치
apt-get -y update
apt install -y sudo
apt install -y vim
apt install -y net-tools
apt install -y git
apt install -y curl
apt install -y apt-utils
apt install -y zsh
apt install -y tmux
apt install -y python
apt install -y python3

# Vim 설정
echo "set encoding=utf-8" >> /etc/vim/vimrc && \
echo "set fileencodings=utf-8,cp949" >> /etc/vim/vimrc



# locale 설정
apt-get install locales

export LANGUAGE=ko_KR.UTF-8
export LANG=ko_KR.UTF-8
locale-gen ko_KR ko_KR.UTF-8
update-locale LANG=ko_KR.UTF-8
dpkg-reconfigure locales

# zsh 설정
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# zsh-syntax-highlighting 설치
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc




# oh-my-tmux 설정 
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

echo "set-option -g mouse on" >> ~/.tmux.conf
echo "set-option -g history-limit 10000" >> ~/.tmux.conf
# zsh-my-tmux 설정




