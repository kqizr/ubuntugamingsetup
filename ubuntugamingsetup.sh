#!/bin/sh

# Enables 32 bit architecture.
sudo dpkg --add-architecture i386

# Adds the wine repo key
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key

# Comment out for each ubuntu version 21.04, 20.10, 20.04, 19.10, 19.04, 18.10, and 18.04 only
# sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ hirsute main'
# sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ groovy main'
# sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main'
# sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ eoan main'
# sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ disco main'
# sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ cosmic main'
# sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ cosmic main'

# COMMENT OUT IF RUNNING UBUNTU 18.04, enables faudio package.
# sudo add-apt-repository ppa:cybermax-dexter/sdl2-backport

# Upgrades the system
sudo apt-get update && sudo apt-get upgrade

# Installs wine 
sudo dpkg --add-architecture i386 && sudo apt update && sudo apt install -y wine64 wine32 libasound2-plugins:i386 libsdl2-2.0-0:i386 libdbus-1-3:i386 libsqlite3-0:i386

# Installs the NVIDIA Drivers (COMMENT THEM IF AMD/INTEL VULKAN CAPABLE GPU REQUIRED)
sudo add-apt-repository ppa:graphics-drivers/ppa && sudo dpkg --add-architecture i386 && sudo apt update && sudo apt install -y nvidia-driver-510 libvulkan1 libvulkan1:i386

# Refreshes Packages and Upgrades them
sudo apt update && sudo apt upgrade

# Installs the AMD AND INTEL Drivers (Comment them if NVIDIA)
sudo add-apt-repository ppa:kisak/kisak-mesa && sudo dpkg --add-architecture i386 && sudo apt update && sudo apt upgrade && sudo apt install libgl1-mesa-dri:i386 mesa-vulkan-drivers mesa-vulkan-drivers:i386

# Refreshes Packages and Upgrades Them
sudo apt update && sudo apt upgrade

# Reboots the machine to apply all changes
sudo reboot now
