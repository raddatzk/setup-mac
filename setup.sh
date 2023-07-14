#!/bin/bash

function enroll_device() {
    echo "Enrolling device..."
    echo "Install intune based on documentation"
    read -p "Press enter to continue" ignored
    echo "Done enrolling device!"
    echo ""
    echo ""
}

enroll_device

function install_git() {
    echo "Installing git..."
    xcode-select --install
    read -p "Press enter to continue" ignored
    echo "Done installing git!"
    echo ""
    echo ""
}

install_git

function install_oh_my_zsh() {
    echo "Installing oh-my-zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    echo "Done installing oh-my-zsh!"
    echo ""
    echo ""
}

install_oh_my_zsh

function setup_vpn() {
    echo "Setup VPN..."
    echo "Setup VPN based on documentation"
    read -p "Press enter to continue" ignored
    echo "Done setup VPN!"
    echo ""
    echo ""
}

function install_homebrew() {
    echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    PATH=/opt/homebrew/bin:$PATH
    echo "Done installing homebrew!"
    echo ""
    echo ""
}

install_homebrew

function install_wget() {
    echo "Installing wget..."
    brew install wget
    echo "Done installing wget!"
    echo ""
    echo ""
}

install_wget

function install_jq() {
    echo "Installing jq..."
    brew install jq
    echo "Done installing jq!"
    echo ""
    echo ""
}

install_jq

function install_1password() {
    echo "Installing 1Password..."
    brew install --cask 1password
    echo "Done installing 1Password!"
    echo ""
    echo ""
}

install_1password

function setup_1password() {
    echo "Setup 1Password..."
    read -p "Press enter to continue" ignored
    echo "Done setup 1Password!"
    echo ""
    echo ""
}

setup_1password

function setup_ssh_keys() {
    echo "Setup ssh-keys..."
    echo "Copy the ssh-keys from 1Password"
    read -p "Press enter to continue" ignored
    echo "Done ssh-keys!"
    echo ""
    echo ""
}

setup_ssh_keys

function install_jetbrains_toolbox() {
    echo "Installing Jetbrains Toolbox..."
    downloadLink=$(curl https://data.services.jetbrains.com/products/releases\?code\=TBA\&latest\=true\&type\=release\&build\=\&_\=1684937695502 | jq -r ".TBA[0].downloads.macM1.link")
    wget -O ~/Downloads/JetBrainsToolbox.dmg $downloadLink
    hdiutil mount ~/Downloads/JetBrainsToolbox.dmg
    sudo cp -R /Volumes/JetBrains\ Toolbox /Applications
    hdiutil unmount /Volumes/JetBrains\ Toolbox
    rm -f ~/Downloads/JetBrainsToolbox.dmg
    echo "Done installing Jetbrains Toolbox!"
    echo ""
    echo ""
}

install_jetbrains_toolbox

function install_docker() {
    echo "Installing Docker..."
    wget -O ~/Downloads/Docker.dmg https://desktop.docker.com/mac/main/arm64/Docker.dmg
    hdiutil mount ~/Downloads/Docker.dmg
    sudo cp -R /Volumes/Docker/Docker.app /Applications
    hdiutil unmount /Volumes/Docker
    rm -f ~/Downloads/Docker.dmg
    echo "Done installing Docker!"
    echo ""
    echo ""
}

install_docker

function install_signal() {
    echo "Installing Signal..."
    signalVersion=$(curl -L \
        -H "Accept: application/vnd.github+json" \
        -H "X-GitHub-Api-Version: 2022-11-28" \
        https://api.github.com/repos/signalapp/Signal-Desktop/releases/latest | jq -r .tag_name | cut -d "v" -f2)
    wget -O ~/Downloads/Signal.dmg https://updates.signal.org/desktop/signal-desktop-mac-universal-$signalVersion.dmg
    hdiutil mount ~/Downloads/Signal.dmg
    sudo cp -R /Volumes/Signal\ $signalVersion-universal/Signal.app /Applications
    hdiutil unmount /Volumes/Signal\ $signalVersion-universal
    rm -f ~/Downloads/Signal.dmg
    echo "Done installing Signal!"
    echo ""
    echo ""
}

install_signal

function install_whatsapp() {
    echo "Installing WhatsApp..."
    wget -O ~/Downloads/WhatsApp.dmg https://web.whatsapp.com/desktop/mac/files/WhatsApp.dmg
    hdiutil mount ~/Downloads/WhatsApp.dmg
    sudo cp -R /Volumes/WhatsApp\ Installer/WhatsApp.app /Applications
    hdiutil unmount /Volumes/WhatsApp\ Installer
    rm -f ~/Downloads/WhatsApp.dmg
    echo "Done installing WhatsApp!"
    echo ""
    echo ""
}

install_whatsapp

function install_postman() {
    echo "Installing Postman..."
    wget -O ~/Downloads/Postman.app https://dl.pstmn.io/download/latest/osx_arm64
    sudo cp -R ~/Downloads/Postman.app /Applications
    rm -f ~/Downloads/Postman.app
    echo "Done installing Postman!"
    echo ""
    echo ""
}

install_postman