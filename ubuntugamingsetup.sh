#!/bin/sh

# Enables 32 bit architecture.
sudo dpkg --add-architecture i386

# Adds the wine repo key
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key

# Comment out for each ubuntu version 23.10, 23.04, 22.04, and 20.04
#sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/mantic/winehq-mantic.sources
#sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/lunar/winehq-lunar.sources
#sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources
#sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/focal/winehq-focal.sources

# Upgrades the system
sudo apt-get update && sudo apt-get upgrade

# Installs wine 
sudo apt install --install-recommends winehq-staging

# Installs the NVIDIA Drivers (COMMENT THEM IF AMD/INTEL)
sudo add-apt-repository ppa:graphics-drivers/ppa && sudo dpkg --add-architecture i386 && sudo apt update && sudo apt install -y nvidia-driver-535 libvulkan1 libvulkan1:i386

# Refreshes Packages and Upgrades them
sudo apt update && sudo apt upgrade

# Installs the AMD AND INTEL Drivers (Comment them if NVIDIA)
sudo add-apt-repository ppa:kisak/kisak-mesa && sudo dpkg --add-architecture i386 && sudo apt update && sudo apt upgrade && sudo apt install libgl1-mesa-dri:i386 mesa-vulkan-drivers mesa-vulkan-drivers:i386

# Refreshes Packages and Upgrades Them
sudo apt update && sudo apt upgrade

# Reboots the machine to apply all changes
sudo reboot now
