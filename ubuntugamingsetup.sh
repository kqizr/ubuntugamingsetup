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
sudo apt-get install --install-recommends winehq-staging wine-staging wine-staging-i386 wine-staging-amd64

# Install these for better compatibility
sudo apt-get install libgnutls30:i386 libldap-2.4-2:i386 libgpg-error0:i386 libxml2:i386 libasound2-plugins:i386 \
libsdl2-2.0-0:i386 libfreetype6:i386 libdbus-1-3:i386 libsqlite3-0:i386

# Installs the NVIDIA Drivers (COMMENT THEM IF AMD/INTEL)
sudo add-apt-repository ppa:graphics-drivers/ppa

# Refreshes Packages and Upgrades them
sudo apt update && sudo apt upgrade

# installs the 465 driver
sudo apt install nvidia-driver-465

# Installs vulkan support. (YOU MUST NEED A VULKAN GPU)
sudo apt install libvulkan1:i386

# Installs the AMD AND INTEL Drivers (Comment them if NVIDIA)
sudo add-apt-repository ppa:kisak/kiska-mesa

# Refreshes Packages and Upgrades Them
sudo apt update && sudo apt upgrade

# Installs support for 32-bit games
sudo apt install libgl1-mesa-dri:i386

# Installs support for vulkan
sudo apt install mesa-vulkan-drivers mesa-vulkan-drivers:i386

# Reboots the machine to apply all changes
sudo reboot now
