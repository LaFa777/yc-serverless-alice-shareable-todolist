#!/bin/bash

# Yandex Cloud cli
curl -sSL https://storage.yandexcloud.net/yandexcloud-yc/install.sh | bash
echo 'source /root/yandex-cloud/completion.zsh.inc' >>  ~/.zshrc
echo 'source $(npm root -g)/@hyperupcall/autoenv/activate.sh' >>  ~/.zshrc

# go-swagger
apt update
apt install -y apt-transport-https gnupg curl debian-keyring debian-archive-keyring

curl -1sLf 'https://dl.cloudsmith.io/public/go-swagger/go-swagger/gpg.2F8CB673971B5C9E.key' | gpg --dearmor -o /usr/share/keyrings/go-swagger-go-swagger-archive-keyring.gpg
curl -1sLf 'https://dl.cloudsmith.io/public/go-swagger/go-swagger/config.deb.txt?distro=debian&codename=any-version' | tee /etc/apt/sources.list.d/go-swagger-go-swagger.list

apt update 
apt install swagger

# api-spec-converter
npm install -g api-spec-converter

# jq
apt install jq -y

echo "Дев среда успешно настроена!"
