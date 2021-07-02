# Ubuntu-Gaming-Setup
This shell script is to setup Gaming on any Ubuntu-Based distro (Based on the Lutris dependencies and drivers page)

# Install Git
sudo apt-get install git

# Install the Shell Script.
git clone https://github.com/snechovsky/Ubuntu-Gaming-Setup.git && cd Ubuntu-Gaming-Setup

# DO NOT RUN THE SHELL SCRIPT WITHOUT MODIFIYING THE SCRIPT.
if you run the shell script without modifiying the script, it can cause some issues, so please edit it

# Editing the Shell Script (Wine Version).
Use any text editor of your choice (Examples: Nano, Vim, Neovim, Emacs, etc.)
Where it says "comment out for each ubuntu version" comment out the wine package that matches your ubuntu version. and your ubuntu 18.04, comment out the one that installs the faudio package.

# Editing the Shell Script (Graphics Vendor Driver Version).
If you have an NVIDIA card, comment the ones that matches with amd/intel
And the Reverse if you use an AMD/INTEL.
